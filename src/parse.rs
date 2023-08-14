use std::collections::{LinkedList, linked_list::CursorMut, VecDeque};
use std::f32::NEG_INFINITY;

#[derive(Clone, Debug, PartialEq)]
struct Word(pub char, pub f32);

trait Emit {
    fn emit(&self) -> String;
}

#[derive(Clone, Debug, PartialEq)]
enum Line {
    G1(G1),
    Instruction(Instruction),
    Raw(String),
}

#[derive(Clone, Debug)]
struct State {
    x: f32,
    y: f32,
    z: f32,
    e: f32,
    f: f32,
    hash: f32,
}

impl State {
    fn new() -> State {
        State {
            x: NEG_INFINITY,
            y: NEG_INFINITY,
            z: NEG_INFINITY,
            e: NEG_INFINITY,
            f: NEG_INFINITY,
            hash: NEG_INFINITY,
        }
    }
    fn dist(&self, init: &State) -> f32 {
        let dx = self.x - init.x;
        let dy = self.y - init.y;
        let dz = self.z - init.z;
        (dx.powf(2.0) + dy.powf(2.0) + dz.powf(2.0)).sqrt()
    }
    fn get_hash(&mut self, g1: &G1) {
        let x_key = 1.1;
        let y_key = 1.2;
        let z_key = 1.3;
        let e_key = 1.4;
        let f_key = 1.5;
        self.hash = g1.x.unwrap_or(x_key).powf(x_key)
        * g1.y.unwrap_or(y_key).powf(y_key)
        * g1.z.unwrap_or(z_key).powf(z_key)
        * g1.e.unwrap_or(e_key).powf(e_key)
        * g1.f.unwrap_or(f_key).powf(f_key); 
    }
}

