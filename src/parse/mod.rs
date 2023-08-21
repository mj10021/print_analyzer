use std::collections::{LinkedList, VecDeque};
use std::f32::NEG_INFINITY;

use crate::gcursor::*;

pub mod finder;

#[derive(Clone, Debug, PartialEq)]
pub struct Word(pub char, pub f32, pub Option<String>);

pub trait Emit {
    fn emit(&self) -> String;
    fn debug_emit(&self) -> String {
        self.emit()
    }
}

#[derive(Clone, Debug, PartialEq)]
pub enum Line {
    G1(G1),
    Instruction(Instruction),
    Raw(String),
}
impl Line {
    fn build(mut line: VecDeque<Word>, g1_count: Option<i32>) -> Line {
        let Word(letter, num, _) = line[0];
        let num = num as i32;
        match (letter, num, letter.is_ascii_alphabetic()) {
            ('G', 1, _) => {
                let g1_count = g1_count.unwrap();
                Line::G1(G1::build(line, g1_count))
            }
            ('N', _, _) => {
                let _ = line.pop_front();
                let _ = line.pop_front();
                Line::build(line, None)
            }
            (_, _, true) => Line::Instruction(Instruction::build(line)),
            (_, _, false) => {
                let mut raw_line = String::new();
                for word in line {
                    let Word(letter, num, _) = word;
                    raw_line += format!("{letter}{num}").as_str();
                }
                Line::Raw(raw_line)
            }
        }
    }
}

impl Emit for Line {
    fn emit(&self) -> String {
        match self {
            Line::G1(g1) => g1.emit(),
            Line::Instruction(ins) => ins.emit(),
            Line::Raw(string) => string.clone(),
        }
    }
}

#[derive(Clone, Debug, PartialEq)]
pub struct State {
    pub x: f32,
    pub y: f32,
    pub z: f32,
    pub e: f32,
    pub f: f32,
    pub homed: bool,
    pub g1_emit: String,
}

impl State {
    pub fn new() -> State {
        State {
            x: NEG_INFINITY,
            y: NEG_INFINITY,
            z: NEG_INFINITY,
            e: NEG_INFINITY,
            f: NEG_INFINITY,
            homed: false,
            g1_emit: String::new(),
        }
    }
    pub fn update_from(&mut self, state: &State) {
        self.x = state.x;
        self.y = state.y;
        self.z = state.z;
        self.e = state.e;
        self.f = state.f;
        self.homed = state.homed;
        self.g1_emit = String::new();
    }
    pub fn origin() -> State {
        State {
            x: 0.0,
            y: 0.0,
            z: 0.0,
            e: 0.0,
            f: 0.0,
            homed: false,
            g1_emit: String::new(),
        }
    }
    pub fn home(&mut self) {
        self.x = 0.0;
        self.y = 0.0;
        self.z = 0.0;
        self.e = 0.0;
        self.f = 0.0;
        self.homed = true;
    }
    pub fn dist(&self, init: &State) -> f32 {
        let dx = self.x - init.x;
        let dy = self.y - init.y;
        let dz = self.z - init.z;
        (dx.powf(2.0) + dy.powf(2.0) + dz.powf(2.0)).sqrt()
    }
}

#[derive(Clone, Debug, PartialEq)]
pub struct Instruction {
    pub first_word: Word,
    pub params: Option<VecDeque<Word>>,
}

impl Instruction {
    fn build(mut line: VecDeque<Word>) -> Instruction {
        let first_word = line.pop_front().unwrap();
        if line.len() < 1 {
            return Instruction {
                first_word,
                params: None,
            };
        }
        Instruction {
            first_word,
            params: Some(line),
        }
    }
}

