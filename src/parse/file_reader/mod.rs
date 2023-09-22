use super::*;
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
pub fn build_nodes(path: &str) -> Result<VecDeque<Node>, Box<dyn std::error::Error>> {
    // tries reading the input as raw g-code if file parse error,
    // this is really just for running the tests
    let lines = match parse_file(path) {
        Ok(str) => str,
        Err(_) => parse_str(path),
    };
    assert!(lines.len() > 0);
    let mut lines: VecDeque<String> = lines.into_iter().collect();
    let mut g1_moves = 0;
    let mut temp_lines = VecDeque::new();
    // prev holds a raw mut pointer to the to position of the previous vertex
    let mut prev: LastVertex = None;
    while lines.len() > 0 {
        let line = lines.pop_front().unwrap();
        // remove all comments and whitespace
        let line = clean_line(&line);
        // skip empty lines (probably from lines that are only comments)
        if line.len() < 1 {
            continue;
        }
        // parse the line into a vecdeque of words (currently storing the instruction numbers and paramters both as floats
        // might want to change instruction number to int, but sometimes a decimal is used in the instruction in prusa gcode )
        let mut line = read_line(line);
        // throw away logical line numbers
        while let Some(Word('N', _, _)) = line.front() {
            let _ = line.pop_front();
        }
        match line.front() {
            Some(Word(letter, number, _params)) => {
                let num = number.round() as i32;
                match (letter, num) {
                    ('G', 28) => {
                        // if the homing node points to a previous extrusion move node, something is wrong
                        assert!(g1_moves == 0, "homing after moves have been read");
                        let vrtx = Vertex {
                            id: &0,
                            label: Label::Home,
                            to: Pos::home(),
                            from: Pos::unhomed(),
                            prev: None,
                        };
                        let node = Node::Vertex(vrtx);
                        temp_lines.push_back(node);
                    }
                    ('G', 1) => {
                        g1_moves += 1;
                        let g1 = G1::build(line, g1_moves);
                        let vrtx = Vertex::build(
                            g1_moves,
                            &mut prev,
                            g1,
                        );
                        
                        let node = Node::Vertex(vrtx);
                        temp_lines.push_back(node);
                    }
                    _ => {
                        let node = Node::NonMove(Line::build(line));
                        temp_lines.push_back(node);
                    },
                }
            }
            _ => {}
        }
    }
    Ok(temp_lines)
}