impl Line {
    fn build(mut line: VecDeque<Word>, g1_count: Option<i32>) -> Line {
        let Word(letter, num) = line[0];
        let num = num as u8;
        match (letter, num, letter.is_ascii_alphabetic()) {
            ('G', 1, _) => {
                let g1_count = g1_count.unwrap();
                Line::G1(G1::build(line, g1_count))
            },
            ('N', _, _) => {
                line.pop_front();
                line.pop_front();
                Line::build(line, None)
            }
            (_, _, true) => Line::Instruction(Instruction::build(line)),
            (_, _, false) => {
                let mut raw_line = String::new();
                for word in line {
                    let Word(letter, num) = word;
                    raw_line += format!("{letter}{num}").as_str();
                }
                Line::Raw(raw_line)
            }
        }
    }
    fn is_g1(&self) -> bool {
        match self {
            Line::G1(_) => true,
            _ => false,
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
struct Instruction {
    letter: char,
    val: u8,
    params: Option<VecDeque<Word>>,
}

impl Instruction {
    fn build(mut line: VecDeque<Word>) -> Instruction {
        let Word(letter, val) = line.pop_front().unwrap();
        Instruction {
            letter,
            val: val as u8,
            params: Some(line),
        }
    }
}

impl Emit for Instruction {
    fn emit(&self) -> String {
        let mut out = format!("{}{}", self.letter, self.val);
        if let Some(params) = &self.params {
            for Word(letter, val) in params {
                out += &format!(" {}{}", letter, val);
            }
        }
        out += "\n";
        out
    }
}

#[derive(Clone, Debug, PartialEq)]
struct G1 {
    move_count: i32,
    x: Option<f32>,
    y: Option<f32>,
    z: Option<f32>,
    e: Option<f32>,
    f: Option<f32>,
}

impl G1 {
    // all gcode moves should be relative and all
    // cursor positions should be absolute
    fn build(params: VecDeque<Word>, move_count: i32) -> G1 {
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
        G1 { move_count, x, y, z, e, f }
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
        out += "\n";
        out
    }
}

#[derive(Debug)]
struct ParsedGCode {
    instructions: LinkedList<(Line, State)>,
    g1_moves: i32,
    rel_xyz: bool,
    rel_e: bool,
}

impl ParsedGCode {
    fn set_states(&mut self) {
        let mut cursor = self.instructions.cursor_front_mut();
        loop {
            cursor.update_state(self.g1_moves);
            if cursor.peek_next().is_none() {
                break;
            }
            cursor.move_next();
        }
    }
    fn tot_dist(&mut self) -> f32 {
        let mut out = 0.0;
        let mut cursor = self.instructions.cursor_front_mut();
        while !cursor.at_g1() {
            cursor.next();
        }
        let (_, init_state) = cursor.current().unwrap();
        let mut last = init_state.clone();
        while !cursor.at_end() {
            cursor.move_next_g1();
            let (_, curr) = cursor.current().unwrap();
            out += last.dist(curr);
            last = curr.clone();
        }
        out


    }
    fn from_str(str: &str) -> ParsedGCode {
        if str.len() < 1 {
            let mut ins = LinkedList::new();
            let gcode = ParsedGCode {
                instructions: ins,
                rel_xyz: false,
                rel_e: false,
                g1_moves: 0,
            };
            return gcode;
        }
        let mut g1_moves = -1;
        let mut parsed = LinkedList::new();
        let mut rel_xyz = false;
        let mut rel_e = true;
        let lines = parse_str(str);
        for raw_line in lines {
            let line = clean_line(&raw_line);
            if line.len() < 1 {
                continue;
            }
            if line[0..=1] == ['G','1'] {
                g1_moves += 1;
            }
            let line = read_line(&line);

            let Word(letter, num) = line[0];
            let num = num as u8;
            match (letter, num) {
                ('G', 90) => rel_xyz = false,
                ('G', 91) => rel_xyz = true,
                ('M', 82) => rel_e = false,
                ('M', 83) => rel_e = true,
                _ => (),
            }
            parsed.push_back((Line::build(line, Some(g1_moves)), State::new()));
        }

        let mut out = ParsedGCode {
            instructions: parsed,
            rel_xyz,
            rel_e,
            g1_moves,
        };
        out.set_states();
        out
    }
    fn build(path: &str) -> ParsedGCode {
        let mut g1_moves = -1;
        let mut parsed = LinkedList::new();
        let mut rel_xyz = false;
        let mut rel_e = true;
        let lines = parse_file(path);
        for raw_line in lines {
            let line = clean_line(&raw_line);
            if line[0..=1] == ['G','1'] {
                g1_moves += 1;
            }
            let line = read_line(&line);
            let Word(letter, num) = line[0];
            let num = num as u8;
            match (letter, num) {
                ('G', 90) => rel_xyz = false,
                ('G', 91) => rel_xyz = true,
                ('M', 82) => rel_e = false,
                ('M', 83) => rel_e = true,
                _ => (),
            }
            parsed.push_back((Line::build(line, Some(g1_moves)), State::new()));
        }

        let mut out = ParsedGCode {
            instructions: parsed,
            rel_xyz,
            rel_e,
            g1_moves,
        };
        out.set_states();
        out
    }
}


impl Emit for ParsedGCode {
    fn emit(&self) -> String {
        let mut out = String::new();
        for (line, _) in &self.instructions {
            out += &line.emit();
        }
        out
    }
}

trait Curse {
    fn at_end(&mut self) -> bool;
    fn at_front(&mut self) -> bool;
    fn at_g1(&mut self) -> bool;
    fn next(&mut self);
    fn prev(&mut self);
    fn move_next_g1(&mut self);
    fn get_next_g1(&mut self, g1_count: i32) -> Option<(G1, State)>;
    fn move_prev_g1(&mut self);
    fn get_prev_g1(&mut self, g1_count: i32) -> Option<(G1, State)>;
    fn is_first_g1(&mut self) -> bool;
    fn is_last_g1(&mut self, g1_count: i32) -> bool;
    fn update_state(&mut self, g1_count: i32);
    fn translate_g1(&mut self, dx: f32, dy: f32, dz: f32, g1_count: i32);
    fn subdiv_seg(&mut self, seg_len: f32, g1_count: i32);

}
impl<'a> Curse for CursorMut<'a, (Line, State)> {

    fn at_end(&mut self) -> bool {
        self.peek_next().is_none() && self.current().is_some()
    }
    fn at_front(&mut self) -> bool {
        self.peek_prev().is_none() && self.current().is_some()
    }
    fn at_g1(&mut self) -> bool {
        match self.current() {
            Some((Line::G1(_), _)) => true,
            _ => false,
        }
    }
    // move cursor forward without wrapping
    fn next(&mut self) {
        if self.at_end() {
            panic!("moving past end of list");
        }
        self.move_next();
    }
    fn move_next_g1(&mut self) {
        assert!(self.at_g1());
        self.next();
        while !self.at_g1() {
            self.next()
        }
    }
    fn get_next_g1(&mut self, g1_count: i32) -> Option<(G1, State)> {
        assert!(self.at_g1());
        if self.is_last_g1(g1_count) {
            return None;
        }
        self.move_next_g1();
        let line = self.current().unwrap().clone();
        self.move_prev_g1();
        if let (Line::G1(g1), state) = line {
            return Some((g1, state));
        } else { panic!("asdf") }

    }
    fn prev(&mut self) {
        assert!(self.at_g1());
        self.move_prev();
    }
    fn move_prev_g1(&mut self) {
        assert!(self.at_g1());
        self.prev();
        while !self.at_g1() {
            self.prev()
        }
    }
    fn get_prev_g1(&mut self, g1_count: i32) -> Option<(G1, State)> {
        assert!(self.at_g1());
        if self.is_first_g1() {
            return None;
        }
        self.move_prev_g1();
        let line = self.current().unwrap().clone();
        self.move_next_g1();
        if let (Line::G1(g1), state) = line {
            return Some((g1, state));
        } else { panic!("asdf") }
    }
    fn is_first_g1(&mut self) -> bool {
        assert!(self.at_g1());
        if let Some(&mut (Line::G1( G1 {move_count, .. }), _)) = self.current() {
            return move_count == 0;
        }
        false

    }
    fn is_last_g1(&mut self, g1_count: i32) -> bool {
        assert!(self.at_g1());
        if let Some(&mut (Line::G1( G1 { move_count, ..}), _)) = self.current() {
            return move_count == g1_count;
        }
        false
    }
    fn update_state(&mut self, g1_count: i32) {
        if !self.at_front() {
            // this should be if first g1 not if at front
            let prev = self.get_prev_g1(g1_count);
            if let Some((prev_g1, prev_state)) = prev {
                if let Some((Line::G1(curr_g1), curr_state)) = self.current() {
                    if curr_g1.x.is_some() {
                        curr_state.x = curr_g1.x.unwrap();
                    } else {
                        curr_state.x = prev_state.x;
                    }
                    if curr_g1.y.is_some() {
                        curr_state.y = curr_g1.y.unwrap();
                    } else {
                        curr_state.y = prev_state.y;
                    }
                    if curr_g1.z.is_some() {
                        curr_state.z = curr_g1.z.unwrap();
                    } else {
                        curr_state.z = prev_state.z;
                    }
                    curr_state.e = prev_state.e;
                    if curr_g1.e.is_some() {
                        curr_state.e += curr_g1.e.unwrap();
                    }
                    if curr_g1.f.is_some() {
                        curr_state.f = curr_g1.f.unwrap();
                    } else {
                        curr_state.f = prev_state.f;
                    }
                    curr_state.get_hash(curr_g1)
                }
            }
        } else if self.at_g1() {
            let Some((Line::G1(g1), state)) = self.current() else { panic!("adsf") };
            if g1.x.is_some() {
                state.x = g1.x.unwrap();
            }
            if g1.y.is_some() {
                state.y = g1.y.unwrap();
            }
            if g1.z.is_some() {
                state.z = g1.z.unwrap();
            }
            if g1.e.is_some() {
                state.e = g1.e.unwrap();
            }
            if g1.f.is_some() {
                state.f = g1.f.unwrap();
            }
            state.get_hash(g1);
        } else {
            return;
        }
    }
    fn translate_g1(&mut self, dx: f32, dy: f32, dz: f32, g1_count: i32) {
        assert!(self.at_g1());
        if self.is_first_g1() || self.is_last_g1(g1_count) {
            panic!("asdf"); // THIS IS FIRING AND SHOULDN'T BE
            return;
        }
        let mut init_next_de = 0.0;
        let mut new_next_dist = 0.0;
        let mut init_next_dist = 0.0;

        let (prev_g1, prev_state) = self.get_prev_g1(g1_count).unwrap();
        let (next_g1, next_state) = self.get_next_g1(g1_count).unwrap();
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
                hash: 0.0,
            };
            let new_prev_dist = temp_state.dist(&prev_state);
            new_next_dist = temp_state.dist(&next_state);
            curr_g1.e = Some(init_curr_de * (new_prev_dist/init_prev_dist));
        }
        self.update_state(g1_count);
        self.move_next_g1();
        if let Some((Line::G1(next_g1), next_state)) = self.current() {
            next_g1.e = Some(init_next_de * (new_next_dist / init_next_dist));

        }
        self.update_state(g1_count);
        self.move_prev_g1();
    }
    fn subdiv_seg(&mut self, seg_len: f32, g1_count: i32) {
        assert!(self.at_g1());
        assert!(!self.is_first_g1());
        let (prev_g1, prev_state) = self.get_prev_g1(g1_count).unwrap();
        let mut dx = 0.0;
        let mut dy = 0.0;
        let mut dz = 0.0;
        let mut de = 0.0;
        let mut seg_count = 0.0;
        let mut f: Option<f32> = None;
        if let Some((Line::G1(curr_g1), curr_state)) = self.current() {
            let init_dx = curr_state.x - prev_state.x;
            let init_dy = curr_state.y - prev_state.y;
            let init_dz = curr_state.z - prev_state.z;
            let init_dist = curr_state.dist(&prev_state);
            seg_count = (init_dist / seg_len).trunc();
            dx = curr_state.x / seg_count;
            dy = curr_state.y / seg_count;
            dz = curr_state.z / seg_count;
            de = curr_g1.e.unwrap_or(0.0) / seg_count;
            curr_g1.e = Some(de);
            f = curr_g1.f;
        }
        let mut i = 1.0;
        while i < seg_count {
            let new_g1 = G1 {
                move_count: -1,
                x: Some(prev_state.x + (dx * i)),
                y: Some(prev_state.y + (dy * i)),
                z: Some(prev_state.z + (dz * i)),
                e: Some(de),
                f,
            };
            self.insert_before((Line::G1(new_g1), State::new()));
            self.prev();
            self.update_state(g1_count);
            self.next();
            i += 1.0;
        }
    }
}

fn parse_file(path: &str) -> Vec<String> {
    String::from_utf8(std::fs::read(path).unwrap())
        .unwrap()
        .split("\n")
        .map(|s| s.split(';').nth(0).unwrap()) // ignore any ';' comments
        .map(str::to_string)
        .collect()
}

fn parse_str(str: &str) -> Vec<String> {
    String::from(str)
        .split("\n")
        .map(|s| s.split(';').nth(0).unwrap())
        .map(str::to_string)
        .collect()
}

fn clean_line(line: &str) -> Vec<char> {
    let mut temp_line = Vec::new();

    for c in line.chars() {
        // end reading line at start of comments
        if c == ';' {
            break;
        }
        // skip all whitespace
        if c == ' ' || c == '\n' || c == '\r' {
            continue;
        } else {
            temp_line.push(c.to_ascii_uppercase());
        }
    }
    temp_line
}

fn read_line(line: &Vec<char>) -> VecDeque<Word> {
    if line.len() < 2 {
        return VecDeque::new();
    }
    let mut output = VecDeque::new();
    if line[0].is_alphabetic() && line[1].is_numeric() {
        let mut temp_list: Vec<Vec<char>> = Vec::new();
        let mut word: Vec<char> = Vec::new();
        let mut has_letter = false;
        for i in 0..line.len() {
            if line[i].is_alphabetic() {
                if has_letter {
                    temp_list.push(word.clone());
                    word = vec![line[i]];
                } else {
                    word.push(line[i]);
                    has_letter = true;
                }
            } else {
                word.push(line[i]);
            }
        }
        if word.len() > 0 {
            temp_list.push(word.clone());
        }

        for word in temp_list {
            assert!(word.len() > 1);
            output.push_back(Word(
                word[0],
                word[1..]
                    .into_iter()
                    .collect::<String>()
                    .parse::<f32>()
                    .expect("invalid word value"),
            ));
        }
    } else {
        for char in line {
            output.push_back(Word(*char, 0.0));
        }
    }
    output
}

#[cfg(test)]
#[test]
fn parse_line() {
    let line = "M200 S1234 F129384.1234";
    let line: Vec<char> = clean_line(line);
    let line = read_line(&line);
    let ins = Line::build(line, None);
    let params = VecDeque::from([Word('S', 1234.0), Word('F', 129384.1234)]);
    assert_eq!(
        ins,
        Line::Instruction(Instruction {
            letter: 'M',
            val: 200,
            params: Some(params),
        })
    );
}

#[test]
fn parse_random() {
    let line = "alksdhfbilwyfboqi3471bf049837gfo1bi4ubf1ilkh34bf";
    let mut test = VecDeque::new();
    for char in line.chars() {
        test.push_back(Word(char.to_ascii_uppercase(), 0.0));
    }

    let line = clean_line(line);
    let line = read_line(&line);

    assert_eq!(test, line);
}

#[test]

fn dist_test() {
    let a = State {
        x: 1.0,
        y: 1.0,
        z: 1.0,
        e: 0.0,
        f: 0.0,
        hash: 0.0,
    };
    let b = State {
        x: 10.0,
        y: 10.0,
        z: 10.0,
        e: 0.0,
        f: 0.0,
        hash: 0.0,
    };

    assert_eq!(a.dist(&b),
        (9.0_f32.powf(2.0) * 3.0).sqrt()
    )
}
//#[test]
// fn total_dist_test() {
//     let input = "G1 X1 Y1 Z1 E1;asdfasdfasdf \n
//     G1 X20 Y20 Z11 E10\n
//     ;asdfasdfasdf\n";
//     let mut gcode = ParsedGCode::from_str(input);
//     let mut cursor = Cursor::build(&mut gcode);
//     assert_eq!(
//         cursor.total_file_dist(),
//         (
//             opt_dist_calc(
//                 Some(1.0),
//                 Some(20.0),
//                 Some(1.0),
//                 Some(20.0),
//                 Some(1.0),
//                 Some(11.0)
//             ),
//             2
//         )
//     );
// }
// 
#[test]
fn trans_test() {
    let input = "G1 X0 Y1 Z1\n
        G1 X1 E1\n
        G1 X2 E1\n
        G1 X3 E1\n";
    let mut gcode = ParsedGCode::from_str(input);
    let mut cursor = gcode.instructions.cursor_front_mut();

    while let Some((line, state)) = cursor.current() {
        if state.x == 2.0 {
            break;
        }
        cursor.next();
    }

    cursor.translate_g1(0.5, 0.0, 0.0, gcode.g1_moves);
    cursor = gcode.instructions.cursor_front_mut();

    let t0 = G1 {
        move_count: 0,
        x: Some(0.0),
        y: Some(1.0),
        z: Some(1.0),
        e: None,
        f: None,
    };
    let t1 = G1 {
        move_count: 1,
        x: Some(1.0),
        y: None,
        z: None,
        e: Some(1.0),
        f: None,
    };
    let t2 = G1 {
        move_count: 2,
        x: Some(2.5),
        y: Some(1.0),
        z: Some(1.0),
        e: Some(1.5),
        f: None,
    };
    let t3 = G1 {
        move_count: 3,
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
        cursor.next();
        i += 1;
    }
}
#[test]
fn sub_seg_test() {
    // the coordinates are wrong
    let input = "G1 X1 Y1 Z1 E1;asdfasdfasdf \n
    G1 X20 Y20 Z11 E10\n
    ;asdfasdfasdf\n";
    let mut gcode = ParsedGCode::from_str(input);
    let mut cursor = gcode.instructions.cursor_front_mut();
    cursor.next();
    let seg_dist = 5.0;
    cursor.subdiv_seg(seg_dist, gcode.g1_moves);
    panic!("{:#?}", gcode);
}
#[test]
fn tot_dist_test() {
    let input = "G1 X0 Y0 Z0\n
    G1 X1 Y0 Z0 \n
    G1 X1 Y1 Z0 \n
    G1 X1 Y1 Z1 \n
    G1 X10 Y1 Z1\n";
    let mut gcode = ParsedGCode::from_str(input);
    let mut cursor = gcode.instructions.cursor_front_mut();
    assert_eq!(12.0, gcode.tot_dist());
}
