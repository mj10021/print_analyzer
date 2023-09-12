use std::collections::{BTreeMap, LinkedList, VecDeque};
use std::f32::{EPSILON, NEG_INFINITY};

use self::feature_finder::{Shape, Layer};
use self::file::build_nodes;
pub mod feature_finder;

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
        let num = num as i32;
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
    fn to_tup(&self) -> (f32, f32, f32) {
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
            f: NEG_INFINITY,
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
    // this is a pointer to the previous g1 move node
    pub prev: Option<*mut Vertex>,
    pub from: Pos,
    pub to: Pos,
}

impl Vertex {
    unsafe fn build(g1_moves: i32, prev: Option<*mut Vertex>, g1: G1, pre_print: bool) -> Vertex {
        unsafe {
            let mut vrtx = Vertex {
                id: g1_moves,
                label: Label::Uninitialized,
                to: Pos::build(&(*(prev.unwrap())).to, &g1),
                from: (*(prev.unwrap())).to.clone(),
                prev,
            };
            if pre_print {
                if vrtx.to.x > 5.0 && vrtx.to.y > 5.0 {
                    pre_print = false;
                }
            }
            vrtx.label(pre_print);
        }
    }
    fn label(&mut self, pre_print: bool) {
        // FIXME: i think some of the from values are wrong so the labelling is not quite right
        let dx = self.to.x - self.from.x;
        let dy = self.to.y - self.from.y;
        let dz = self.to.z - self.from.z;
        let de = self.to.e;
        self.label = {
            if pre_print {
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
    pub unsafe fn translate(&mut self, dx: f32, dy: f32, dz: f32) {

        // FIXME: i really want this to work from inside of a shape
        // rather than directly from the vertex, so i can deal with the end 
        // nodes specifically and not have to take into account feedrate change
        // and retraction/deretraction commands, which should probably be edited
        // separately as a block in between shapes
        // the data structure should look like this:
        // G28 -> Travel -> Shape -> Retraction Moves (retract, wipe, lift z, travel, lower z, deretract) -> Shape -> Shape....
        // maybe layer can be a node of nodes, shape can be a node of nodes, and retract/deretract can be node of nodes




        // FIXME: CHECK THIS!!!!!
        // I think right now this is looking at deretractions and getting infinite flow
        assert!(self.prev.is_some(), "translate from unhomed state");
        assert!((*(self.prev.unwrap())).to == self.from, "node not updated");
        let prev = self.prev.unwrap();
        let (xi, yi, zi) = (*prev).from.to_tup();
        let (xf, yf, zf) = (*prev).to.to_tup();
        let dxi = xf - xi;
        let dyi = yf - yi;
        let dzi = zf - zi;
        let di = (dxi.powf(2.0) + dyi.powf(2.0) + dzi.powf(2.0)).sqrt();
        (*prev).to.x += dx;
        (*prev).to.y += dy;
        (*prev).to.z += dz;
        self.from.x += dx;
        self.from.y += dy;
        self.from.z += dz;
        let (xf, yf, zf) = (*prev).to.to_tup();
        let dxf = xf - xi;
        let dyf = yf - yi;
        let dzf = zf - zi;
        let df = (dxf.powf(2.0) + dyf.powf(2.0) + dzf.powf(2.0)).sqrt();
        let mut scale = df / di;
        if scale.is_infinite() || scale.is_nan() {
            scale = 0.0;
        }
        (*prev).to.e *= scale;
        // let di = self.dist();
        let df = self.dist();
        let mut scale = df / di;
        if scale.is_infinite() || scale.is_nan() {
            scale = 0.0;
        }
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
#[derive(Clone, Debug, PartialEq)]
pub enum Node {
    Vertex(Vertex),
    NonMove(Line),
    Shape(Shape),
    LayerChange(Vec<Node>),
    ShapeChange(Vec<Node>),
    // FIXME: delete this
    LayerStart,
    // FIXME: delete this
    LayerEnd,
}
impl Node {
    fn vertex(&self) -> &Vertex {
        match self {
            Node::Vertex(v) => v,
            _ => panic!("not a vertex"),
        }
    }
    fn pop_shape(nodes: &mut VecDeque<Node>) -> Node {
        let mut cur = nodes.pop_front();
        let Some(Node::Vertex(v)) = cur else {panic!("invalid front node")};
        assert!(v.label == Label::PlanarExtrustion || v.label == Label::NonPlanarExtrusion, "invalid front node");

        let mut out = LinkedList::new();
        let mut len = 0.0;
        while cur.is_some() {
            if let Some(Node::Vertex(v)) = cur {
                if v.label == Label::PlanarExtrustion || v.label == Label::NonPlanarExtrusion {
                    len += v.dist();
                } else { break; }
            }
            out.push_back(cur.unwrap());
            cur = nodes.pop_front();
        }
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
        let mut cur = nodes.pop_front();
        let mut start = None;
        let mut end = None;
        if let Some(Node::Vertex(v)) = cur {
            if start.is_none() {
                start = Some(v.from);
            }
            if v.label == Label::PlanarExtrustion || v.label == Label::PlanarExtrustion {
                panic!("invalid front node");
            }
        }
        while cur.is_some() {
            if let Some(Node::Vertex(v)) = cur {
                if start.is_none() {
                    start = Some(v.from);
                }
                if v.label == Label::PlanarExtrustion || v.label == Label::NonPlanarExtrusion {
                    end = Some(v.to); 
                    nodes.push_front(cur.unwrap());
                    break;
                }
        }
        if start.unwrap().z != end.unwrap().z {
            return Node::LayerChange(out);
        }
        Node::ShapeChange(out)
    }
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
    pub fn build(nodes: VecDeque<Node>) -> Parsed {
        let mut pre_print = true;
        let mut rel_xyz = false;
        let mut rel_e = true;

        let mut parsed = LinkedList::new();

        while nodes.len() > 0 {
            match nodes.front() {
                Some(Node::NonMove(Line(l))) => {
                    match l {
                        Line::Instruction(Instruction {first_word: Word(letter, number, ..), ..}) => {
                            let number = number as i32;
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
                            }
                        },
                        _ => {},
                    }
                    parsed.push_back(node);
                },
                Some(Node::Vertex(v)) => {
                    if v.label == Label::PlanarExtrustion || v.label == Label::NonPlanarExtrusion {
                        parsed.push_back(nodes.pop_shape());
                    } else {
                        parsed.push_back(nodes.pop_change());
                    }
                },
                _ => {parsed.push_back(nodes.pop_front())},
            }
        }
        Parsed {
            nodes: parsed,
            rel_xyz,
            rel_e,
        }
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
        let mut pre_print = true;
        for node in self.nodes.iter_mut() {
            if let Node::Vertex(v) = node {
                v.id = id;
                id += 1;
                if v.prev.is_some() {
                    unsafe {
                        v.from = (*(v.prev.unwrap())).to.clone();
                    }
                }
                if pre_print {
                    if v.to.x > 5.0 && v.to.y > 5.0 {
                        pre_print = false;
                    }
                }
                v.label(pre_print);
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
    fn emit(&self, debug: bool) -> String;
}
impl Emit for Instruction {
    fn emit(&self, debug: bool) -> String {
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
        if debug {
            out += &format!("; {:?}\n", self);
        }
        out + "\n"
    }
}
impl Emit for Line {
    fn emit(&self, debug: bool) -> String {
        match self {
            Line::Instruction(ins) => ins.emit(debug),
            Line::Raw(string) => string.clone(),
        }
    }
}
impl Emit for Pos {
    fn emit(&self, debug: bool) -> String {
        if debug {
            return format!("X{} Y{} Z{} E{} F{}; {:?}\n", self.x, self.y, self.z, self.e, self.f, self);
        }
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
    fn emit(&self, debug: bool) -> String {
        if self.to.x == 0.0
            && self.to.y == 0.0
            && self.to.z == 0.0
            && self.to.e == 0.0
            && self.id == 0
        {
            return "G28\n".to_string();
        }
        let mut out = String::from("G1 ");
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
        out += "\n";
        if debug {
            out += &format!("; {:?}\n; {:?}\n; {:?} \n", self.label, self.from, self.to);
        }
        out
    }
}
impl Emit for Node {
    fn emit(&self, debug: bool) -> String {
        match self {
            Node::Vertex(v) => v.emit(debug),
            Node::NonMove(line) => line.emit(debug),
            Node::LayerStart => "; LAYER START\n".to_string(),
            Node::LayerEnd => "; LAYER END\n".to_string(),
        }
    }
}
impl Emit for Parsed {
    fn emit(&self, debug: bool) -> String {
        let mut out = String::new();
        for node in &self.nodes {
            out += &node.emit(debug);
        }
        out += "\n";
        out
    }
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