impl Emit for Instruction {
    fn emit(&self) -> String {
        let Instruction {
            first_word: Word(letter, num, string),
            params,
        } = self;
        if let Some(string) = string {
            return string.clone() + "\n";
        }
        let mut out = format!("{}{}", letter, *num as i32);
        if let Some(params) = params {
            for Word(letter, val, _) in params {
                out += &format!(" {}{}", letter, val);
            }
        }
        out + "\n"
    }
}

#[derive(Clone, Debug, PartialEq)]
pub struct G1 {
    // the g1 move id is 1-indexed
    pub move_id: i32,
    pub x: Option<f32>,
    pub y: Option<f32>,
    pub z: Option<f32>,
    pub e: Option<f32>,
    pub f: Option<f32>,
}

impl G1 {
    fn build(params: VecDeque<Word>, move_id: i32) -> G1 {
        let mut x = None;
        let mut y = None;
        let mut z = None;
        let mut e = None;
        let mut f = None;
        for param in params {
            match param.0 {
                'X' => x = Some(param.1),
                'Y' => y = Some(param.1),
                'Z' => z = Some(param.1),
                'E' => e = Some(param.1),
                'F' => f = Some(param.1),
                _ => (),
            }
        }
        G1 {
            move_id,
            x,
            y,
            z,
            e,
            f,
        }
    }
}

impl Emit for G1 {
    fn emit(&self) -> String {
        let mut out = String::from("G1");
        if let Some(x) = self.x {
            assert!(x.is_finite());
            assert!(!x.is_nan());
            out += &format!(" X{}", x);
        }
        if let Some(y) = self.y {
            assert!(y.is_finite());
            assert!(!y.is_nan());
            out += &format!(" Y{}", y);
        }
        if let Some(z) = self.z {
            assert!(z.is_finite());
            assert!(!z.is_nan());
            out += &format!(" Z{}", z);
        }
        if let Some(e) = self.e {
            assert!(e.is_finite());
            assert!(!e.is_nan());
            out += &format!(" E{}", e);
        }
        if let Some(f) = self.f {
            assert!(f.is_finite());
            assert!(!f.is_nan());
            out += &format!(" F{}", f);
        }
        out + "\n"
    }
}

#[derive(Debug, PartialEq)]
pub struct ParsedGCode {
    pub instructions: LinkedList<(Line, State)>,
    // the g1 move count is 1-indexed
    pub g1_moves: i32,
    pub features: Vec<Option<finder::Feature>>,
    pub rel_xyz: bool,
    pub rel_e: bool,
}

