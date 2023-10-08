// Words are the base unit of gcode, the first word of a command is a letter
// followed by an int or float depending on the context
#[derive(Clone, Debug, PartialEq)]
pub struct Word(pub char, pub f32);
impl Word {
    fn from(s: String) -> Word {
        let (letter, nums) = s.split_at(1);
        let letter = letter.chars().next().unwrap();
        let nums = nums
            .parse::<f32>()
            .expect(&format!("failed to parse float parameter: `{}`", nums));
        assert!(
            letter.is_ascii_alphabetic(),
            "{} is invalid first character\n{}",
            letter,
            s
        );
        Word(letter, nums)
    }
}

// the Instruction struct splits off the command (first) word from a line,
// and stores the parameters as a vec of words
#[derive(Clone, Debug, PartialEq)]
pub struct Instruction {
    pub first_word: Word,
    pub params: Option<Vec<Word>>,
}

impl Instruction {
    fn build(mut line: Vec<Word>) -> Instruction {
        // reverse line to maintain order while popping
        line.reverse();
        let first_word = line.pop().unwrap();
        // now that the first word is removed, reverse the line again
        line.reverse();
        let params = {
            if line.len() > 0 {
                Some(line)
            } else {
                None
            }
        };
        Instruction { first_word, params }
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
    fn build(params: Vec<Word>) -> G1 {
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
// enum to process and store the inputted lines of gcode, with structs
// to handle specific commands as necessary, with the option to just keep the
// line as a raw string if it can't be parsed
#[derive(Clone, Debug, PartialEq)]
pub enum Line {
    G1(G1),
    G28,
    M82,
    M83,
    G90,
    G91,
    OtherInstruction(Instruction),
    Raw(String),
}
impl Line {
    fn build(mut line: Vec<Word>) -> Line {
        let Word(letter, num) = line[0];
        if num == std::f32::NEG_INFINITY {
            let mut out = String::from(letter);
            for Word(letter, _) in line {
                out.push(letter);
            }
            return Line::Raw(out); 
        }
        let num = num.round() as i32;
        match (letter, num) {
            // throw away logical line numbers
            ('N', _) => {
                let _ = line.remove(0);
                Line::build(line)
            }
            ('G', 1) => Line::G1(G1::build(line)),
            ('G', 28) => Line::G28,
            ('M', 82) => Line::M82,
            ('M', 83) => Line::M83,
            ('G', 90) => Line::G90,
            ('G', 91) => Line::G91,
            (_, _) => Line::OtherInstruction(Instruction::build(line)),
        }
    }
}

// opens a gcode file and returns 
// a Vec of Line for each line in the file
pub fn parse_file(path: &str) -> Result<Vec<Line>, Box<dyn std::error::Error>> {
    let out = String::from_utf8(std::fs::read(path)?)
        .unwrap()
        .lines()
        .map(|s| clean_line(s))
        .filter(|s| s.len() > 0)
        .map(|s| split_line(s))
        .map(|v| Line::build(v))
        .collect();
    Ok(out)
}

// remove whitespace and comments and make everything uppercase
fn clean_line(line: &str) -> String {
    line.split(';')
        .next()
        .unwrap()
        .chars()
        .filter(|&c| c != ' ' && c != '\n' && c != '\r')
        .map(|c| c.to_ascii_uppercase())
        .collect::<String>()
}

// splits a valid gcode line into a vec of gcode words
fn split_line(line: String) -> Vec<Word> {
    // HACK: checks if line should be passed for raw string line
    // and makes a Word for each char in the string
    if line.chars().filter(|&c| !c.is_ascii_alphanumeric() && c != '-' && c != '.').collect::<Vec<_>>().len() > 0 {
        let mut out = Vec::new();
        for char in line.chars() {
            out.push(Word(char, std::f32::NEG_INFINITY));
        }
        return out;
    }
    line
        .chars()
        .rev()
        .collect::<String>()
        .split_inclusive(|c: char| c.is_ascii_alphabetic())
        .map(|s| s.chars().rev().collect::<String>())
        .rev()
        .map(|s| Word::from(s))
        .collect()
}

#[cfg(test)]
#[test]

fn read_file() {
    let file = "test.gcode";
    let x = parse_file(file).expect("asdf");
    let mut test = String::new();
    for i in 0..100 {
        test += &(format!("{:?}\n", x[i]));
    }
    panic!("{:?}", test);
}
