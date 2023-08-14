#![allow(unused)]
#![feature(linked_list_cursors)]
#![feature(let_chains)]

// pub mod analysis;
pub mod parse;
//pub mod transform;

/*
use std::collections::VecDeque;
use std::env;
use std::fmt::Display;
use std::fs::File;

struct PrinterModel {
    cursor: Cursor,
}

struct Prologue<'a> {
    head_instruction: Instruction<'a>,
    tail_instruction: Instruction<'a>,
    rel_coords: bool,
    rel_e: bool,
}

impl<'a> Prologue<'a> {
    fn build(lines: &Vec<String>) -> Prologue {
        let mut end = 0;
        for (i, line) in lines.enumerate() {
            let line = clean_line(line);
            if line[0..=1] == ['G', '1'] {
                end = i;
                break;
            }
        }
        let lines = lines[0..end];

    }
}

fn parse_lines_to_instructions (lines: &Vec<String>) -> (Instruction, Instruction) {




    let head: Instruction;
    let tail: Instruction;

    for line in lines {
        let parsed = read_line(line);
        match parsed[0] {
            Word('N', _) => continue,
            Word('G', val) => Move::from_g1(g1, cursor)
        }
    }

    (head, tail)

}


struct PrintModel<'a> {
    prologue: Prologue,
    print: Vec<Layer<'a>>,
    epilogue: Vec<Instruction<'a>>,
    relative_xyz: bool,
    relative_e: bool,
}

impl<'a> PrintModel<'a> {
    fn from_file(path: &'a str) -> PrintModel {
        let lines = read_file(path);
        let prologue = Prologue::build(&lines);

    }


}

struct Layer<'a> {
    lines: Vec<Instruction<'a>>,
}

impl<'a> Layer<'a> {
    fn interpolate_points(&self, count: u32) -> Layer {
        let mut total_dist = 0.0;
        let mut cursor = Cursor::new();
        for line in self.lines {
            match line {
                Instruction::Move(params) => {
                    total_dist += cursor.update_pos(params, true);
                },
                Instruction::NonMove(command) => todo!(),
            }

        let avg_seg_dist = total_dist / count as f32;


        }
        // take a layer
        // figure out the total distance travelled of the layer
        // figure out the total number of moves
        // panic if requested points is less than starting points
        //
    }


}

#[derive(Clone, Debug, PartialEq)]
struct Pos {
    x: f32,
    y: f32,
    z: f32,
}

impl Pos {
    fn update_rel(&mut self, other: Pos) {
        self.x += other.x;
        self.y += other.y;
        self.z += other.z;
    }
    fn update_abs(&mut self, other: Pos) {
        self.x = other.x;
        self.y = other.y;
        self.z = other.z;
    }
    fn dist(&self, initial_pos: Pos) -> f32 {
        let dx = self.x - initial_pos.x;
        let dy = self.y - initial_pos.y;
        let dz = self.z - initial_pos.z;
        (dx.powf(2.0) + dy.powf(2.0) + dz.powf(2.0)).sqrt()
    }
}

struct Cursor {
    pos: Pos,
    e: f32,
    f: f32,
}

impl Cursor {
    fn new() -> Cursor {
        let x = 0.0;
        let y = 0.0;
        let z = 0.0;
        let e = 0.0;
        let f = 0.0;
        let pos = Pos{x, y, z};
        Cursor { pos, e, f }
    }
    fn update_pos(&mut self, update: Move, rel: bool) -> f32 {
        let prev_pos = self.pos.clone();
        let curr = [self.pos.x, self.pos.y, self.pos.z, self.e, self.f];
        let mut temp = [0.0, 0.0, 0.0, 0.0, 0.0];
        let params = update.as_vec();
        for i in 0..params.len() {
            if params[i] == None {
                if !rel {
                    temp[i] = curr[i];
                }
            } else {
                temp[i] = params[i].unwrap();
            }
        }
        let move_pos = Pos {x: temp[0], y: temp[1], z: temp[2]};
        if rel {
            self.pos.update_rel(move_pos)
        } else {
            self.pos.update_abs(move_pos)
        }
        self.pos.dist(prev_pos)
    }

    fn update_e(&mut self, e: f32, rel: bool) {
        if rel {
            self.e += e;
        } else {
            self.e = e;
        }
    }
    fn flow_calc(&self, prev_move: Cursor) -> f32 {
        let ext = self.e - prev_move.e;
        let dist = self.pos.dist(prev_move.pos);
        ext / dist
    }
    fn emit(&self) -> String {
        format!(
            "G1 X{} Y{} Z{} E{} F{}\n",
            self.pos.x,
            self.pos.y,
            self.pos.z,
            self.e,
            self.f
        )
    }


}

#[derive(Debug)]
enum Code {
    G(u32),
    M(u32),
    T(u32),
    Other(Vec<char>),
}

#[derive(Debug)]
struct Word(char, f32);

#[derive(Debug)]
struct Command<'a> {
    code: Code,
    params: VecDeque<Word>,
    prev: Option<&'a Instruction<'a>>,
    next: Option<&'a Instruction<'a>>,
}

impl<'a> Command<'a> {



}
#[derive(Debug)]
enum Instruction<'a> {
    Move(Move<'a>),
    NonMove(Command<'a>),
}

fn str_un<T: Display>(lett: char, opt: Option<T>) -> String {
    if opt.is_none() {
        return String::new();
    } else {
        return format!("{}{}", lett, opt.unwrap());
    }
}
#[derive(Clone, Debug)]
struct Move<'a> {
    x: f32,
    y: f32,
    z: f32,
    e: f32,
    f: f32,
    prev: Option<&'a Instruction<'a>>,
    next: Option<&'a Instruction<'a>>,
}




impl<'a> Move<'a> {
    fn emit(&self) -> String {
        format!(
            "G1 {} {} {} {} {}\n",
            str_un('X', self.x),
            str_un('Y', self.y),
            str_un('Z', self.z),
            str_un('E', self.e),
            str_un('F', self.f)
        )
    }
    fn from_g1(g1: Command, cursor: Cursor) -> Move {
        let mut x = None;
        let mut y = None;
        let mut z = None;
        let mut e = None;
        let mut f = None;
        for Word(letter, value) in g1.params {
            match letter {
                'X' => x = Some(value),
                'Y' => y = Some(value),
                'Z' => z = Some(value),
                'E' => e = Some(value),
                'F' => f = Some(value),
                _ => (),
            }
        }
        Move { x, y, z, e, f , prev: None, next: None }
    }
    fn as_vec(&self) -> Vec<Option<f32>> {
        vec!(self.x, self.y, self.z, self.e, self.f)
    }

    fn into_many(&self, cursor: &Cursor, count: u32) -> Option<Move> {
        //return the same move back now subdivided
        let next = self.next;
        if next.is_none() {
            return None;
        }
        let e_i = self.e;
        let x = opt_to_f(self.x);
        let y = opt_to_f(self.y);
        let z = opt_to_f(self.z);
        let pos_i = Pos { x, y, z };

        let total_x = opt_to_f(self.x) - cursor.pos.x;
        let total_y = opt_to_f(self.y) - cursor.pos.y;
        let seg_x = total_x / count as f32;
        let seg_y = total_y / count as f32;

        let mut start = self.clone();
        let total_e = opt_to_f(start.e);
        let mut prev_node = &start;

        for i in 0..count {
            let new_x = seg_x * i as f32;
            let new_y = seg_y * i as f32;
            let next;
            if i == count - 1 {
                next = start.next;
            } else {
                next = None;
            }
            let mut new_move = Move {
                x: Some(new_x),
                y: Come(new_y),
                z: None,
                e: todo!(),
                f: None,
                prev: prev_node,
                next: None,
            };
            prev_node = &new_move;
            new_move.prev.next = &new_move;

        }





    }
}

fn read_file(path: &str) -> Vec<String> {
    String::from_utf8(std::fs::read(path).unwrap())
        .unwrap()
        .split("/n")
        .map(|s| s.split_once(';').unwrap().0) // ignore any ';' comments
        .map(str::to_string)
        .collect()
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
            temp_line.push(c);
        }
    }
    temp_line
}

fn parse(line: &str) -> Command {
    let line = clean_line(line);

    let mut map = read_line(&line);

    println!("{:?}", map);
    let Some(Word(command, num)) = map.pop_front() else {
        return Command {
            code: Code::Other(line),
            params: VecDeque::new(),
            prev: None,
            next: None,
        }
    };

    match command {
        'G' => {
            return Command {
                code: Code::G(num as u32),
                params: map,
                prev: None,
                next: None,
            }
        }
        'M' => {
            return Command {
                code: Code::M(num as u32),
                params: map,
                prev: None,
                next: None,
            }
        }
        'T' => {
            return Command {
                code: Code::M(num as u32),
                params: map,
                prev: None,
                next: None,
            }
        }
        _ => todo!(),
    };
}

//#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn parse_g1() {
        let line = "G1 X1234.1234 Y11234 Z1.2314 E1123.1234 F123.23\n";
        let result = parse(line);
        let g1 = Move::from_g1(result);
        let code = g1.emit();
        assert_eq!(line, code);
    }
    #[test]
    fn update_cursor() {
        let mut output = String::new();
        let code =
        "    G1 X1 Y1    Z1 F1000     \n
        G1 X2 Y2 Z2    E1\n
        G1 X2.111    Y2 Z2  E1\n
        G1 X2 Y200.1  Z2 E1\n";
        let mut cursor = Cursor::new();
        let mut commands = Vec::new();
        for line in code.lines() {
            if line == "" {
                continue;
            }
            commands.push(parse(line));
        }
        let mut output = cursor.emit();
        for command in commands {
            let update = Move::from_g1(command);
            cursor.update_pos(update, true);
            output += &cursor.emit();
        }
        assert_eq!(cursor.pos, Pos{x: 7.111, y: 205.1, z: 7.0});
    }

    #[test]
    fn interpolate_points(points: u32, layer: Layer) -> Layer {
        // take a layer
        // figure out the total distance travelled of the layer
        // figure out the total number of moves
        // panic if requested points is less than starting points
        //
    }

    fn transform_points(fun: fn(f32), print: PrintModel) -> PrintModel {
        todo!();
    }

    fn draw_vector() {
        // draw vector from previous to current move
        // also find vector from current to next move
    }
}
*/