impl ParsedGCode {
    pub fn first_move_id(&self) -> i32 {
        let x_max = 5.0;
        let y_max = 5.0;
        let mut cur = self.instructions.cursor_front();
        let mut count = 0;
        let mut out: Vec<(f32,f32,f32,i32)> = Vec::new();
        while count < 100 {
            if let Some((Line::G1(g1), state)) = cur.current() {
                count += 1;
                out.push((state.x, state.y, state.z, g1.move_id));
            }
            cur.move_next();
        }
        for (x, y, _z, id) in out {
            if x > x_max && y > y_max {
                return id;
            }
        }
        -1
    }
    pub fn set_states(&mut self) -> Result<(), CursorError> {
        let mut cursor = self.instructions.cursor_front_mut();
        loop {
            cursor.update_state()?;
            if cursor.at_end() {
                return Ok(());
            }
            cursor.next()?;
        }
    }
    fn tot_dist(&mut self) -> f32 {
        let mut out = 0.0;
        let mut cursor = self.instructions.cursor_front_mut();
        while let Err(_) = cursor.at_g1() {
            let _ = cursor.next();
        }
        let (_, init_state) = cursor.current().unwrap();
        let mut last = init_state.clone();
        while !cursor.is_last_g1(self.g1_moves) {
            let _ = cursor.move_next_g1(self.g1_moves);
            let (_, curr) = cursor.current().unwrap();
            out += last.dist(curr);
            last = curr.clone();
        }
        out
    }
    pub fn build(path: &str) -> Result<ParsedGCode, CursorError> {
        let mut g1_moves = 0;
        let mut parsed = LinkedList::new();
        let mut rel_xyz = false;
        let mut rel_e = true;

        // tries reading the input as raw g-code if file parse error,
        // this is really just for running the tests
        let lines = match parse_file(path) {
            Ok(str) => str,
            Err(_) => parse_str(path),
        };
        assert!(lines.len() > 0);
        for line in lines {
            let line = clean_line(&line);
            if line.len() < 1 {
                continue;
            }
            let line = read_line(line);
            if line.front() == Some(&Word('G', 1.0, None)) {
                g1_moves += 1;
            }
            if line.len() < 1 {
                continue;
            }
            let Word(letter, num, _) = line[0];
            let num = num as i32;
            match (letter, num) {
                ('G', 90) => {
                    rel_xyz = false;
                }
                ('G', 91) => {
                    rel_xyz = true;
                }
                ('M', 82) => {
                    rel_e = false;
                }
                ('M', 83) => {
                    rel_e = true;
                }
                _ => {}
            }
            parsed.push_back((Line::build(line, Some(g1_moves)), State::new()));
        }
        let mut out = ParsedGCode {
            instructions: parsed,
            rel_xyz,
            features: vec![None; g1_moves as usize],
            rel_e,
            g1_moves,
        };
        out.set_states()?;
        Ok(out)
    }
    fn subdivide(&mut self, count: i32) {
        let mut cursor = self.instructions.cursor_front_mut();
        while let Err(_) = cursor.at_g1() {
            cursor.next().expect("past end of list");
        }
        // start from the second g1 move
        cursor.move_next_g1(self.g1_moves).expect("g1 move failed");
        loop {
            cursor.subdiv_seg(count, self.g1_moves).expect("failed to divide");
            if cursor.is_last_g1(self.g1_moves) {
                break;
            }
            cursor.move_next_g1(self.g1_moves).expect("g1 move failed");
        }
    }
}

impl Emit for ParsedGCode {
    fn emit(&self) -> String {
        let mut out = String::new();
        for (line, _) in &self.instructions {
            out += &line.emit();
        }
        out + "\n"
    }
    fn debug_emit(&self) -> String {
        let mut out = String::new();
        for (line, _) in &self.instructions {
            out += &line.emit();
            if let Line::G1(g1) = line {
                if self.features[g1.move_id as usize - 1].is_some() {
                    out += &format!("; {}: {:?}\n", g1.move_id, self.features[g1.move_id as usize - 1]);
                }
            }
        }
        out + "\n"
    }
}

fn parse_file(path: &str) -> Result<Vec<String>, Box<dyn std::error::Error>> {
    let out = String::from_utf8(std::fs::read(path)?)
        .unwrap()
        .split("\n")
        .map(|s| s.split(';').nth(0).unwrap()) // ignore any ';' comments
        .map(str::to_string)
        .filter(|s| s.len() > 0)
        .collect();
    Ok(out)
}

fn parse_str(str: &str) -> Vec<String> {
    String::from(str)
        .split("\n")
        .map(|s| s.split(';').nth(0).unwrap())
        .map(str::to_string)
        .collect()
}

fn clean_line(line: &str) -> VecDeque<char> {
    let mut temp_line = VecDeque::new();
    // this broken
    // if line.chars().filter(|c| !c.is_ascii()).next().is_none() {
    //     return VecDeque::from(line.chars().collect::<Vec<char>>());
    // }

    for c in line.chars() {
        // end reading line at start of comments
        if c == ';' {
            break;
        }
        // skip all whitespace
        if c == ' ' || c == '\n' || c == '\r' {
            continue;
        } else {
            temp_line.push_back(c.to_ascii_uppercase());
        }
    }
    temp_line
}

