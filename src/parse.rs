use std::collections::{LinkedList, VecDeque};

use crate::analysis::Cursor;

#[derive(Clone, Debug)]
pub struct Word(pub char, pub f32);

trait Emit {
    fn emit(&self) -> String;
}

#[derive(Clone, Debug)]
pub enum Line {
    G1(G1),
    Instruction(Instruction),
    Raw(String),
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

#[derive(Clone, Debug)]
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

#[derive(Clone, Debug)]
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

    fn to_rel_xyz(&mut self, cursor: &Cursor) {
        let xi = cursor.x;
        let yi = cursor.y;
        let zi = cursor.z;

        if self.x.is_some() {
            self.x = Some(self.x.unwrap() - xi);
        } else {
            self.x = Some(0.0)
        }
        if self.y.is_some() {
            self.y = Some(self.y.unwrap() - yi);
        } else {
            self.x = Some(0.0)
        }
        if self.z.is_some() {
            self.z = Some(self.z.unwrap() - zi);
        } else {
            self.x = Some(0.0)
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
        out += "\n";
        out
    }
}

fn is_new_layer(line: Line) -> bool {
    todo!();
}

pub struct Layer {
    lines: LinkedList<Line>,
}
impl Layer {
    fn new() -> Layer {
        Layer {
            lines: LinkedList::new(),
        }
    }
}

impl Emit for Layer {
    fn emit(&self) -> String {
        let mut out = String::new();
        for line in &self.lines {
            out += &line.emit();
        }
        out
    }
}
#[derive(Debug)]
pub struct ParsedGCode {
    pub instructions: LinkedList<Line>,
    pub rel_xyz: bool,
    pub rel_e: bool,
}

impl ParsedGCode {
    pub fn from_str(str: &str) -> ParsedGCode {
        let mut parsed = LinkedList::new();
        let mut rel_xyz = false;
        let mut rel_e = true;
        let lines = parse_str(str);
        for line in lines {
            let line = clean_line(&line);
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
            let ins;
            if letter == 'G' && num == 1 {
                ins = Line::G1(G1::build(line));
            } else {
                ins = Line::Instruction(Instruction::build(line));
            }
            parsed.push_back(ins)
        }

        ParsedGCode {
            instructions: parsed,
            rel_xyz,
            rel_e,
        }
    }
    fn build(path: &str) -> ParsedGCode {
        let mut parsed = LinkedList::new();
        let mut rel_xyz = false;
        let mut rel_e = true;
        let lines = parse_file(path);
        for line in lines {
            let line = clean_line(&line);
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
            let ins;
            if letter == 'G' && num == 1 {
                ins = Line::G1(G1::build(line));
            } else {
                ins = Line::Instruction(Instruction::build(line));
            }
            parsed.push_back(ins)
        }

        ParsedGCode {
            instructions: parsed,
            rel_xyz,
            rel_e,
        }
    }
}

impl Emit for ParsedGCode {
    fn emit(&self) -> String {
        let mut out = String::new();
        for line in &self.instructions {
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
    if line[0..=1] == ['G', '1'] {
        let mut output = VecDeque::new();
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
        return output;
    } else {
        return VecDeque::new();
    }
}

#[cfg(test)]
#[test]
fn asdf() {
    // TODO: read an entire stl and
    // parse into g1 and other commands
    todo!();
}
