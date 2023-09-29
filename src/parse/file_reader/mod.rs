use std::collections::VecDeque;
use std::f32::NEG_INFINITY;
use super::NodeList;


#[derive(Clone, Debug, PartialEq)]
pub struct Word(pub char, pub f32, pub Option<String>);

// enum to process and store the inputted lines of gcode, with structs
// to handle specific commands as necessary, with the option to just keep the 
// line as a raw string if it can't be parsed
#[derive(Clone, Debug, PartialEq)]
pub enum Line {
    G1(G1),
    G28,
    M82,
    M83,
    M91,
    M92,
    OtherInstruction(Instruction),
    Raw(String),
}
impl Line {
    fn build(mut line: Vec<Word>) -> Line {
        let Word(letter, num, _) = line[0];
        let num = num.round() as i32;
        match (letter, num) {
            // throw away logical line numbers
            ('N', _) => {
                Line::build(line[1..])
            }
            ('G', 1) => Line::G1(G1::build(line)),
            ('G', 28) => Line::G28,
            ('M', 82) => Line::M82,
            ('M', 83) => Line::M83,
            ('M', 91) => Line::M91,
            ('M', 92) => Line::M92,
            (_, _) => Line::Instruction(Instruction::build(line)),
        }
    }
}

#[derive(Clone, Debug, PartialEq)]
pub struct Instruction {
    pub first_word: Word,
    pub params: Option<VecDeque<Word>>,
}

impl Instruction {
    fn build(mut line: Vec<Word>) -> Instruction {
        let first_word = line.pop_front().unwrap();
        let params = {
            if line.len() > 0 {
                Some(line)
            } else {
                None
            }
        };
        Instruction {
            first_word,
            params,
        }
    }
}

// intermediary struct for parsing line into vertex
// exists because all of the params are optional
#[derive(Clone, Debug, PartialEq)]
pub struct G1 {
    pub x: Option<f32>,
    pub y: Option<f32>,
    pub z: Option<f32>,
    pub e: Option<f32>,
    pub f: Option<f32>,
}

impl G1 {
    fn build(params: VecDeque<Word>) -> G1 {
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
            x,
            y,
            z,
            e,
            f,
        }
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

// remove whitespace and comments and read string into vec of chars
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

fn check_line(line: &Vec<char>) -> bool {
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
fn split_line(mut line: Vec<char>) -> Vec<Word> {
    // reverse the line so that we can pop from the front
    line.reverse();
    let mut temp: Vec<char> = Vec::new();
    let mut out = Vec::new();
    temp.push(line.pop().unwrap());
    while line.len() > 0 {
        while line.len() > 0 && !line[0].is_ascii_alphabetic() {
            temp.push(line.pop().unwrap());
        }
        if temp.len() > 1 {
            out.push(Word(
                temp[0],
                temp[1..].iter().collect::<String>().parse::<f32>().unwrap(),
                None,
            ));
        }
        if line.len() > 0 {
            temp = vec![line.pop().unwrap()];
        }
    }
    out
}

fn read_line(line: Vec<char>) -> Vec<Word> {
    // here i rly want to check if there is a character that doesn't make sense
    // and just pass the raw string through if that's the case
    if !check_line(&line) {
        if line.len() > 1 {
            let word = Word('X', NEG_INFINITY, Some(line.iter().collect()));
            return Vec::from([word]);
        } else { // don't like this
            let word = Word('X', NEG_INFINITY, None);
            return Vec::from([word]);
        }
    }
    split_line(line)
}
fn build_lines(path: &str) -> Vec<Line> {
    // tries reading the input as raw g-code if file parse error,
    // this is really just for running the tests
    let lines = match parse_file(path) {
        Ok(str) => str,
        Err(_) => parse_str(path),
    };
    assert!(lines.len() > 0);

    // collect the lines into a reversed vec, so the lines can be popped in order
    let mut lines: Vec<String> = lines.into_iter().collect();
    lines.reverse();

    let mut out = Vec::new();
    let mut g1_moves = 0;

    while lines.len() > 0 {
        // pop the next line off the vec until it is empty 
        let line = lines.pop().unwrap();
        // remove all comments and whitespace
        let line = clean_line(&line);
        // skip empty lines (probably from lines that are only comment)
        if line.len() < 1 {
            continue;
        }

        // if the first character of the line is not an ASCII letter,
        // it is not gcode and can just be copied as a string
        // right now these lines will probably be trimmed since they are all comments

        if !line[0].is_ascii_alphabetic() {
            out.push(Line::Raw(line.iter().collect()));
            continue;
        }

        // parse the line into gcode word struct
        let line = read_line(line);


        



}
pub fn build_nodes(path: &str) -> Result<NodeList, Box<dyn std::error::Error>> {
    // tries reading the input as raw g-code if file parse error,
    // this is really just for running the tests
    let lines = match parse_file(path) {
        Ok(str) => str,
        Err(_) => parse_str(path),
    };
    assert!(lines.len() > 0);
    // collect the lines into a double ended queue
    let mut lines: VecDeque<String> = lines.into_iter().collect();

    // initialize the g1 move counter at 0
    let mut g1_moves = 0;

    let mut out = NodeList::new();
    let mut last_state = Pos::unhomed();

    while lines.len() > 0 {
        // pop the next line off the vecdeque until it is empty 
        let line = lines.pop_front().unwrap();
        // remove all comments and whitespace
        let line = clean_line(&line);
        // skip empty lines (probably from lines that are only comment)
        if line.len() < 1 {
            continue;
        }
        // parse the line into gcode words (currently storing the instruction numbers and paramters both as floats
        // might want to change instruction number to int, but sometimes a decimal is used in the instruction in prusa gcode )
        let mut line = read_line(line);
        // throw away logical line numbers
        while let Some(Word('N', _, _)) = line.front() {
            let _ = line.pop_front();
        }
        // match against the first gcode word in the line, only checking for
        // homing and move commands to correctly build the vertices
        match line.front() {
            Some(Word(letter, number, _params)) => {
                let num = number.round() as i32;
                match (letter, num) {
                    ('G', 28) => {
                        // if the homing node points to a previous extrusion move node, something is wrong
                        assert!(g1_moves == 0, "homing after moves have been read");
                        let vrtx = Vertex {
                            id: 0,
                            label: Label::Home,
                            to: Pos::home(),
                            from: Pos::unhomed(),
                            prev: None,
                        };
                        last_state = vrtx.to;
                        let node = Node::Vertex(vrtx);
                        out.push_back(node);
                    }
                    ('G', 1) => {
                        g1_moves += 1;
                        let g1 = G1::build(line, g1_moves);
                        // the Vertex build method pushes the vertex onto the NodeList
                        // and returns a pointer to the tail of the list
                        let tail = unsafe {
                            Vertex::build(
                            g1_moves,
                            &mut out,
                            g1,)
                        };
                        last_state = unsafe { (*tail).to() };
                    }
                    _ => {
                        let node = Node::NonMove(Line::build(line), last_state);
                        out.push_back(node);
                    },
                }
            }
            _ => {}
        }
    }
    Ok(out)
}