fn check_line(line: &VecDeque<char>) -> bool {
    if line.len() < 2 {
        return false;
    }
    if !line[0].is_ascii_alphabetic() || line[line.len() - 1].is_ascii_alphabetic() {
        return false;
    }
    let mut letter = false;
    let mut number = true;
    for char in line {
        if !char.is_ascii_alphanumeric() && *char != '.' && *char != '-' {
            return false;
        }
        if char.is_ascii_alphabetic() {
            if letter || !number {
                return false;
            } else {
                letter = true;
                number = false;
            }
        } else {
            letter = false;
            number = true;
        }
    }
    true
}
fn split_line(mut line: VecDeque<char>) -> VecDeque<Word> {
    let mut temp: Vec<char> = Vec::new();
    let mut out = VecDeque::new();
    temp.push(line.pop_front().unwrap());
    while line.len() > 0 {
        while line.len() > 0 && !line[0].is_ascii_alphabetic() {
            temp.push(line.pop_front().unwrap());
        }
        if temp.len() > 1 {
            out.push_back(Word(
                temp[0],
                temp[1..].iter().collect::<String>().parse::<f32>().unwrap(),
                None,
            ));
        }
        if line.len() > 0 {
            temp = vec![line.pop_front().unwrap()];
        }
    }
    out
}

fn read_line(line: VecDeque<char>) -> VecDeque<Word> {
    // here i rly want to check if there is a character that doesn't make sense
    // and just pass the raw string through if that's the case
    if !check_line(&line) {
        if line.len() > 1 {
            let word = Word('X', NEG_INFINITY, Some(line.iter().collect()));
            return VecDeque::from([word]);
        } else {
            let word = Word('X', NEG_INFINITY, None);
            return VecDeque::from([word]);
        }
    }
    split_line(line)
}

#[cfg(test)]

const TEST_INPUT: &str = "G28\nG1 X0 Y0 Z0 E0 F0\n
G1 X10\n
G1 Z10\n
M324 S2345 Y245\n
G1 E10\n
G28 ; home all without mesh bed level\n
G29 ; mesh bed leveling \n
M204 T2500 ; restore travel acceleration\n
M104 S220 ; set extruder temp\n
G92 E0\n
G1 X5\n
asdfasdfasdf\n
asdfafasdf\n
";

const TEST_G1_ONLY: &str = "G28\n\
                            G1 X0 Y0 Z0 E0 F0\n\
                            G1 X10\n\
                            G1 Z10\n\
                            G1 E10\n\
                            G1 x1e5\n\
                            G1 X5\n";

