use std::collections::VecDeque;


struct Word(char, f32);

struct Instruction<'a> {
    letter: char,
    val: f32,
    params: Option<VecDeque<Word>>,
    prev: Option<&'a Instruction<'a>>,
    next: Option<&'a Instruction<'a>>,
}

impl<'a> Instruction<'a> {
    fn build(line: VecDeque<Word>, tail: Option<&'a Instruction<'a>>) -> Instruction<'a> {
        let Word(letter, val) = line.pop_front().unwrap();
        let mut node = Instruction{ letter, val, params: Some(line), prev: None, next: None };
        if tail.is_none() {
            return node;
        }


        node.prev = Some(&tail.unwrap());
        tail.unwrap().next = Some(&node);
        
        node
    }
}

struct ParsedPrint<'a> {
    head: Instruction<'a>,
    tail: Instruction<'a>,
}

impl<'a> ParsedPrint<'a> {
    fn build(path: &str) -> ParsedPrint<'a>{
        let lines = parse_file(path);
        let (first_line, lines) = (&lines[0], &lines[1..]);
        let first_line = read_line(&clean_line(first_line));
        let head = Instruction::build(first_line, None);
        let tail = head;
        for line in lines {
            let line = clean_line(line);
            let line = read_line(&line);
            let ins = Instruction::build(line, Some(&tail));
            tail = ins;
        }
        ParsedPrint { head, tail }
    }
}


fn parse_file(path: &str) -> Vec<String> {
    String::from_utf8(std::fs::read(path).unwrap())
        .unwrap()
        .split("/n")
        .map(|s| s.split_once(';').unwrap().0) // ignore any ';' comments
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
            temp_line.push(c);
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

