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
    unsafe fn build(g1_moves: i32, g1: G1, prev: Tail) -> Vertex {
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
    fn home() -> Vertex {
        Vertex {
            id: 0,
            label: Label::Home,
            prev: None,
            from: Pos::unhomed(),
            to: Pos::home(),
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
    pub fn is_extrusion(&self) -> bool {
        match self {
            Node::Vertex(v) => v.extrusion_move(),
            _ => false,
        }
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
    fn build_shapes(&mut self) {
        let mut start: Option<Pos> = None;
        let mut end: Option<Pos> = None;
        let mut shape = Shape::new();
        let mut cur = self.nodes.cursor_front_mut();
        while cur.peek_next().is_some() {
            let node = cur.remove_current().unwrap();
            if node.is_extrusion() {
                let v = node.vertex();
                if start.is_none() {
                    start = Some(v.from());
                }
                end = Some(v.to());
                shape.len += v.dist();
                shape.nodes.push_back(node);
            // if the move is just a feedrate change we will keep it inside
            // an existing shape or keep it in the main list if we are between
            // shapes
            } else if node.feedrate_only() {
                if shape.len > 0.0 {
                    shape.nodes.push_back(node);
                } else {
                    cur.insert_before(node);
                }
            } else {
                // if the shape has some length and the current node is not
                // an extrusion move, then the shape is complete
                if shape.len > 0.0 {
                    // if the start and end of the shape are less than 0.1mm apart
                    // we will consider the shape closed
                    shape.closed = start.unwrap().dist(&end.unwrap()) < 0.1;
                    // put shape back into the list before the cursor
                    // and then insert the current post-shape node back into the list
                    // in between the shape and the cursor
                    cur.insert_before(Node::Shape(shape));
                    cur.insert_before(node);
                }
            }
        }
    }
    fn build_layers(&mut self) {
        let mut id = 0;
        let mut layer = Layer {
            id: 0,
            nodes: NodeList::new(),
        };
        let mut cur = self.nodes.cursor_front_mut();
        let mut z = 0.0;
        while cur.peek_next().is_some() {
            let node = cur.remove_current().unwrap();
            if node.shape() {
                if (node.shape_z() - z).abs() > EPSILON {
                    id += 1;
                    z = node.shape_z();
                    if layer.nodes.len() > 0 {
                        cur.insert_before(layer);
                    }
                    layer = Layer {
                        id,
                        nodes: NodeList::new(),
                    };
                    layer.nodes.push_back(node);
                }
            }

        }
    }
    pub fn push_back(&mut self, mut node: Node) {
        // FIXME: doesn't work for shapes, see below
        let mut ex_move = false;
        match &mut node {
            Node::Vertex(v) => {
                v.prev = self.last_vertex;
                ex_move = v.extrusion_move();
            }
            Node::Shape(s) => {
                // FIXME: I think that the pointer to the last node inside the shape will move
                // when the shape is copied into the main NodeList
                // so I guess I need to make a method for nodes that
                // recursively searches the nodelists to return the innermost last
                // vertex
                self.last_vertex = s.nodes.last_vertex();
                self.nodes.append(&mut s.nodes.nodes);
            }
            Node::Layer(l) => {
                self.last_vertex = l.nodes.last_vertex();
                self.nodes.append(&mut l.nodes.nodes);
            }
            _ => {}
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
                }
                Node::NonMove(_, pos) => {
                    *pos = state.clone();
                }
                node => {
                    node.set_from(state);
                    state = node.to();
                }
            }
        }
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
impl Shape {
    fn new() -> Shape {
        Shape {
            nodes: NodeList::new(),
            closed: false,
            len: 0.0,
        }
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
            }
            Node::Layer(l) => {
                l.nodes.nodes.front_mut().unwrap().set_from(new_from);
                l.nodes.update();
            }
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

        // FIXME: this is fine but it doesn't use the shape and layer nodes which i like
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
                    last_pos = node.to();
                    g1_moves += 1;
                    parsed.push_back(node);
                }
                Line::OtherInstruction(ins) => {}
                Line::Raw(string) => {
                    let node = Node::NonMove(line, last_pos);
                    parsed.push_back(node);
                }
            }
        }

        /*
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
        } */
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