#[test]
fn g28_test() {
    let g28 = "G28\n";
    let gcode = ParsedGCode::build(g28).expect("failed to parse");
    if let Some((_, state)) = gcode.instructions.front() {
        if state.homed {
            return;
        }
    }
    panic!("failed to home");
}
#[test]
fn check_g1_index() {
    let mut gcode = ParsedGCode::build(TEST_INPUT).expect("adsf");
    assert_eq!(gcode.g1_moves, 5);
    let mut cursor = gcode.instructions.cursor_front_mut();
    let mut count = 0;
    while !cursor.at_end() {
        if let Some((Line::G1(g1), _)) = cursor.current() {
            count += 1;
            assert_eq!(count, g1.move_id);
        }
        let _ = cursor.next();
    }
    assert_eq!(gcode.g1_moves, count);
}
#[test]
fn get_g1_index_return() { 
    let mut gcode = ParsedGCode::build(TEST_INPUT).expect("asdf");
    let mut cursor = gcode.instructions.cursor_front_mut();
    while let Err(_) = cursor.at_g1() {
        cursor.next().expect("no g1 found");
    }
    cursor.move_next_g1(gcode.g1_moves).expect("no next g1");
    while !cursor.is_last_g1(gcode.g1_moves) {
        let init = cursor.current().unwrap() as *const (Line, State);
        let _ = cursor.get_prev_g1(gcode.g1_moves).expect("asdf");
        assert_eq!(cursor.current().unwrap() as *const (Line, State), init);
        cursor.move_next_g1(gcode.g1_moves).expect("asdf");
    }
}
#[test]
fn single_g1() {
    let input = "G1 X0 Y0 Z0 e1 f-1.12345\n";
    let mut gcode = ParsedGCode::build(input).expect("failed to parse");
    let mut cursor = gcode.instructions.cursor_front_mut();
    if let Some((Line::G1(_g1), state)) = cursor.current() {
        assert_eq!(state.x, 0.0);
        assert_eq!(state.y, 0.0);
        assert_eq!(state.z, 0.0);
        assert_eq!(state.e, 1.0);
        assert_eq!(state.f, -1.12345);
    } else { panic!("failed to parse single g1"); }
}
#[test]
fn check_line_test() {
    assert_eq!(false, check_line(&VecDeque::from(['A', 'A', 'A'])));
    assert_eq!(
        true,
        check_line(&VecDeque::from([
            'G', '1', 'X', '-', '1', '.', '1', 'Z', '2'
        ]))
    );
    assert_eq!(
        false,
        check_line(&VecDeque::from([
            'G', '1', 'X', '1', '.', '1', 'Z', '2', 'A'
        ]))
    );
}
#[test]
fn parse_line() {
    let line = "M200 S1234 F129384.1234";
    let line = clean_line(line);

    let line = read_line(line);

    let ins = Line::build(line, None);
    let params = VecDeque::from([Word('S', 1234.0, None), Word('F', 129384.1234, None)]);
    assert_eq!(
        ins,
        Line::Instruction(Instruction {
            first_word: Word('M', 200.0, None),
            params: Some(params),
        })
    );
}

#[test]
fn parse_random() {
    let input = "alksdhfbilwyfboqi3471bf049837gfo1bi4ubf1ilkh34bf";
    let line = clean_line(input);
    let line = read_line(line);

    assert_eq!(
        VecDeque::from([Word(
            'X',
            NEG_INFINITY,
            Some(String::from(input).to_ascii_uppercase())
        )]),
        line
    );
}

#[test]

