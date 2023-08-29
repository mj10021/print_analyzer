use std::collections::{linked_list::CursorMut, LinkedList, VecDeque};
use std::f32::NEG_INFINITY;

use self::feature_finder::Feature;

pub mod feature_finder;

#[derive(Clone, Debug, PartialEq)]
pub struct Word(pub char, pub f32, pub Option<String>);

#[derive(Clone, Debug, PartialEq)]
pub enum Line {
    Instruction(Instruction),
    Raw(String),
}
impl Line {
    fn build(mut line: VecDeque<Word>, g1_count: Option<i32>) -> Line {
        let Word(letter, num, _) = line[0];
        let num = num as i32;
        match (letter, num, letter.is_ascii_alphabetic()) {
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

#[derive(Clone, Debug, PartialEq)]
pub struct Instruction {
    pub first_word: Word,
    pub params: Option<VecDeque<Word>>,
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

#[derive(Clone, Debug, PartialEq)]
pub struct G1 {
    // the g1 move id is 1-indexed
    pub move_id: i32,
    pub x: Option<f32>,
    pub y: Option<f32>,
    pub z: Option<f32>,
    pub e: Option<f32>,
    pub f: Option<f32>,
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
    pub fn ann_i(&self) -> usize {
        self.move_id as usize - 1
    }
}
#[derive(Clone, Copy, Debug)]
struct Pos {
    // abs x, y, z and rel e
    x: f32,
    y: f32,
    z: f32,
    e: f32,
    f: f32,
}
impl Pos {
    fn to_tup(&self) -> (f32, f32, f32) {
        (self.x, self.y, self.z)
    }
    fn unhomed() -> Pos {
        Pos {
            x: NEG_INFINITY,
            y: NEG_INFINITY,
            z: NEG_INFINITY,
            e: NEG_INFINITY,
            f: NEG_INFINITY,
        }
    }
    fn home() -> Pos {
        Pos {
            x: 0.0,
            y: 0.0,
            z: 0.0,
            e: 0.0,
            f: 0.0,
        }
    }
    fn build(prev: &Pos, g1: &G1) -> Pos {
        if pre_home(*prev) {
            panic!("g1 move from unhomed state")
        }
        Pos {
            x: g1.x.unwrap_or(prev.x),
            y: g1.y.unwrap_or(prev.y),
            z: g1.z.unwrap_or(prev.z),
            e: g1.e.unwrap_or(0.0),
            f: g1.f.unwrap_or(prev.f),
        }
    }
}
fn pre_home(p: Pos) -> bool {
    if p.x == NEG_INFINITY || p.y == NEG_INFINITY || p.z == NEG_INFINITY || p.e == NEG_INFINITY {
        return true;
    }
    false
}
#[derive(Clone)]
pub struct Vertex {
    id: i32,
    prev: Option<*mut Vertex>,
    from: Pos,
    to: Pos,
}
impl Vertex {
    fn dist(&self) -> f32 {
        ((self.to.x - self.from.x).powf(2.0)
            + (self.to.y - self.from.y).powf(2.0)
            + (self.to.z - self.from.z).powf(2.0))
        .sqrt()
    }
    unsafe fn translate(&mut self, dx: f32, dy: f32, dz: f32) {
        assert!(self.prev.is_some());
        let prev = self.prev.unwrap();
        let (fx, fy, fz) = (*prev).from.to_tup();
        let (tx, ty, tz) = (*prev).to.to_tup();
        let dxi = tx - fx;
        let dyi = ty - fy;
        let dzi = tz - fz;
        let di = (dxi.powf(2.0) + dyi.powf(2.0) + dzi.powf(2.0)).sqrt();
        (*prev).to.x += dx;
        (*prev).to.y += dy;
        (*prev).to.z += dz;
        self.from.x += dx;
        self.from.y += dy;
        self.from.z += dz;
        let (tx, ty, tz) = (*prev).to.to_tup();
        let dxf = tx - fx;
        let dyf = ty - fy;
        let dzf = tz - fz;
        let df = (dxf.powf(2.0) + dyf.powf(2.0) + dzf.powf(2.0)).sqrt();
        let scale = df / di;
        (*prev).to.e *= scale;
        let di = self.dist();
        let df = self.dist();
        let scale = df / di;
        self.to.e *= scale;
    }
    fn mod_flow(&mut self, coeff: f32) {
        self.to.e *= coeff;
    }
}
#[test]
fn tran_test() {
    let test = "G28\ng1x1e1\ng1x2e1\ng1x3e1\n";
    let mut gcode = Parsed::build(test).expect("failed to parse");
    let mut cursor = gcode.nodes.cursor_front_mut();
    cursor.move_next();
    cursor.move_next();
    if let Node::Vertex(v) = cursor.current().unwrap() {
        unsafe {
            v.translate(0.0, 1.0, 0.0);
        }
    }
    panic!("{:?}", gcode);
}
impl std::fmt::Debug for Vertex {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.debug_struct("Point")
            .field("id", &self.id)
            .field("from", &self.from)
            .field("to", &self.to)
            .finish()
    }
}
// Nodes are designed to contain all of the information needed to generate g-gcode
// Each node represents one line of g-code
#[derive(Debug)]
pub enum Node {
    Vertex(Vertex),
    NonMove(Line),
}
// Parsed struct contains a linked list of nodes and any other print information
// needed to correctly emit g-code
#[derive(Debug)]
pub struct Parsed {
    pub nodes: LinkedList<Node>,
    pub annotations: std::collections::HashMap<i32, Annotation>,
    rel_xyz: bool,
    rel_e: bool,
}
impl Parsed {
    fn build(path: &str) -> Result<Parsed, Box<dyn std::error::Error>> {
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
        // prev holds a raw mut pointer to the to position of the previous vertex
        let mut prev: Option<*mut Vertex> = None;
        for line in lines {
            let line = clean_line(&line);
            if line.len() < 1 {
                continue;
            }
            let mut line = read_line(line);
            if line.len() < 1 {
                continue;
            }
            // just throw away any logical line count bc i dont't care
            if let Some(&Word('N', _, _)) = line.front() {
                let _ = line.pop_front();
            }
            if line.front() == Some(&Word('G', 28.0, None)) {
                assert!(prev.is_none(), "homing from previously homed state");
                let vrtx = Vertex {
                    id: 0,
                    to: Pos::home(),
                    from: Pos::unhomed(),
                    prev,
                };
                let node = Node::Vertex(vrtx);
                parsed.push_back(node);
                if let Node::Vertex(v) = parsed.back_mut().unwrap() {
                    prev = Some(v as *mut Vertex);
                } else {
                    panic!("failed to read last pushed node")
                }
                continue;
            } else if line.front() == Some(&Word('G', 1.0, None)) {
                assert!(&prev.is_some(), "g1 move from unhomed state");
                g1_moves += 1;
                let g1 = G1::build(line, g1_moves);
                unsafe {
                    // this seems wrong
                    let vrtx = Vertex {
                        id: g1_moves,
                        to: Pos::build(&(*(prev.unwrap())).to, &g1),
                        from: (*(prev.unwrap())).to.clone(),
                        prev,
                    };

                    let node = Node::Vertex(vrtx);
                    parsed.push_back(node);
                    if let Some(Node::Vertex(v)) = parsed.back_mut() {
                        prev = Some(v as *mut Vertex);
                    } else {
                        panic!("failed to read last pushed node")
                    }
                }
            } else {
                let Word(letter, num, _) = line[0];
                let num = num as i32;
                // here we check against all the non-move commands that we care abt
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
                let node = Node::NonMove(Line::build(line, None));
                parsed.push_back(node);
            }
        }
        Ok(Parsed {
            nodes: parsed,
            rel_xyz,
            rel_e,
            annotations: std::collections::HashMap::new(),
        })
    }
    fn first_move_id(&self) -> i32 {
        let min_x = 5.0;
        let min_y = 5.0;
        for node in self.nodes {
            if let Node::Vertex(v) = node {
                if v.to.x > min_x && v.to.y > min_y {
                    return v.id;
                }
            }
        }
        -1
    }
    
    fn delete() {}
    fn insert() {}
}
#[derive(Copy, Clone, Debug, PartialEq)]
pub enum Label {
    Uninitialized,
    FirstG1,
    PrePrintMove,
    TravelMove,
    ExtrusionMove,
    LiftZ,
    LowerZ,
    MysteryMove,
    Retraction,
    Wipe,
    FeedrateChangeOnly,
}
#[derive(Copy, Clone, Debug, PartialEq)]
pub struct Annotation {
    pub label: Label,
    pub feature: Option<Feature>,
    dx: f32,
    dy: f32,
    dz: f32,
    de: f32,
    dt: f32, // calc time from feedrate
    ex_width_mm: f32,
}
impl Annotation {
    pub fn new() -> Annotation {
        Annotation {
            label: Label::Uninitialized,
            feature: None,
            dx: NEG_INFINITY,
            dy: NEG_INFINITY,
            dz: NEG_INFINITY,
            de: NEG_INFINITY,
            dt: NEG_INFINITY,
            ex_width_mm: 0.0,
        }
    }
    fn get_time(&self, feedrate: f32) -> f32 {
        // because all axes move at the same time, use the longest axis distance to calculate time
        let max_axis_dist =
            (self.dx.abs()).max(self.dy.abs().max(self.dz.abs().max(self.de.abs())));
        return (max_axis_dist / feedrate) * 60.0;
    }
    fn get_ex_width(&self, layer_height: f32) -> f32 {
        let move_dist = (self.dx.powf(2.0) + self.dy.powf(2.0) + self.dz.powf(2.0)).sqrt();
        let in_area = ((1.75/2.0) * std::f32::consts::PI).powf(2.0);
        let ex = (in_area * self.de) / move_dist;
        return ex / layer_height;
    }
    pub fn build(gcode: &Parsed) -> std::collections::HashMap<i32, Annotation> {
        let mut ann = std::collections::HashMap::new();
        let first_move = gcode.first_move_id();

        for node in gcode.nodes.iter() {
            match node {
                Node::Vertex( Vertex { id, prev, from, to  }) => {
                    let mut a =  Annotation {
                        label: Label::Uninitialized,
                        feature: None,
                        dx: to.x - from.x,
                        dy: to.y - from.y,
                        dz: to.z - from.z,
                        de: to.e,
                        dt: 0.0,
                        ex_width_mm: 0.0,
                    };
                    a.ex_width_mm = a.get_ex_width(0.2);
                    a.dt = a.get_time(to.f);
                    a.label = {
                        if *id == 1 {
                            Label::FirstG1
                        } else if *id < first_move {
                            Label::PrePrintMove
                        } else if a.de > 0.0 {
                            Label::ExtrusionMove
                        } else if a.dz > 0.0 {
                            Label::LiftZ
                        } else if a.dz < 0.0 {
                            Label::LowerZ
                        } else if a.dx != 0.0 || a.dy != 0.0 {
                            Label::TravelMove
                        } else if a.de < 0.0 {
                            if a.dx > 0.0 || a.dy > 0.0 {
                                Label::Wipe
                            } else {
                                Label::Retraction
                            }
                        } else if from.f !=  to.f {
                            Label::FeedrateChangeOnly
                        } else {
                            panic!("{:?}\r\n\r\n{:?}", to, from)
                        } //{ Label::MysteryMove }
                    };
                    ann.insert(id.clone(), a);
                },
                _ => (),
            }
        }
        ann
    }
}
fn subdivide(cur: &mut CursorMut<Node>, count: i32) {
        assert!(count > 1);
        // take a copy of the value of the current node
        let end =  match cur.current() {
            Some(Node::Vertex(v)) => v.clone(),
            _ => panic!("subdivide called from non-move node"),
        };
        let start = end.prev.unwrap();
        let x_seg = (end.to.x - end.from.x) / count as f32;
        let y_seg = (end.to.y - end.from.y) / count as f32;
        let z_seg = (end.to.z - end.from.z) / count as f32;
        let mut prev = Some(start);
        for i in 1..count {
            let v = Vertex {
                id: -1,
                prev,
                from: Pos {
                    x: end.from.x,
                    y: end.from.y,
                    z: end.from.z,
                    e: end.from.e / count as f32,
                    f: end.from.f,
                },
                to: Pos {
                    x: end.from.x + x_seg * i as f32,
                    y: end.from.y + y_seg * i as f32,
                    z: end.from.z + z_seg * i as f32,
                    e: end.from.e / count as f32,
                    f: end.from.f,
                },
            };
            cur.insert_before(Node::Vertex(v));
            prev = match cur.peek_prev() {
                Some(Node::Vertex(v)) => Some(v as *mut Vertex),
                _ => panic!("failed to insert vertex"),
            }
        }
        // now edit the original node
        let end =  match cur.current() {
            Some(Node::Vertex(v)) => v,
            _ => panic!("subdivide called from non-move node"),
        };
        end.prev = prev;
        end.from = unsafe { (*(end.prev.unwrap())).to.clone() };
    }
#[test]
fn sub_test() {
    let mut gcode = Parsed::build("G28\nG1x1e1\ng1x2e1\ng1x3e1\ng1x4e1\n").expect("asdf");
    let mut cur = gcode.nodes.cursor_front_mut();
    let mut c = 0;
    while c < 2 {
        if let Some(Node::Vertex(_)) = cur.current() {
            c += 1;
        }
        cur.move_next();
        assert!(cur.peek_next().is_some());
    }
    subdivide(&mut cur, 5);
    panic!("{:?}", gcode);
}
fn delete(cur: &mut CursorMut<Node>) {
    if let Some(Node::Vertex(v)) = cur.current() {
        let prev = v.prev;
        let _ = cur.remove_current();
        // keep moving forward until reaching move node or end of list
        while let Some(Node::NonMove(_)) = cur.current() {
            cur.move_next();
        }
        if let Some(Node::Vertex(v)) = cur.current() {
            v.prev = prev;
        }
    }
    else {
        cur.remove_current();
    }
}
fn insert_g1(cur: &mut CursorMut<Node>, g1: G1) {
    // insert before current node
    let Some(Node::Vertex(curr)) = cur.current() else {
        panic!("insert_g1 called from non-move node");
    };
    let prev = curr.prev.unwrap();
    let v = Vertex {
        id: -1,
        prev: Some(prev),
        from: unsafe{ (*prev).to }.clone(),
        to: Pos::build(&unsafe{ (*prev).to }, &g1),
    };
    curr.from = v.to.clone();
    cur.insert_before(Node::Vertex(v));
    let new_prev = match cur.peek_prev() {
        Some(Node::Vertex(v)) => Some(v as *mut Vertex),
        _ => panic!("failed to insert vertex"),
    };
    let Some(Node::Vertex(curr)) = cur.current() else {
        panic!("insert_g1 called from non-move node");
    };
    curr.prev = new_prev;
}
#[test]
fn ins_test() {
    let mut gcode = Parsed::build("G28\nG1x1e1\ng1x2e1\ng1x3e1\ng1x4e1\n").expect("asdf");
    let mut cur = gcode.nodes.cursor_front_mut();
    cur.move_next();
    cur.move_next();
    cur.move_next();
    let g = G1 {
        move_id: -1,
        x: Some(0.0),
        y: Some(100.0),
        z: Some(0.0),
        e: Some(100.0),
        f: Some(0.0),
    };
    insert_g1(&mut cur, g);
    panic!("{:?}", gcode);
}


#[test]
#[should_panic]
fn no_home_test() {
    let input = "G1 X1 Y1 Z1 E1\n";
    let _ = Parsed::build(input).expect("failed to parse");
}
#[test]
#[should_panic]
fn double_home() {
    let _ = Parsed::build("G28\nG28\nG1 x1\ng1y1\ng1e2.222\ng1z1\n").expect("failed to parse");
}
#[test]
fn parsed_test() {
    let parsed = Parsed::build("G28\nG1 x1\ng1y1\ng1e2.222\ng1z1\n").expect("failed to parse");
    panic!("{:?}", parsed);
}
pub trait Emit {
    fn emit(&self) -> String;
    fn debug_emit(&self) -> String {
        self.emit()
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
impl Emit for Line {
    fn emit(&self) -> String {
        match self {
            Line::Instruction(ins) => ins.emit(),
            Line::Raw(string) => string.clone(),
        }
    }
}
impl Emit for Pos {
    fn emit(&self) -> String {
        assert!(self.x.is_finite() && !self.x.is_nan());
        assert!(self.y.is_finite() && !self.y.is_nan());
        assert!(self.z.is_finite() && !self.z.is_nan());
        assert!(self.e.is_finite() && !self.e.is_nan());
        assert!(self.f.is_finite() && !self.f.is_nan());

        format!(
            "X{} Y{} Z{} E{} F{}\n",
            self.x, self.y, self.z, self.e, self.f
        )
    }
}
impl Emit for Vertex {
    fn emit(&self) -> String {
        let out = String::from("G1 ");
        if self.from.x != self.to.x {
            assert!(self.to.x.is_finite() && !self.to.x.is_nan());
            out += &format!("X{} ", self.to.x);
        }
        if self.from.y != self.to.y {
            assert!(self.to.y.is_finite() && !self.to.y.is_nan());
            out += &format!("Y{} ", self.to.y);
        }
        if self.from.z != self.to.z {
            assert!(self.to.z.is_finite() && !self.to.z.is_nan());
            out += &format!("Z{} ", self.to.z);
        }
        if self.to.e != 0.0 {
            assert!(self.to.e.is_finite() && !self.to.e.is_nan());
            out += &format!("E{} ", self.to.e);
        }
        if self.from.f != self.to.f {
            assert!(self.to.f.is_finite() && !self.to.f.is_nan());
            out += &format!("F{} ", self.to.f);
        }
        out
    }
}
impl Emit for Node {
    fn emit(&self) -> String {
        match self {
            Node::Vertex(v) => v.emit(),
            Node::NonMove(line) => line.emit(),
        }
    }
}
impl Emit for Parsed {
    fn emit(&self) -> String {
        let mut out = String::new();
        for node in &self.nodes {
            out += &node.emit();
        }
        out + "\n"
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

const TEST_INPUT: &str = "G28\nnG1 X0 Y0 Z0 E0 F0\n
G1 X10\n
G1 Z10\n
M324 S2345 Y245\n
G1 E10\n
;G28  home all without mesh bed level\n
G29 ; mesh bed leveling \n
M204 T2500 ; restore travel acceleration\n
M104 S220 ; set extruder temp\n
G92 E0\n
G1 X5\n
asdfasdfasdf\n
asdfafasdf\n
";

const TEST_G1_ONLY: &str = "G28\n\
                            G1 X0 Y0 Z0 E0 F0\n\
                            G1 X10\n\
                            G1 Z10\n\
                            G1 E10\n\
                            G1 x1e5\n\
                            G1 X5\n";