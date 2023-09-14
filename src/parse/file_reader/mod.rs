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
    let mut pre_print = true;
    let mut g1_moves = 0;
    let mut temp_lines = VecDeque::new();
    // prev holds a raw mut pointer to the to position of the previous vertex
    let mut prev: Option<*mut Vertex> = None;
    for line in lines {
        // remove all comments and whitespace
        let line = clean_line(&line);
        // skip empty lines (probably from lines that are only comments)
        if line.len() < 1 {
            continue;
        }
        // parse the line into a vecdeque of words (currently storing the instruction numbers and paramters both as floats
        // might want to change instruction number to int, but sometimes a decimal is used in the instruction in prusa gcode )
        let mut line = read_line(line);
        if let Some(Word('N', _, _)) = line.front() {
            let _ = line.pop_front();
        }

        if let Some(Word(letter, val, params)) = line.front() {
            let val = *val as i32;
            match (letter, val) {
                ('G', 28) => {
                    // if the homing node points to a previous extrusion move node, something is wrong
                    assert!(prev.is_none(), "homing from previously homed state");
                    let vrtx = Vertex {
                        id: 0,
                        label: Label::Home,
                        to: Pos::home(),
                        from: Pos::unhomed(),
                        prev,
                    };
                    let node = Node::Vertex(vrtx);
                    temp_lines.push_back(node);
                    if let Node::Vertex(v) = temp_lines.back_mut().unwrap() {
                        // prev now points to the homing node, this shows that it is the first extrusion move
                        prev = Some(v as *mut Vertex);
                    } else {
                        panic!("failed to read last pushed node")
                    }
                },
                ('G', 1) => {
                    // if prev is None, it means no homing command has been read
                    assert!(&prev.is_some(), "g1 move from unhomed state");
                    g1_moves += 1;
                    let g1 = G1::build(line, g1_moves);
                    let vrtx = unsafe {Vertex::build(g1_moves, prev, g1)};
                    let node = Node::Vertex(vrtx);
                    temp_lines.push_back(node);
                    if let Some(Node::Vertex(v)) = temp_lines.back_mut() {
                        prev = Some(v as *mut Vertex);
                    } else {
                        panic!("failed to read pointer to last vertex");
                    }
                },
                _ => {
                    let node = Node::NonMove(Line::build(line));
                    temp_lines.push_back(node);
                }
            }

        }
            
    }
Ok(temp_lines)
}