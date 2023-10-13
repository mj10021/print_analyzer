use std::collections::linked_list::CursorMut;
use std::collections::LinkedList;
use std::f32::{EPSILON, NEG_INFINITY};

pub mod file_reader;
use self::file_reader::*;

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
    pub from: Pos,
    pub to: Pos,
}
trait Move {
    fn to(&self) -> Pos;
}

impl Vertex {
    // the input g1 gets dropped here and should never be needed again
    fn build(g1_moves: i32, from: Pos, g1: G1) -> Vertex {
        let mut vrtx = Vertex {
            id: g1_moves,
            label: Label::Uninitialized,
            to: Pos::build(&from, &g1),
            from,
        };
        // label the vertex based on the from and to fields
        vrtx.label();
        vrtx
    }

    fn home() -> Vertex {
        Vertex {
            id: 0,
            label: Label::Home,
            from: Pos::unhomed(),
            to: Pos::home(),
        }
    }
    // FIXME: check these
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
            .finish()
    }
}
// Nodes are designed to contain all of the information needed to generate g-gcode
// Each node represents one line of g-code
#[derive(Debug, PartialEq)]
pub enum Node {
    Vertex(Vertex),
    NonMove(Line, Pos),
}
impl Node {
    pub fn vertex(&self) -> &Vertex {
        match self {
            Node::Vertex(v) => v,
            _ => panic!("not a vertex"),
        }
    }
    pub fn is_extrusion(&self) -> bool {
        match self {
            Node::Vertex(v) => v.extrusion_move(),
            _ => false,
        }
    }
    pub fn is_change(&self) -> bool {
        match self {
            Node::Vertex(v) => v.change_move(),
            _ => false,
        }
    }
    fn planar_z_change(&self) -> bool {
        (self.from().z - self.to().z).abs() > EPSILON && self.is_change()
    }
    pub fn feedrate_only(&self) -> bool {
        match self {
            Node::Vertex(v) => v.label == Label::FeedrateChangeOnly,
            _ => false,
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
}

#[derive(Debug, PartialEq)]
pub struct NodeList {
    pub nodes: LinkedList<Node>,
}

impl NodeList {
    fn new() -> NodeList {
        NodeList {
            nodes: LinkedList::new(),
        }
    }

    pub fn move_next_vertex(cur: &mut CursorMut<Node>) -> Result<*mut Vertex, String> {
        // find the next extrusion, starting with the next node
        cur.move_next();
        assert!(cur.current().is_some());
        loop {
            if let Some(Node::Vertex(v)) = cur.current() {
                return Ok(v as *mut Vertex);
            }
            if cur.peek_next().is_none() {
                return Err("end of list".to_string());
            }
            cur.move_next();
        }
        // return a raw pointer extrusion moved to
    }
    pub fn peek_prev_vertex(cur: &mut CursorMut<Node>) -> *mut Vertex {
        let mut id = -1;
        let out: *mut Vertex;
        // need to start from a valid extrusion node
        assert!({
            let mut ret = false;
            if let Some(Node::Vertex(v)) = cur.current() {
                ret = true;
                id = v.id;
            }
            // if the previous vertex is in a different layer or shape,
            // we dont wan't to modify it implicity
            ret
        });
        cur.move_prev();
        // find the previous extrusion
        loop {
            if let Some(Node::Vertex(v)) = cur.current() {
                out = v as *mut Vertex;
                break;
            }
            assert!(cur.peek_prev().is_some(), "no previous extrusion");
            cur.move_prev();
        }
        // now move back to the original node
        loop {
            if let Some(Node::Vertex(v)) = cur.current() {
                assert!(id > 0, "no id set");
                if v.id == id {
                    break;
                }
            }
            cur.move_next();
        }
        // and return a raw pointer to the prev extrusion
        out
    }
}

#[test]
fn layer_test() {
    let test = "
    G28
    G1 f123
    G1 X100 Y100 Z0.2
    G1 X110 Y100 E1.1
    G1 X110 Y110 E1.1
    G1 X100 Y110 E1.1
    G1 X100 Y100 E1.1
    g1 f234
    G1 X100 Y105 E-0.05
    G1 X100 Y100 Z0.4
    ";
    let parsed = crate::read(test).expect("asdf");
    panic!("{:?}", parsed.nodes);
}
#[derive(Debug, PartialEq)]
pub struct Shape {
    pub nodes: NodeList,
    pub closed: bool,
    pub planar: bool,
    pub len: f32,
}
impl Shape {
    fn new() -> Shape {
        Shape {
            nodes: NodeList::new(),
            closed: false,
            planar: false,
            len: 0.0,
        }
    }
    fn z(&self) -> f32 {
        if !self.planar {
            return -1.0;
        }
        let Some(Node::Vertex(v)) = self.nodes.nodes.front() else {
            panic!("invalid node in shape");
        };
        v.to.z
    }
}
#[derive(Debug, PartialEq)]
pub struct Layer {
    pub id: i32,
    pub nodes: NodeList,
}

impl Layer {
    fn start() -> Layer {
        Layer {
            id: 0,
            nodes: NodeList::new(),
        }
    }
}

pub trait State {
    fn from(&self) -> Pos;
    fn to(&self) -> Pos;
}

impl State for Node {
    fn from(&self) -> Pos {
        match self {
            Node::Vertex(v) => v.from.clone(),
            Node::NonMove(_, p) => p.clone(),
        }
    }
    fn to(&self) -> Pos {
        match self {
            Node::Vertex(v) => v.to.clone(),
            Node::NonMove(_, p) => p.clone(),
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
    pub fn build(mut lines: Vec<Line>) -> Parsed {
        let mut rel_xyz = false;
        let mut rel_e = true;

        let mut homed = false;
        let mut last_pos = Pos::unhomed();
        let mut g1_moves = 0;

        let mut parsed = NodeList::new();

        // reverse the lines to pop in the correct order
        lines.reverse();

        while lines.len() > 0 {
            let line = lines.pop().unwrap();
            match line {
                Line::M82 => {
                    rel_e = false;
                    parsed.nodes.push_back(Node::NonMove(Line::M82, last_pos));
                }
                Line::M83 => {
                    rel_e = true;
                    parsed.nodes.push_back(Node::NonMove(Line::M83, last_pos));
                }
                Line::G90 => {
                    rel_xyz = false;
                    parsed.nodes.push_back(Node::NonMove(Line::G90, last_pos));
                }
                Line::G91 => {
                    rel_xyz = true;
                    parsed.nodes.push_back(Node::NonMove(Line::G91, last_pos));
                }
                Line::G28 => {
                    assert!(!homed, "homing from previously homed state");
                    last_pos = Vertex::home().to();
                    parsed.nodes.push_back(Node::NonMove(Line::G28, last_pos));
                    homed = true;
                }
                Line::G1(g1) => {
                    assert!(homed);
                    let node = Node::Vertex(Vertex::build(g1_moves, last_pos, g1));
                    last_pos = node.to();
                    g1_moves += 1;
                    parsed.nodes.push_back(node);
                }
                Line::FeedrateChange(val) => {
                    // update state with new feedrate
                    last_pos.f = val;
                    parsed.nodes.push_back(Node::NonMove(line, last_pos))
                }
                Line::OtherInstruction(_) | Line::Raw(_) => {
                    parsed.nodes.push_back(Node::NonMove(line, last_pos))
                }
            }
        }

        Parsed {
            nodes: parsed,
            rel_xyz,
            rel_e,
        }
    }
    fn delete() {
        todo!()
    }
    fn insert() {
        todo!()
    }
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
