use std::collections::{linked_list::CursorMut, LinkedList, VecDeque};
use std::f32::NEG_INFINITY;

mod finder;

#[derive(Clone, Debug, PartialEq)]
struct Word(char, f32, Option<String>);

pub trait Emit {
    fn emit(&self) -> String;
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
    x: f32,
    y: f32,
    z: f32,
    e: f32,
    f: f32,
    g1_emit: String,
}

impl State {
    pub fn new() -> State {
        State {
            x: NEG_INFINITY,
            y: NEG_INFINITY,
            z: NEG_INFINITY,
            e: NEG_INFINITY,
            f: NEG_INFINITY,
            g1_emit: String::new(),
        }
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
    first_word: Word,
    params: Option<VecDeque<Word>>,
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
    x: Option<f32>,
    y: Option<f32>,
    z: Option<f32>,
    e: Option<f32>,
    f: Option<f32>,
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
            out += &format!(" X{}", x);
        }
        if let Some(y) = self.y {
            out += &format!(" Y{}", y);
        }
        if let Some(z) = self.z {
            out += &format!(" Z{}", z);
        }
        if let Some(e) = self.e {
            out += &format!(" E{}", e);
        }
        if let Some(f) = self.f {
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
    pub rel_xyz: bool,
    pub rel_e: bool,
}

impl ParsedGCode {
    fn set_states(&mut self) -> Result<(), CursorError> {
        let mut cursor = self.instructions.cursor_front_mut();
        loop {
            assert!(cursor.current().is_some());
            cursor.update_state(self.g1_moves)?;
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
}
pub enum CursorError {
    PastEnd,
    PastFront,
    ExpectedG1,
    Unknown,
}
impl std::fmt::Display for CursorError {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let msg = match self {
            CursorError::PastEnd => "past end",
            CursorError::PastFront => "past front",
            CursorError::ExpectedG1 => "expected g1",
            CursorError::Unknown => "unknown... spooky",
        };
        write!(f, "{}", msg)
    }
}
impl std::fmt::Debug for CursorError {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        let msg = match self {
            CursorError::PastEnd => "past end",
            CursorError::PastFront => "past front",
            CursorError::ExpectedG1 => "expected g1",
            CursorError::Unknown => "unknown... spooky",
        };
        write!(f, "{}", msg)
    }
}
pub trait GCursor {
    fn at_end(&mut self) -> bool;
    fn at_front(&mut self) -> bool;
    fn at_g1(&mut self) -> Result<(), CursorError>;
    fn next(&mut self) -> Result<(), CursorError>;
    fn prev(&mut self) -> Result<(), CursorError>;
    fn move_next_g1(&mut self, g1_count: i32) -> Result<(), CursorError>;
    fn get_next_g1(&mut self, g1_count: i32) -> Result<(G1, State), CursorError>;
    fn move_prev_g1(&mut self) -> Result<(), CursorError>;
    fn get_prev_g1(&mut self, g1_count: i32) -> Result<(G1, State), CursorError>;
    fn is_first_g1(&mut self) -> bool;
    fn is_last_g1(&mut self, g1_count: i32) -> bool;
    fn update_state(&mut self, g1_count: i32) -> Result<(), CursorError>;
    fn translate_g1(&mut self, dx: f32, dy: f32, dz: f32, g1_count: i32) -> Result<(), CursorError>;
    fn subdiv_seg(&mut self, seg_len: i32, g1_count: i32) -> Result<(), CursorError>;
}
impl<'a> GCursor for CursorMut<'a, (Line, State)> {
    fn at_end(&mut self) -> bool {
        self.peek_next().is_none() && self.current().is_some()
    }
    fn at_front(&mut self) -> bool {
        self.peek_prev().is_none() && self.current().is_some()
    }
    fn at_g1(&mut self) -> Result<(), CursorError> {
        if let Some((Line::G1(_), _)) = self.current() {
            return Ok(());
        } else { Err(CursorError::ExpectedG1) }
    }
    // move cursor forward without wrapping
    fn next(&mut self) -> Result<(), CursorError> {
        if self.at_end() {
            return Err(CursorError::PastEnd);
        }
        self.move_next();
        Ok(())
    }
    fn move_next_g1(&mut self, g1_count: i32) -> Result<(), CursorError> {
        // this one doesn't rly work
        self.at_g1()?;
        if self.is_last_g1(g1_count) {
            return Err(CursorError::PastEnd);
        };
        self.next()?;
        while let Err(_) = self.at_g1() {
            self.next()?;
        }
        Ok(())
    }
    fn get_next_g1(&mut self, g1_count: i32) -> Result<(G1, State), CursorError> {
        self.at_g1()?;
        if self.is_last_g1(g1_count) {
            return Err(CursorError::PastEnd);
        };
        self.move_next_g1(g1_count)?;
        let line = self.current().unwrap().clone();
        self.move_prev_g1()?;
        if let (Line::G1(g1), state) = line {
            return Ok((g1, state));
        }
        Err(CursorError::Unknown)
    }
    fn prev(&mut self) -> Result<(), CursorError> {
        if self.at_front() {
            return Err(CursorError::PastFront);
        }
        self.move_prev();
        Ok(())
    }
    fn move_prev_g1(&mut self) -> Result<(), CursorError> {
        // this one doesn't rly work
        self.at_g1()?;
        self.prev()?;
        while let Err(_) = self.at_g1() {
            self.prev()?;
        }
        Ok(())
    }
    fn get_prev_g1(&mut self, g1_count: i32) -> Result<(G1, State), CursorError> {
        self.at_g1()?;
        if self.is_first_g1() {
            return Err(CursorError::PastFront);
        }
        self.move_prev_g1()?;
        let line = self.current().unwrap().clone();
        self.move_next_g1(g1_count)?;
        if let (Line::G1(g1), state) = line {
            return Ok((g1, state));
        } else { Err(CursorError::Unknown) }
    }
    fn is_first_g1(&mut self) -> bool {
        if let Err(_) = self.at_g1() {
            panic!("call from non-g1");
        };
        if let Some(&mut (Line::G1(G1 { move_id, .. }), _)) = self.current() {
            return move_id == 1;
        }
        false
    }
    fn is_last_g1(&mut self, g1_count: i32) -> bool {
        if let Err(_) = self.at_g1() {
            panic!("call from non-g1");
        };
        if let Some(&mut (Line::G1(G1 { move_id, .. }), _)) = self.current() {
            return move_id == g1_count;
        }
        false
    }
    fn update_state(&mut self, g1_count: i32) -> Result<(), CursorError> {
        // if the state is from the current G1, update nothing
        if let Some((Line::G1(g1), state)) = self.current() {
            if g1.emit() == state.g1_emit {
                return Ok(());
            }
        }
        if let Ok((_prev_g1, prev_state)) = self.get_prev_g1(g1_count) {
            match self.current() {
                Some((Line::G1(g1), state)) => {
                    state.x = g1.x.unwrap_or(prev_state.x);
                    state.y = g1.y.unwrap_or(prev_state.y);
                    state.z = g1.z.unwrap_or(prev_state.z);
                    state.e = prev_state.e + g1.e.unwrap_or(0.0);
                    state.f = g1.f.unwrap_or(prev_state.f);
                    state.g1_emit = g1.emit();
                }
                Some((_, state)) => {
                    state.x = prev_state.x;
                    state.y = prev_state.y;
                    state.z = prev_state.z;
                    state.e = prev_state.e;
                    state.f = prev_state.f;
                    state.g1_emit = String::new();
                }
                None => {
                    panic!("uh oh");
                }
            }
        } else {
            if let Some((Line::G1(g1), state)) = self.current() {
                state.x = g1.x.unwrap_or(NEG_INFINITY);
                state.y = g1.y.unwrap_or(NEG_INFINITY);
                state.z = g1.z.unwrap_or(NEG_INFINITY);
                state.e = g1.e.unwrap_or(NEG_INFINITY);
                state.f = g1.f.unwrap_or(NEG_INFINITY);
                state.g1_emit = g1.emit();
            }
        }
        Ok(())
    }
    fn translate_g1(&mut self, dx: f32, dy: f32, dz: f32, g1_count: i32) -> Result<(), CursorError> {
        if let Err(e) = self.at_g1() {
            panic!("{}", e);
        }
        if self.is_first_g1() || self.is_last_g1(g1_count) {
            return Ok(());
        }
        let mut init_next_de = 0.0;
        let mut new_next_dist = 0.0;
        let mut init_next_dist = 0.0;

        let (_, prev_state) = self.get_prev_g1(g1_count)?;
        let (next_g1, next_state) = self.get_next_g1(g1_count)?;
        if let Some((Line::G1(curr_g1), curr_state)) = self.current() {
            let init_prev_dist = curr_state.dist(&prev_state);
            init_next_dist = curr_state.dist(&next_state);
            let init_curr_de = curr_g1.e.unwrap_or(0.0);
            init_next_de = next_g1.e.unwrap_or(0.0);
            curr_g1.x = Some(curr_state.x + dx);
            curr_g1.y = Some(curr_state.y + dy);
            curr_g1.z = Some(curr_state.z + dz);
            let temp_state = State {
                x: curr_state.x + dx,
                y: curr_state.y + dy,
                z: curr_state.z + dz,
                e: 0.0,
                f: 0.0,
                g1_emit: String::new(),
            };
            let new_prev_dist = temp_state.dist(&prev_state);
            new_next_dist = temp_state.dist(&next_state);
            curr_g1.e = Some(init_curr_de * (new_prev_dist / init_prev_dist));
        }
        self.update_state(g1_count)?;
        self.move_next_g1(g1_count)?;
        if let Some((Line::G1(next_g1), _next_state)) = self.current() {
            next_g1.e = Some(init_next_de * (new_next_dist / init_next_dist));
        }
        self.update_state(g1_count)?;
        self.move_prev_g1()?;
        Ok(())
    }
    fn subdiv_seg(&mut self, count: i32, g1_count: i32) -> Result<(), CursorError> {
        // needs to have a previous g1 move to divide from
        self.at_g1()?;
        let (_prev_g1, prev_state) = self.get_prev_g1(g1_count)?;
        let mut dx = 0.0;
        let mut dy = 0.0;
        let mut dz = 0.0;
        let mut de = 0.0;
        let mut f: Option<f32> = None;
        if let Some((Line::G1(curr_g1), curr_state)) = self.current() {
            dx = curr_state.x / count as f32;
            dy = curr_state.y / count as f32;
            dz = curr_state.z / count as f32;
            de = curr_g1.e.unwrap_or(0.0) / count as f32;
            curr_g1.e = Some(de);
            f = curr_g1.f;
        }
        let mut i = 0;
        while i < count {
            let new_g1 = G1 {
                move_id: -1,
                x: Some(prev_state.x + (dx * i as f32)),
                y: Some(prev_state.y + (dy * i as f32)),
                z: Some(prev_state.z + (dz * i as f32)),
                e: Some(de),
                f,
            };
            self.insert_before((Line::G1(new_g1), State::new()));
            self.prev()?;
            self.update_state(g1_count)?;
            self.next()?;
            i += 1;
        }
        Ok(())
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

const TEST_INPUT: &str = "G1 X0 Y0 Z0 E0 F0\n
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

const TEST_G1_ONLY: &str = "G1 X0 Y0 Z0 E0 F0
G1 X10
G1 Z10
G1 E10
G1 x1e5 
G1 X5
";


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
    cursor.next().expect("asdf");
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
        g1_emit: String::new(),
    };
    let b = State {
        x: 10.0,
        y: 10.0,
        z: 10.0,
        e: 0.0,
        f: 0.0,
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
    let input = "G1 X0 Y0 Z0 E0 F1000\n
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
    let input = "G1 X0 Y0 Z0\n
    G1 X1 Y0 Z0 \n
    G1 X1 Y1 Z0 \n
    G1 X1 Y1 Z1 \n
    G1 X10 Y1 Z1\n";
    let mut gcode = ParsedGCode::build(input).expect("asdf");
    let mut _cursor = gcode.instructions.cursor_front_mut();
    assert_eq!(12.0, gcode.tot_dist());
}