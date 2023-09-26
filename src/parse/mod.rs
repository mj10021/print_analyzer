use std::collections::{LinkedList, VecDeque};
use std::f32::{EPSILON, NEG_INFINITY};
use std::ptr::addr_of_mut;


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
#[derive(PartialEq)]
pub struct Vertex {
    pub id: i32,
    pub label: Label,
    // this is a pointer to the previous vertex where self.extrusion_move() == True
    pub prev: Tail,
    pub from: Pos,
    pub to: Pos,
}
type Tail = Option<*mut Node>;
trait Move {
    fn to(&self) -> Pos;
}
impl Move for Tail {
    fn to(&self) -> Pos {
        match self {
            Some(v) => unsafe { (**v).vert_to() },
            None => Pos::unhomed(),
        }
    }
}
impl Vertex {
    unsafe fn build(g1_moves: i32, nodes: &mut NodeList, g1: G1) -> *mut Node {
        // vertices can't be built without a NodeList to be loaded into
        // if the NodeList is empty (nodes.back().is_none()), then the vertex is 
        // being built before a homing node has been parsed, which is not supported
        let tail = nodes.nodes.back().unwrap();
        let from = tail.to();

        let mut vrtx = Vertex {
            id: g1_moves,
            label: Label::Uninitialized,
            to: Pos::build(&from, &g1),
            from,
            prev: None,
        };
        // label the vertex based on the from and to fields
        vrtx.label();
        // the push_back method for NodeList automatically updates the last_vertex pointer
        // and the vertex prev field
        nodes.push_back(Node::Vertex(vrtx));
        // return a raw pointer to the new tail node for convenience
        // this pointer should always match the tail field of the NodeList
        nodes.nodes.back_mut().unwrap() as *mut Node
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
    pub fn to(&self) -> Pos {
        self.to.clone()
    }
    pub fn from(&self) -> Pos {
        self.from.clone()
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
impl std::fmt::Debug for Vertex {
    fn fmt(&self, f: &mut std::fmt::Formatter) -> std::fmt::Result {
        f.debug_struct("Point")
            .field("id", &self.id)
            .field("from", &self.from)
            .field("to", &self.to)
            .field("label", &self.label)
            .field("prev", &self.prev)
            .finish()
    }
}
// Nodes are designed to contain all of the information needed to generate g-gcode
// Each node represents one line of g-code
#[derive(Debug, PartialEq)]
pub enum Node {
    Vertex(Vertex),
    NonMove(Line, Pos),
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
    pub fn vertex_mut_raw(&mut self) -> *mut Vertex {
        match self {
            Node::Vertex(v) => v as *mut Vertex,
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
    pub fn vert_to(&self) -> Pos {
        match self {
            Node::Vertex(v) => v.to.clone(),
            _ => panic!("not a vertex"),
        }
    }
    fn pop_shape(nodes: &mut LinkedList<Node>) -> Node {
        let mut out = NodeList::new();
        let mut len = 0.0;
        loop {
            let cur = nodes.pop_front();
            if cur.is_none() {
                break;
            }
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
            out.nodes.push_back(cur.unwrap());
        }
        let mut tail: Tail = None;
        for node in out.nodes.iter_mut() {
            let mut new_tail = false;
            if let Node::Vertex(v) = node {
                if v.extrusion_move() {
                    v.prev = tail;
                    new_tail = true;
                }
            }
            if new_tail {
                tail = Some(node as *mut Node);
            }
        }
        out.last_vertex = tail;
        assert!(out.nodes.len() > 0, "no nodes popped");
        Node::Shape(Shape {
            nodes: out,
            closed: false,
            len,
        })
    }
    fn pop_change(nodes: &mut LinkedList<Node>) -> Node {
        // the change should end before the first extrusion move
        // note: that does not count deretractions (e move with no x/y/z travel)
        // keep track of the first and last position of the sequence to decide
        // if it should be labelled as a shape or a layer change
        let mut out = Vec::new();
        let mut start = None;
        let mut end = None;
        loop {
            let cur = nodes.pop_front();
            if cur.is_none() {
                break;
            }
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
    fn pop_preprint(nodes: &mut LinkedList<Node>) -> Node {
        let mut out = Vec::new();
        loop {
            let cur = nodes.pop_front();
            if cur.is_none() {
                break;
            }
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
#[derive(Debug, PartialEq)]
pub struct NodeList {
    pub nodes: LinkedList<Node>,
    pub last_vertex: Tail,
}
impl NodeList {
    fn new() -> NodeList {
        NodeList {
            nodes: LinkedList::new(),
            last_vertex: None,
        }
    }
    fn from(nodes: LinkedList<Node>, last_vertex: Tail) -> NodeList {
        NodeList {
            nodes,
            last_vertex,
        }
    }
    pub fn push_back(&mut self, mut node: Node) {
        // FIXME: doesn't work for shapes, see below
        let mut ex_move = false;
        match &mut node {
            Node::Vertex(v) => {
                v.prev = self.last_vertex;
                ex_move = v.extrusion_move();
            },
            Node::Shape(s) => {
                // FIXME: need to handle the shape's nodelist's tail here
            },
            Node::Layer(l) => {}, // FIXME: same as above
            _ => {},
        }
        self.nodes.push_back(node);
        if ex_move {
            self.last_vertex = Some(self.nodes.back_mut().unwrap() as *mut Node);
        }
    }
    fn append(&mut self, mut list: NodeList) {
        self.nodes.append(&mut list.nodes);
        self.last_vertex = list.last_vertex;
    }
    pub fn update(&mut self) {
        let mut prev: Tail = None;
        let mut state: Pos = Pos::unhomed();
        for node in self.nodes.iter_mut() {
            let cur = node as *mut Node;
            match node {
                Node::Vertex(v) => {
                    if v.extrusion_move() {
                        v.prev = prev;
                        prev = Some(cur);
                    }
                    v.from = state;
                    state = v.to();
                    v.label();
                },
                Node::NonMove(_, pos) => {
                    *pos = state.clone();
                },
                node => {
                    node.set_from(state);
                    state = node.to();
                }
            }
        }
    }
}
fn get_nodes(nodes: LinkedList<Node>) -> Vec<Node> {
    let mut out = Vec::new();
    for node in nodes {
        match node {
            Node::NonMove(_, _) => out.push(node),
            Node::Vertex(_) => {
                out.push(node);
            }
            Node::Shape(s) => {
                out.append(&mut get_nodes(s.nodes.nodes));
            }
            Node::Layer(l) => {
                out.append(&mut get_nodes(l.nodes.nodes));
            }
            Node::PrePrint(mut v) | Node::LayerChange(mut v) | Node::ShapeChange(mut v) => {
                out.append(&mut v);
            }
        }
    }
    out
}

#[derive(Debug, PartialEq)]
pub struct Shape {
    pub nodes: NodeList,
    pub closed: bool,
    pub len: f32,
}
#[derive(Debug, PartialEq)]
pub struct Layer {
    pub id: i32,
    pub nodes: NodeList,
}

pub trait State {
    fn from(&self) -> Pos;
    fn to(&self) -> Pos;
    fn set_from(&mut self, new_from: Pos);
}

impl State for Node {
    fn from(&self) -> Pos {
        match self {
            Node::Vertex(v) => v.from.clone(),
            Node::NonMove(_, p) => p.clone(),
            Node::Shape(s) => s.nodes.nodes.front().unwrap().from(),
            Node::Layer(l) => l.nodes.nodes.front().unwrap().from(),
            Node::LayerChange(nodes) | Node::ShapeChange(nodes) | Node::PrePrint(nodes) => {
                nodes[0].from()
            }
        }
    }
    fn to(&self) -> Pos {
        match self {
            Node::Vertex(v) => v.to.clone(),
            Node::NonMove(_, p) => p.clone(),
            Node::Shape(s) => s.nodes.nodes.back().unwrap().to(),
            Node::Layer(l) => l.nodes.nodes.back().unwrap().to(),
            Node::LayerChange(nodes) | Node::ShapeChange(nodes) | Node::PrePrint(nodes) => {
                nodes[nodes.len() - 1].to()
            }
        }
    }
    fn set_from(&mut self, new_from: Pos) {
        match self {
            Node::Vertex(v) => v.from = new_from,
            Node::NonMove(_, p) => *p = new_from,
            Node::Shape(s) => {
                s.nodes.nodes.front_mut().unwrap().set_from(new_from);
                s.nodes.update();
            },
            Node::Layer(l) => {
                l.nodes.nodes.front_mut().unwrap().set_from(new_from);
                l.nodes.update();
            },
            Node::LayerChange(nodes) | Node::ShapeChange(nodes) | Node::PrePrint(nodes) => {
                let mut prev = new_from;
                // update all nodes in vec
                for node in nodes {
                    node.set_from(prev);
                    prev = node.to();
                }
            }
        }
    }
}
// enum of the gcode commands that we are ready to handle
enum Command {
    G1,
    G28,
    M82,
    M83,
    M91,
    M92,
}
impl Command {
    fn is_valid(word: &Word) -> bool {
        let supported_letters = ['G', 'M'];
        let supported_numbers = [1, 28, 82, 83, 91, 92];
        let Word(letter, num, _) = word;
        let num = num.round() as i32;
        supported_letters.contains(letter) && supported_numbers.contains(&num)
    }
    fn from_word(word: Word) -> Command {
        let Word(letter, num, _) = word;
        let num = num.round() as i32;
        match (letter, num) {
            ('G', 1) => Command::G1,
            ('G', 28) => Command::G28,
            ('M', 82) => Command::M82,
            ('M', 83) => Command::M83,
            ('M', 91) => Command::M91,
            ('M', 92) => Command::M92,
            _ => panic!("invalid command"),
        }
    }
}
#[derive(Debug, PartialEq)]
pub struct Parsed {
    pub nodes: NodeList,
    rel_xyz: bool,
    rel_e: bool,
}
impl Parsed {
    pub fn build(mut nodes: NodeList) -> Parsed {
        let mut rel_xyz = false;
        let mut rel_e = true;
        let mut parsed = NodeList::new();
        let mut nodes = nodes.nodes;
        parsed.nodes.push_back(Node::pop_preprint(&mut nodes));
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
                }
                Some(_) => {
                    if let Some(Node::NonMove(Line::Instruction(Instruction {
                        first_word: Word(letter, number, ..),
                        ..
                    }), _)) = nodes.front()
                    {
                        let number = number.round() as i32;
                        match (letter, number) {
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
                    }
                    parsed.push_back(nodes.pop_front().unwrap())
                }
                _ => {}
            }
        }
        parsed.update();
        Parsed {
            nodes: parsed,
            rel_xyz,
            rel_e,
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
