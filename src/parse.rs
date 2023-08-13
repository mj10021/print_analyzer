use std::collections::{LinkedList, VecDeque};
use std::f32::NEG_INFINITY;

fn opt_add(opt: Option<f32>, num: f32) -> Option<f32> {
    if opt.is_none() {
        return None;
    } else {
        return Some(opt.unwrap() + num);
    }
}

#[derive(Clone, Debug, PartialEq)]
pub struct Word(pub char, pub f32);

pub trait Emit {
    fn emit(&self) -> String;
}

#[derive(Clone, Debug, PartialEq)]
pub enum Line {
    G1(G1),
    Instruction(Instruction),
    Raw(String),
}

#[derive(Clone, Debug)]
pub struct State {
    x: f32,
    y: f32,
    z: f32,
    e: f32,
    f: f32,
    hash: f32,
}

impl State {
    pub fn new() -> State {
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
    fn build(mut line: VecDeque<Word>) -> Line {
        let Word(letter, num) = line[0];
        let num = num as u8;
        match (letter, num, letter.is_ascii_alphabetic()) {
            ('G', 1, _) => Line::G1(G1::build(line)),
            ('N', _, _) => {
                line.pop_front();
                line.pop_front();
                Line::build(line)
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
pub struct Instruction {
    pub letter: char,
    pub val: u8,
    pub params: Option<VecDeque<Word>>,
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
pub struct G1 {
    pub x: Option<f32>,
    pub y: Option<f32>,
    pub z: Option<f32>,
    pub e: Option<f32>,
    pub f: Option<f32>,
}

impl G1 {
    // all gcode moves should be relative and all
    // cursor positions should be absolute
    pub fn build(params: VecDeque<Word>) -> G1 {
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
        G1 { x, y, z, e, f }
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
pub struct ParsedGCode<'a> {
    pub instructions: LinkedList<(Line, State)>,
    pub rel_xyz: bool,
    pub rel_e: bool,
    pub cur: std::collections::linked_list::CursorMut<'a, (Line, State)>,
}

impl<'a> ParsedGCode<'a> {
    pub fn from_str(str: &str) -> ParsedGCode {
        if str.len() < 1 {
            let mut ins = LinkedList::new();
            let gcode = ParsedGCode {
                instructions: ins,
                rel_xyz: false,
                rel_e: false,
                cur: ins.cursor_front_mut(),
            };
            return gcode;
        }
        let mut parsed = LinkedList::new();
        let mut rel_xyz = false;
        let mut rel_e = true;
        let lines = parse_str(str);
        for raw_line in lines {
            let line = clean_line(&raw_line);
            let line = read_line(&line);
            if line.len() < 1 {
                continue;
            }
            let Word(letter, num) = line[0];
            let num = num as u8;
            match (letter, num) {
                ('G', 90) => rel_xyz = false,
                ('G', 91) => rel_xyz = true,
                ('M', 82) => rel_e = false,
                ('M', 83) => rel_e = true,
                _ => (),
            }
            parsed.push_back((Line::build(line), State::new()));
        }

        ParsedGCode {
            instructions: parsed,
            rel_xyz,
            rel_e,
            cur: parsed.cursor_front_mut(),
        }
    }
    fn build(path: &str) -> ParsedGCode {
        let mut parsed = LinkedList::new();
        let mut rel_xyz = false;
        let mut rel_e = true;
        let lines = parse_file(path);
        for raw_line in lines {
            let line = clean_line(&raw_line);
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
            parsed.push_back((Line::build(line), State::new()));
        }

        ParsedGCode {
            instructions: parsed,
            rel_xyz,
            rel_e,
            cur: parsed.cursor_front_mut(),
        }
    }
    fn at_end(&mut self) -> bool {
        self.cur.peek_next().is_none() && self.cur.current().is_some()
    }
    fn at_front(&mut self) -> bool {
        self.cur.peek_prev().is_none() && self.cur.current().is_some()
    }
    fn at_g1(&mut self) -> bool {
        match self.cur.current() {
            Some((Line::G1(_), _)) => true,
            _ => false,
        }
    }
    // move cursor forward without wrapping
    fn next(&mut self) {
        if self.at_end() {
            panic!("moving past end of list");
        }
        self.cur.move_next();
    }
    fn next_g1(&mut self) {
        if !self.at_g1() {
            panic!("called from non-g1 node");
        }
        self.next();
        while !self.at_g1() {
            self.next()
        }
    }
    fn prev(&mut self) {
        if self.at_front() {
            panic!("moving past front of list");
        }
        self.cur.move_prev();
    }
    fn prev_g1(&mut self) {
        if !self.at_g1() {
            panic!("called from non-g1 node");
        }
        self.prev();
        while !self.at_g1() {
            self.prev()
        }
    }
    fn is_first_g1(&mut self) -> bool {
        if !self.at_g1() {
            panic!("called from non-g1 node");
        }
        let init = self.cur.current().unwrap() as *const (Line, State);
        while !self.at_front() {
            self.prev();
            if self.at_g1() {
                return false;
            }
        }
        // return to start node
        while self.cur.current().unwrap() as *const (Line, State) != init {
            self.next();
        }
        true
    }
    fn is_last_g1(&mut self) -> bool {
        if !self.at_g1() {
            panic!("called from non-g1 node");
        }
        let init = self.cur.current().unwrap() as *const (Line, State);
        while !self.at_end() {
            self.next();
            if self.at_g1() {
                return false;
            }
        }
        while self.cur.current().unwrap() as *const (Line, State) != init {
            self.prev();
        }
        true
    }
    fn update_state(&mut self) {
        if !self.at_front() {
            // this should be if first g1 not if at front
            self.prev_g1();
            if let Some((Line::G1(prev_g1), prev_state)) = self.cur.current() {
                self.next_g1();
                if let Some((Line::G1(curr_g1), curr_state)) = self.cur.current() {
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
            let Some((Line::G1(g1), state)) = self.cur.current();
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
        } else {
            return;
        }
    }
    fn translate_g1(&mut self, dx: f32, dy: f32, dz: f32) {
        // not 100% sure about first g1 esp. extrusion
        if self.is_first_g1() {
            if let Some((Line::G1(g1), state)) = self.cur.current() {
                // not sure if i should transform None values or leave as none
                g1.x = opt_add(g1.x, dx);
                g1.y = opt_add(g1.y, dy);
                g1.z = opt_add(g1.z, dz);
            }
        } else {
            if !self.at_g1() {
                panic!("called from non-g1 node");
            }
            if let Some((Line::G1(curr_g1), curr_state)) = self.cur.current() {
                self.prev_g1();
                if let Some((Line::G1(prev_g1), prev_state)) = self.cur.current() {
                    let init_dist = prev_state.dist(&curr_state);
                    self.next_g1();
                    curr_g1.x = opt_add(curr_g1.x, dx);
                    curr_g1.y = opt_add(curr_g1.y, dy);
                    curr_g1.z = opt_add(curr_g1.z, dz);
                    self.update_state();
                    let new_dist = curr_state.dist(&prev_state);
                    if let Some(de) = curr_g1.e {
                        curr_g1.e = Some(de * (new_dist / init_dist));
                    }
                    self.update_state();
                }
                if !self.is_last_g1() {
                    self.next_g1();
                    if let Some((Line::G1(next_g1), next_state)) = self.cur.current() {
                        todo!();
                    }
                    // NEED TO CHECK NEXT DIST BEFORE I PERFORM THE TRANSFORMATION
                }
            }
        }
    }
}

impl<'a> Emit for ParsedGCode<'a> {
    fn emit(&self) -> String {
        let mut out = String::new();
        for (line, _) in &self.instructions {
            out += &line.emit();
        }
        out
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
    let ins = Line::build(line);
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