fn dist_test() {
    let a = State {
        x: 1.0,
        y: 1.0,
        z: 1.0,
        e: 0.0,
        f: 0.0,
        homed: false,
        g1_emit: String::new(),
    };
    let b = State {
        x: 10.0,
        y: 10.0,
        z: 10.0,
        e: 0.0,
        f: 0.0,
        homed: false,
        g1_emit: String::new(),
    };

    assert_eq!(a.dist(&b), (9.0_f32.powf(2.0) * 3.0).sqrt())
}
#[test]
fn init_state() {
    let input = "G1 X0 Y0 Z0";
    let gcode = ParsedGCode::build(input).expect("failed to parse gcode");
    if let Some((Line::G1(_g1), state)) = gcode.instructions.front() {
        let blah = [state.x, state.y, state.z, state.e, state.f];
        let test = [0.0, 0.0, 0.0, NEG_INFINITY, NEG_INFINITY];
        assert_eq!(blah, test);
    } else { panic!("failed to parse gcode") }
}
#[test]
fn check_state() {
    let input = "G28\nG1 X0 Y0 Z0 E0 F1000\n
    G1 X1 Y2 Z3 E4 F2000\n
    G1 X2 Y2 Z2 E-1.1 F1000\n
    F1 X0 Y0 Z0 E100 F1\n";
    let a = [
        [0.0, 0.0, 0.0, 0.0, 1000.0],
        [1.0, 2.0, 3.0, 4.0, 2000.0],
        [2.0, 2.0, 2.0, 2.9, 1000.0],
        [0.0, 0.0, 0.0, 102.9, 1.0],
    ];
    let mut i = 0;
    let mut gcode = ParsedGCode::build(input).expect("asdf");
    let mut cursor = gcode.instructions.cursor_front_mut();
    while !cursor.at_end() {
        let Some((Line::G1(_g1), state)) = cursor.current() else {
            panic!("asdf");
        };
        assert_eq!(a[i][0], state.x);
        assert_eq!(a[i][1], state.y);
        assert_eq!(a[i][2], state.z);
        assert_eq!(a[i][3], state.e);
        assert_eq!(a[i][4], state.f);
        i += 1;
        let _ = cursor.next();
    }
}
#[test]
fn sub_all_test() {
    for count in 2..10 {
        let mut gcode = ParsedGCode::build(TEST_G1_ONLY).expect("asdf");
        gcode.subdivide(count);
        assert_eq!((gcode.g1_moves + (gcode.g1_moves - 1 ) * count), gcode.instructions.len() as i32);
    }
}
#[test]
fn trans_test() {
    let input = "G1 X0 Y1 Z1\n
        G1 X1 E1\n
        G1 X2 E1\n
        G1 X3 E1\n";
    let mut gcode = ParsedGCode::build(input).expect("asdf");
    let mut cursor = gcode.instructions.cursor_front_mut();

    while let Some((_line, state)) = cursor.current() {
        if state.x == 2.0 {
            break;
        }
        let _ = cursor.next();
    }

    let _ = cursor.translate_g1(0.5, 0.0, 0.0, gcode.g1_moves);
    cursor = gcode.instructions.cursor_front_mut();

    let t0 = G1 {
        move_id: 1,
        x: Some(0.0),
        y: Some(1.0),
        z: Some(1.0),
        e: None,
        f: None,
    };
    let t1 = G1 {
        move_id: 2,
        x: Some(1.0),
        y: None,
        z: None,
        e: Some(1.0),
        f: None,
    };
    let t2 = G1 {
        move_id: 3,
        x: Some(2.5),
        y: Some(1.0),
        z: Some(1.0),
        e: Some(1.5),
        f: None,
    };
    let t3 = G1 {
        move_id: 4,
        x: Some(3.0),
        y: None,
        z: None,
        e: Some(0.5),
        f: None,
    };
    let test = [t0, t1, t2, t3];

    let mut i = 0;
    while !cursor.at_end() {
        let (Line::G1(curr), _) = cursor.current().unwrap().clone() else {
            panic!("asdf");
        };
        assert_eq!(curr, test[i]);
        let _ = cursor.next();
        i += 1;
    }
}
#[test]
fn parse_m() {
    let line = " M 123 ; asdkfhalk ";
    let line = clean_line(line);
    let line = read_line(line);
    assert_eq!(line, VecDeque::from([Word('M', 123.0, None)]));
}
#[test]
fn sub_seg_test() {
    let input = "G1 X1 Y1 Z1 E1;asdfasdfasdf \n
    G1 X20 Y20 Z11 E10\nG1 Z100\n
    ;asdfasdfasdf\n";
    let mut gcode = ParsedGCode::build(input).expect("asdf");
    let mut cursor = gcode.instructions.cursor_front_mut();
    let _ = cursor.next();
    let seg_count = 111111;
    let _ = cursor.subdiv_seg(seg_count, gcode.g1_moves);
    let _ = gcode.instructions.pop_front();
    if let Some((Line::G1(g1), _)) = gcode.instructions.front() {
        assert_eq!(g1.e, Some(10.0/seg_count as f32));
    }
    assert_eq!(gcode.instructions.len() as i32, seg_count + 2);
}
#[test]
fn tot_dist_test() {
    let input = "G28\nG1 X0 Y0 Z0\n
    G1 X1 Y0 Z0 \n
    G1 X1 Y1 Z0 \n
    G1 X1 Y1 Z1 \n
    G1 X10 Y1 Z1\n";
    let mut gcode = ParsedGCode::build(input).expect("asdf");
    let mut _cursor = gcode.instructions.cursor_front_mut();
    assert_eq!(12.0, gcode.tot_dist());
}