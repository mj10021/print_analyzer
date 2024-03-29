use std::collections::{LinkedList, VecDeque};
use std::f32::{EPSILON, NEG_INFINITY};

pub mod file_reader;

#[derive(Clone, Debug, PartialEq)]
pub struct Word(pub char, pub f32, pub Option<String>);

#[derive(Clone, Debug, PartialEq)]
pub enum Line {
    Instruction(Instruction),
    Raw(String),
}
impl Line {
    fn build(mut line: VecDeque<Word>) -> Line {
        let Word(letter, num, _) = line[0];
        let num = num.round() as i32;
        match (letter, num, letter.is_ascii_alphabetic()) {
            ('N', _, _) => {
                let _ = line.pop_front();
                let _ = line.pop_front();
                Line::build(line)
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

// intermediary struct for parsing line into vertex
// exists because all of the params are optional
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
// state tracking struct for vertices
#[derive(Clone, Copy, Debug, PartialEq)]
pub struct Pos {
    // abs x, y, z and rel e
    pub x: f32,
    pub y: f32,
    pub z: f32,
    pub e: f32,
    pub f: f32,
}
impl Pos {
    pub fn to_tup(&self) -> (f32, f32, f32) {
        (self.x, self.y, self.z)
    }
    pub fn unhomed() -> Pos {
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
            f: NEG_INFINITY, // this will not emit if a feedrate is never set
        }
    }
    pub fn build(prev: &Pos, g1: &G1) -> Pos {
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
    pub fn dist(&self, p: &Pos) -> f32 {
        ((self.x - p.x).powf(2.0) + (self.y - p.y).powf(2.0) + (self.z - p.z).powf(2.0)).sqrt()
    }
}
fn pre_home(p: Pos) -> bool {
    if p.x == NEG_INFINITY || p.y == NEG_INFINITY || p.z == NEG_INFINITY || p.e == NEG_INFINITY {
        return true;
    }
    false
}
#[derive(Clone, PartialEq)]
pub struct Vertex {
    pub id: i32,
    pub label: Label,
    // this is a pointer to the previous extrusion move node
    pub prev: Option<&mut Vertex>,
    pub from: Pos,
    pub to: Pos,
}

impl Vertex {
    unsafe fn build(g1_moves: i32, prev: Option<*mut Vertex>, g1: G1) -> Vertex {
        unsafe {
            let mut vrtx = Vertex {
                id: g1_moves,
                label: Label::Uninitialized,
                to: Pos::build(&(*(prev.unwrap())).to, &g1),
                from: (*(prev.unwrap())).to.clone(),
                prev,
            };
            vrtx.label();
            vrtx
        }
    }
    fn label(&mut self) {
        let dx = self.to.x - self.from.x;
        let dy = self.to.y - self.from.y;
        let dz = self.to.z - self.from.z;
        let de = self.to.e;
        self.label = {
            if self.to.x < 5.0 || self.to.y < 5.0 {
                Label::PrePrintMove
            } else if de > EPSILON {
                if dx.abs() + dy.abs() > EPSILON {
                    if dz.abs() > EPSILON {
                        Label::NonPlanarExtrusion
                    } else {
                        Label::PlanarExtrustion
                    }
                } else {
                    Label::DeRetraction
                }
            } else if dz.abs() > EPSILON {
                if dz < -1.0 * EPSILON {
                    Label::LowerZ
                } else {
                    Label::LiftZ
                }
            } else if de.abs() > EPSILON {
                if dx.abs() + dy.abs() > EPSILON {
                    Label::Wipe
                } else {
                    Label::Retraction
                }
            } else if dx.abs() + dy.abs() > EPSILON {
                Label::TravelMove
            } else if self.from.f != self.to.f {
                Label::FeedrateChangeOnly
            } else {
                Label::MysteryMove
            }
        };
    }
    pub fn dist(&self) -> f32 {
        ((self.to.x - self.from.x).powf(2.0)
            + (self.to.y - self.from.y).powf(2.0)
            + (self.to.z - self.from.z).powf(2.0))
        .sqrt()
    }
    pub fn flow(&self) -> f32 {
        assert!(self.extrusion_move());
        self.to.e / self.dist()
    }
    pub fn extrusion_move(&self) -> bool {
        self.label == Label::PlanarExtrustion || self.label == Label::NonPlanarExtrusion
    }
    pub fn change_move(&self) -> bool {
        self.label == Label::LiftZ || self.label == Label::Wipe || self.label == Label::Retraction
    }
    pub fn get_vector(&self) -> (f32, f32, f32) {
        let scale = self.dist();
        let mut dx = (self.to.x - self.from.x) / scale;
        let mut dy = (self.to.y - self.from.y) / scale;
        let mut dz = (self.to.z - self.from.z) / scale;
        if dx.is_infinite() || dx.is_nan() {
            dx = 0.0;
        }
        if dy.is_infinite() || dy.is_nan() {
            dy = 0.0;
        }
        if dz.is_infinite() || dz.is_nan() {
            dz = 0.0;
        }
        (dx, dy, dz)
    }
}
#[test]
fn tran_test() {
    use crate::transform::Translate;
    let test = "G28\ng1x1e1\ng1x2e1\ng1x3e1\n";
    let mut gcode = crate::read(test).expect("failed to parse");
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
#[derive(Clone, Debug, PartialEq)]
pub enum Node {
    Vertex(Vertex),
    NonMove(Line),
    Shape(Shape),
    Layer(Layer),
    LayerChange(Vec<Node>),
    ShapeChange(Vec<Node>),
    PrePrint(Vec<Node>),
}
impl Node {
    pub fn vertex(&self) -> &Vertex {
        match self {
            Node::Vertex(v) => v,
            _ => panic!("not a vertex"),
        }
    }
    pub fn vertex_mut(&mut self) -> &mut Vertex {
        match self {
            Node::Vertex(v) => v,
            _ => panic!("not a vertex"),
        }
    }
    pub fn shape(&self) -> &Shape {
        match self {
            Node::Shape(s) => s,
            _ => panic!("not a shape"),
        }
    }
    pub fn layer(&self) -> &Layer {
        match self {
            Node::Layer(l) => l,
            _ => panic!("not a layer"),
        }
    }
    pub fn layer_mut(&mut self) -> &mut Layer {
        match self {
            Node::Layer(l) => l,
            _ => panic!("not a layer"),
        }
    }
    fn pop_shape(nodes: &mut VecDeque<Node>) -> Node {
        let mut out = LinkedList::new();
        let mut len = 0.0;
        loop {
            let cur = nodes.pop_front();
            if cur.is_none() { break; }
            if let Some(Node::Vertex(v)) = &cur {
                if v.extrusion_move() {
                    len += v.dist();
                // if the vertex is no extrusion or feedrate change,
                // break and return the errant node to the front of the list
                } else if v.label != Label::FeedrateChangeOnly { 
                    nodes.push_front(cur.unwrap());
                    break;
                 }

            }
            out.push_back(cur.unwrap());

        }
        assert!(out.len() > 0, "no nodes popped");
        Node::Shape( Shape {
            nodes: out,
            closed: false,
            len,
        } )
    }
    fn pop_change(nodes: &mut VecDeque<Node>) -> Node {
        // the change should end before the first extrusion move
        // note: that does not count deretractions (e move with no x/y/z travel)
        // keep track of the first and last position of the sequence to decide 
        // if it should be labelled as a shape or a layer change
        let mut out = Vec::new();
        let mut start = None;
        let mut end = None;
        loop {
            let cur = nodes.pop_front();
            if cur.is_none() { break; }
            if let Some(Node::Vertex(v)) = &cur {
                if start.is_none() {
                    start = Some(v.from);
                }
                if v.extrusion_move() {

                    end = Some(v.to); 
                    nodes.push_front(cur.unwrap());
                    break;
                }
            }
            out.push(cur.unwrap());

        }
        assert!(out.len() > 0, "no nodes popped");
        if start.is_some() && end.is_some() && start.unwrap().z != end.unwrap().z {
            return Node::LayerChange(out);
        }
        Node::ShapeChange(out)
    }
    fn pop_preprint(nodes: &mut VecDeque<Node>) -> Node {
        let mut out = Vec::new();
        loop {
            let cur = nodes.pop_front();
            if cur.is_none() { break; }
            if let Some(Node::Vertex(v)) = &cur {
                if v.extrusion_move() && v.label != Label::PrePrintMove {
                    nodes.push_front(cur.unwrap());
                    break;
                }
            }
            out.push(cur.unwrap());
        }
        assert!(out.len() > 0, "no nodes popped");
        Node::PrePrint(out)
    }
}

#[derive(Clone, Debug, PartialEq)]
pub struct Shape {
    pub nodes: LinkedList<Node>,
    pub closed: bool,
    pub len: f32,
}
impl Shape {
    pub fn build_planar(gcode: &Parsed) -> Vec<Shape> {
        let mut out = Vec::new();
        let mut in_shape = false;
        let mut dist = 0.0;
        let mut curr_shape = LinkedList::new();
        for node in gcode.nodes.iter() {
            match node {
                Node::Vertex(v) => {
                    if !in_shape {
                        if v.extrusion_move()
                        {
                            curr_shape.push_back(node.clone());
                            in_shape = true;
                            dist += v.dist();
                        } else {
                            continue;
                        }
                    } else {
                        if v.extrusion_move()
                        {
                            dist += v.dist();
                            curr_shape.push_back(node.clone());
                        } else {
                            in_shape = false;
                            let closed = { 
                                if let Some(Node::Vertex(v)) = curr_shape.back() {
                                    if let Some(Node::Vertex(v2)) = curr_shape.front() {
                                        if v.to.dist(&v2.to) < std::f32::EPSILON {
                                            true;
                                        }
                                    }
                                }
                                false
                            };
                            let s = Shape {
                                nodes: curr_shape.clone(),
                                closed,
                                len: dist,
                            };
                            curr_shape = LinkedList::new();
                            out.push(s);
                            dist = 0.0;
                        }
                    }
                }
                _ => (),
            }
        }
        out
    }
    fn get_center(&self) -> (f32, f32, f32) {
        todo!();
    }
}
#[derive(Clone, Debug, PartialEq)]
pub struct Layer {
    pub id: i32,
    pub nodes: LinkedList<Node>,
}
impl Layer {    
}
// Parsed struct contains a linked list of nodes and any other print information
// needed to correctly emit g-code
#[derive(Debug, PartialEq)]
pub struct Parsed {
    pub nodes: LinkedList<Node>,
    rel_xyz: bool,
    rel_e: bool,
}
impl Parsed {
    pub fn build(mut nodes: VecDeque<Node>) -> Parsed {
        let mut rel_xyz = false;
        let mut rel_e = true;
        let mut parsed = LinkedList::new();
        parsed.push_back(Node::pop_preprint(&mut nodes));
        while nodes.front().is_some() {
            match nodes.front() {
                Some(Node::Vertex(v)) => {
                    if v.extrusion_move() || v.label == Label::FeedrateChangeOnly {
                        parsed.push_back(Node::pop_shape(&mut nodes));
                    } else if v.change_move() {
                        parsed.push_back(Node::pop_change(&mut nodes));
                    } else {
                        parsed.push_back(nodes.pop_front().unwrap());
                    }
                },
                Some(_) => {
                    if let Some(Node::NonMove(Line::Instruction(Instruction {first_word: Word(letter, number, ..), ..}))) = nodes.front() {
                        let number = number.round() as i32;
                        match (letter, number) {
                            ('G', 90) => { rel_xyz = false; }
                            ('G', 91) => { rel_xyz = true; }
                            ('M', 82) => { rel_e = false; }
                            ('M', 83) => { rel_e = true; }
                            _ => {}
                        }
                    }
                    parsed.push_back(nodes.pop_front().unwrap())},
                _ => {},
            }
        }
        Parsed {
            nodes: parsed,
            rel_xyz,
            rel_e,
        }
    }
    fn generate_layers(&mut self) {
        let mut new_nodes = LinkedList::new();
        let mut id = 1;
        let mut temp = LinkedList::new();

        for node in self.nodes.iter() {
            if let Node::LayerChange(_) = node {
                new_nodes.push_back(Node::Layer ( Layer {
                    id,
                    nodes: temp,
                }));
                temp = LinkedList::new();
                id += 1
            } else { temp.push_back(node.clone())}
        }
        self.nodes = new_nodes;
    }
    pub fn first_move_id(&self) -> i32 {
        let min_x = 5.0;
        let min_y = 5.0;
        for node in self.nodes.iter() {
            if let Node::Vertex(v) = node {
                if v.to.x > min_x && v.to.y > min_y {
                    return v.id;
                }
            }
        }
        -1
    }
    pub fn update_nodes(&mut self) {
        let mut id = 1;
        for node in self.nodes.iter_mut() {
            if let Node::Vertex(v) = node {
                v.id = id;
                id += 1;
                if v.prev.is_some() {
                    unsafe {
                        v.from = (*(v.prev.unwrap())).to.clone();
                    }
                }
                v.label();
            }
        }
    }

    fn delete() {}
    fn insert() {}
}
#[derive(Copy, Clone, Debug, PartialEq)]
pub enum Label {
    Uninitialized,
    Home,
    FirstG1,
    PrePrintMove,
    TravelMove,
    PlanarExtrustion,
    NonPlanarExtrusion,
    LiftZ,
    LowerZ,
    MysteryMove,
    Retraction,
    DeRetraction,
    Wipe,
    FeedrateChangeOnly,
}
#[derive(Copy, Clone, Debug, PartialEq)]
pub struct Annotation {
    pub label: Label,
    dx: f32,
    dy: f32,
    dz: f32,
    pub de: f32,
    dt: f32, // calc time from feedrate
    ex_width_mm: f32,
}
impl Annotation {
    pub fn new() -> Annotation {
        Annotation {
            label: Label::Uninitialized,
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
        let in_area = ((1.75 / 2.0) * std::f32::consts::PI).powf(2.0);
        let ex = (in_area * self.de) / move_dist;
        return ex / layer_height;
    }
    pub fn build(gcode: &Parsed) -> std::collections::BTreeMap<i32, Annotation> {
        let mut ann = std::collections::BTreeMap::new();
        let first_move = gcode.first_move_id();

        for node in gcode.nodes.iter() {
            match node {
                Node::Vertex(Vertex {
                    id,
                    label: Label::Uninitialized,
                    prev: _,
                    from,
                    to,
                }) => {
                    let mut a = Annotation {
                        label: Label::Uninitialized,
                        dx: to.x - from.x,
                        dy: to.y - from.y,
                        dz: to.z - from.z,
                        de: to.e,
                        dt: 0.0,
                        ex_width_mm: 0.0,
                    };
                    // FIXME: read layer heights from gcode for each layer
                    a.ex_width_mm = a.get_ex_width(0.2);
                    a.dt = a.get_time(to.f);
                    a.label = {
                        if *id == 1 {
                            Label::FirstG1
                        } else if *id < first_move {
                            Label::PrePrintMove
                        } else if a.de > EPSILON {
                            if a.dx.abs() > EPSILON || a.dy.abs() > EPSILON {
                                if a.dz.abs() > EPSILON {
                                    Label::PlanarExtrustion
                                } else {
                                    Label::NonPlanarExtrusion
                                }
                            } else {
                                Label::DeRetraction
                            }
                        } else if a.dz > EPSILON {
                            Label::LiftZ
                        } else if a.dz < EPSILON {
                            Label::LowerZ
                        } else if a.de < EPSILON {
                            if a.dx.abs() > EPSILON || a.dy.abs() > EPSILON {
                                Label::Wipe
                            } else {
                                Label::Retraction
                            }
                        } else if a.dx.abs() + a.dy.abs() > EPSILON {
                            Label::TravelMove
                        } else if (from.f - to.f).abs() > EPSILON {
                            Label::FeedrateChangeOnly
                        } else {
                            Label::MysteryMove
                        }
                    };
                    ann.insert(id.clone(), a);
                }
                _ => (),
            }
        }
        ann
    }
}
#[test]
#[should_panic]
fn no_home_test() {
    let input = "G1 X1 Y1 Z1 E1\n";
    let _ = crate::read(input).expect("failed to parse");
}
#[test]
#[should_panic]
fn double_home() {
    let _ = crate::read("G28\nG28\nG1 x1\ng1y1\ng1e2.222\ng1z1\n").expect("failed to parse");
}
#[test]
fn parsed_test() {
    let parsed = crate::read("G28\nG1 x1\ng1y1\ng1e2.222\ng1z1\n").expect("failed to parse");
    panic!("{:?}", parsed);
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
