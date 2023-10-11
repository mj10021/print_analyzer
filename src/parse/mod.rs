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
    // this is a pointer to the previous vertex node where self.extrusion_move() == True
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
    // the input g1 gets dropped here and should never be needed again
    unsafe fn build(g1_moves: i32, g1: G1, prev: Tail) -> Vertex {
        // use the `to` field of the tail node to build the vertex `from`
        let from = unsafe {
            if prev.is_none() {
                Pos::unhomed()
            } else {
                (*prev.unwrap()).to()
            }
        };

        let mut vrtx = Vertex {
            id: g1_moves,
            label: Label::Uninitialized,
            to: Pos::build(&from, &g1),
            from,
            prev,
        };
        // label the vertex based on the from and to fields
        vrtx.label();
        vrtx
    }

    fn update(&mut self) {
        self.from = match self.prev {
            Some(prev) => unsafe {(*prev).to()},
            None => Pos::unhomed(),
        };
    }

    fn home() -> Vertex {
        Vertex {
            id: 0,
            label: Label::Home,
            prev: None,
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
    Change(Vec<Node>),
    PrePrint(Vec<Node>),
    PostPrint(Vec<Node>),
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
            Node::Change(_) => true,
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
    // returns the state of the updated node
    fn update(&mut self, prev_ptr: Tail, prev_state: Pos) -> Pos {
        match self {
            Node::Vertex(v) => {
                v.from = prev_state;
                v.prev = prev_ptr;
                v.label();
                v.to()
            }
            Node::Shape(s) => {
                s.nodes.update(prev_ptr, prev_state)
            },
            Node::Layer(l) => {
                l.nodes.update(prev_ptr, prev_state)
            },
            Node::PrePrint(v)
            | Node::PostPrint(v)
            | Node::Change(v) => {
                let mut ptr = prev_ptr.clone();
                let mut state = prev_state.clone();
                for node in v {
                    state = node.update(ptr, state);
                    // if node is_extrusion, update tail
                    let ex = {
                        let mut out = false;
                        if let Node::Vertex(v) = node {
                            if v.extrusion_move() {
                                out = true;
                            }
                        }
                        out
                    };
                    if ex {ptr = Some(std::ptr::addr_of_mut!(*node))};
                }
                state
            },
            Node::NonMove(_, pos) => {
                *pos = prev_state.clone();
                pos.clone()
            }
        }
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

    fn build_shapes(&mut self) {
        let mut cur = self.nodes.cursor_front_mut();
        // keep walking forward through the print nodes until an extrusion node is reached
        // and then keep popping nodes into the shape list until a change node is reached
        loop {
            if cur.current().is_none() {
                break;
            }
            // pop off the first node
            let node = cur.remove_current().unwrap();
            // unwrap the node and check if it is an extrusion move
            let start = node.is_extrusion();
            if start {
                let start = node.from();
                let mut end = node.to();
                let mut shape = Shape::new();
                shape.nodes.push_back(node);
                loop {
                    if cur.current().is_none() {
                        break;
                    }
                    let node = cur.remove_current().unwrap();
                    // if a shape or layer change is detected,
                    // reinsert the current node in the main list and
                    // exit the loop
                    if node.is_change() {
                        cur.insert_before(node);
                        break;
                    }
                    end = node.to();
                    shape.nodes.push_back(node);
                }
                if shape.nodes.nodes.len() > 0 {
                    // shape closed if the start and end are < 0.1mm apart
                    shape.closed = start.dist(&end) < 0.1;
                    cur.insert_before(Node::Shape(shape));
                }
            } else {
                cur.insert_before(node);
            }
        }
    }

    // CHECK THIS NEXT
    pub fn push_back(&mut self, mut node: Node) {
        // FIXME: doesn't work for shapes, see below
        let mut ex_move = false;
        match &mut node {
            Node::Vertex(v) => {
                v.prev = self.last_vertex;
                ex_move = v.extrusion_move();
            }
            Node::Shape(s) => {
                self.last_vertex = s.nodes.last_vertex();
                self.nodes.append(&mut s.nodes.nodes);
            }
            Node::Layer(l) => {
                self.last_vertex = l.nodes.last_vertex();
                self.nodes.append(&mut l.nodes.nodes);
            },
            Node::PrePrint(v) | Node::PostPrint(v) {
                // todo: need to update tail when I append these ones too
            },
            Node::NonMove(_, _)
            | Node::Change(_) => {}
        }
        // FIXME: i should really have a method go through the entire list
        // or at least the new section to reset the vertices, states, and 
        // to updates the tail of the list
        // probably every time something is pushed or appneded its address
        // changes so all of the dependent pointers need to be updated
        self.nodes.push_back(node);
        if ex_move {
            self.last_vertex = Some(self.nodes.back_mut().unwrap() as *mut Node);
        }
    }

    // appends the nodelist and searches from the front of the 
    // new node list to set the prev of the first extrustion
    // and the new tail
    fn append(&mut self, mut list: NodeList) {

        // FIXME: recheck this
        let mut tail = self.last_vertex;
        let mut cur = self.nodes.cursor_back_mut();

        // append the list
        while list.nodes.len() > 0 {
            cur.insert_after(list.nodes.pop_back().unwrap());
        }
        // move to the fist appended node
        cur.move_next();
        while cur.current().is_some() {
            let ex = {
                let mut ret = false;
                // update the current vertex with the current tail, and set 
                // the tail to the node holding the current vertex
                if let Some(Node::Vertex(v)) = cur.current () {
                    v.prev = tail;
                    v.update();
                    ret = v.extrusion_move();
                }
                ret
            };
            if ex {
                tail = Some(cur.current().unwrap() as *mut Node);
            }
            cur.move_next();
        }
        self.last_vertex = tail;
    }

    pub fn update(&mut self, prev_ptr: Tail, prev_state: Pos) -> Pos {
        let mut state = prev_state.clone();
        let mut ptr = prev_ptr.clone();
        for node in self.nodes.iter_mut() {
            match node {
                Node::Vertex(_) => {
                    state = node.update(ptr, state);
                    let ex = node.is_extrusion();
                    if ex {
                        ptr = Some(std::ptr::addr_of_mut!(*node));
                    }
                }
                Node::Shape(_) => {
                    state = node.update(ptr, state);
                    // shape always has extrusion move, so we update the tail
                    ptr = Some(std::ptr::addr_of_mut!(*node));
                },
                Node::Layer(_) => {
                    state = node.update(ptr, state);
                    // layer always has extrusion move so we update the tail
                    ptr = Some(std::ptr::addr_of_mut!(*node));
                },
                Node::PrePrint(v)
                | Node::PostPrint(v)
                | Node::Change(v) => {
                    for node in v {
                        // FIXME: need to check if I need to update the tail here 
                        // since some of these might contain extrusion moves
                        let ex = node.is_extrusion();
                        state = node.update(ptr, state);
                        if ex {
                            ptr = Some(std::ptr::addr_of_mut!(*node));
                        }
                    }
                },
                Node::NonMove(_, pos) => {
                    *pos = state.clone();
                }
            }
        }
        state
    }
    fn last_vertex(&self) -> Tail {
        if self.last_vertex.is_none() {
            return None;
        }
        let tail = self.last_vertex.unwrap();
        unsafe {
            match &*tail {
                // FIXME: need to check safety here with mix of *mut and &
                Node::Vertex(_) => self.last_vertex,
                Node::Layer(l) => l.nodes.last_vertex(),
                Node::Shape(s) => s.nodes.last_vertex(),
                _ => panic!("last vertex is not a vertex"),
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
            Node::PrePrint(mut v) | Node::Change(mut v) | Node::PostPrint(mut v) => {
                out.append(&mut v);
            }
        }
    }
    out
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
            Node::Shape(s) => s.nodes.nodes.front().unwrap().from(),
            Node::Layer(l) => l.nodes.nodes.front().unwrap().from(),
            Node::Change(nodes) | Node::PostPrint(nodes) | Node::PrePrint(nodes) => nodes[0].from(),
        }
    }
    fn to(&self) -> Pos {
        match self {
            Node::Vertex(v) => v.to.clone(),
            Node::NonMove(_, p) => p.clone(),
            Node::Shape(s) => s.nodes.nodes.back().unwrap().to(),
            Node::Layer(l) => l.nodes.nodes.back().unwrap().to(),
            Node::Change(nodes) | Node::PostPrint(nodes) | Node::PrePrint(nodes) => {
                nodes[nodes.len() - 1].to()
            }
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

        let mut prev: Tail = None;
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
                }
                Line::M83 => {
                    rel_e = true;
                }
                Line::G90 => {
                    rel_xyz = false;
                }
                Line::G91 => {
                    rel_xyz = true;
                }
                Line::G28 => {
                    assert!(prev.is_none(), "homing twice");
                    parsed.push_back(Node::Vertex(Vertex::home()));
                }
                Line::G1(g1) => {
                    assert!(prev.is_some(), "attempting to move from unhomed state");
                    let node = Node::Vertex(unsafe { Vertex::build(g1_moves, g1, prev) });
                    // fixme: I THINK I NEED TO UPDATE THE PREV HERE, might be happening on line 666
                    last_pos = node.to();
                    g1_moves += 1;
                    parsed.push_back(node);
                }
                Line::OtherInstruction(_ins) => {}
                Line::Raw(string) => {
                    let node = Node::NonMove(Line::Raw(string), last_pos);
                    parsed.push_back(node);
                }
            }
            let new_tail = {
                let mut out = false;
                if let Some(Node::Vertex(v)) = parsed.nodes.back() {
                    if v.extrusion_move() || *v == Vertex::home() {
                        out = true;
                    }
                }
                out
            };
            if new_tail {
                // i think push_back() handles the tail updating so i only need
                // to set the local prev variable
                prev = Some(parsed.nodes.back_mut().unwrap() as *mut Node);
            }
        }

        parsed.update(None, Pos::unhomed());
        Parsed {
            nodes: parsed,
            rel_xyz,
            rel_e,
        }
    }
    fn delete() { todo!() }
    fn insert() { todo!() }
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
