use std::collections::linked_list::CursorMut;

use crate::parse::*;
use nalgebra::{Point3, Rotation3, Vector3};
pub trait Translate {
    fn translate(&mut self, dx: f32, dy: f32, dz: f32);
}

impl Vertex {
    // translates the previous vertex
    fn translate(&mut self, dx: f32, dy: f32, dz: f32, prev: *mut Vertex) {

        let to_init = self.dist();
        let from_init = unsafe{(*prev).dist()};

        unsafe {
            (*prev).to.x += dx;
            (*prev).to.y += dy;
            (*prev).to.z += dz;
            let new_dist = (*prev).dist();
            let scale = new_dist / from_init;
            let new_e = (*prev).to.e * scale;
            (*prev).to.e = new_e;
        }
 
        self.from.x += dx;
        self.from.y += dy;
        self.from.z += dz;
        let new_dist = self.dist();
        let scale = new_dist / from_init;
        let new_e = self.to.e * scale;
        self.to.e = new_e;

    }
}
#[test]
fn translate_unit_test() {
    let mut gcode = crate::read("G28\nG1 X10 Y10 Z10 E10 F1000\nG1 X20 Y20 Z20 E20 F1000\n")
        .expect("failed to read file");
    let mut cur = gcode.nodes.nodes.cursor_front_mut();
    let mut prev = NodeList::move_next_extrusion(&mut cur).expect("no start extrusion");

    while let Ok(curr) = NodeList::move_next_extrusion(&mut cur) {
        if let Some(node) = cur.current() {
            node.translate(10.0, 10.0, 10.0, &mut cur);
        }
        // do the stuff here
        prev = curr;
        cur.move_next();

    }
    panic!("{:#?}", gcode.nodes);
}
impl Translate for Node {
    fn translate(&mut self, dx: f32, dy: f32, dz: f32) {
        match self {
            Node::Layer(l) => {
                let mut cur = l.nodes.nodes.cursor_front_mut();
                let mut prev = NodeList::move_next_vertex(&mut cur).expect("no start vertex");
                // fixme: shouldn't i translate all nodes here and not just vertices?
                while let Ok(curr) = NodeList::move_next_vertex(&mut cur) {
                    if let Some(Node::Vertex(v)) = cur.current() {
                        v.translate(dx, dy, dz, prev);
                        prev = curr;
                    }
                }
            }
            Node::Shape(s) => {
                let mut cur = s.nodes.nodes.cursor_front_mut();
                let mut prev = NodeList::move_next_vertex(&mut cur).expect("no start vertex");
                while let Ok(curr) = NodeList::move_next_vertex(&mut cur) {
                    if let Some(Node::Vertex(v)) = cur.current() {
                        v.translate(dx, dy, dz, prev);
                        prev = curr;
                    }
                }
            }
            Node::Vertex(v) => {
                v.translate(dx, dy, dz);
            }
            // FIXME: layer changes and shape changes probably also need to get translated
            Node::PrePrint(_) | Node::PostPrint(_) | Node::Change(_) | Node::NonMove(_, _) => {}
        }
    }
}

#[test]
fn translate_test() {
    use crate::emit::Emit;
    use std::fs::File;
    use std::io::Write;
    let mut gcode = crate::read("test.gcode").expect("failed to read file");
    for node in gcode.nodes.nodes.iter_mut() {
        node.translate(10.0, 10.0, 10.0);
    }
    let gcode = gcode.emit(false);
    let mut file = File::create("test_translate.gcode").expect("failed to create file");
    file.write_all(gcode.as_bytes())
        .expect("failed to write file");
}

trait Rotate {
    fn rotate(&mut self, angle: f32, axis: &Axis);
}
enum Axis {
    X,
    Y,
    Z,
}
impl Rotate for Vertex {
    fn rotate(&mut self, angle: f32, axis: &Axis) {
        let axis = match axis {
            Axis::X => Vector3::x_axis(),
            Axis::Y => Vector3::y_axis(),
            Axis::Z => Vector3::z_axis(),
        };
        let xi = self.to.x;
        let yi = self.to.y;
        let zi = self.to.z;
        let pt = Point3::new(xi, yi, zi);
        let rot = Rotation3::from_axis_angle(&axis, angle);
        let pt = rot * pt;
        let dx = pt.x - xi;
        let dy = pt.y - yi;
        let dz = pt.z - zi;
        self.translate(dx, dy, dz);
    }
}

impl Rotate for Shape {
    fn rotate(&mut self, angle: f32, axis: &Axis) {
        for node in self.nodes.nodes.iter_mut() {
            node.rotate(angle, axis);
        }
    }
}
impl Rotate for Layer {
    fn rotate(&mut self, angle: f32, axis: &Axis) {
        for node in self.nodes.nodes.iter_mut() {
            node.rotate(angle, axis);
        }
    }
}
impl Rotate for Node {
    fn rotate(&mut self, angle: f32, axis: &Axis) {
        match self {
            Node::Layer(l) => {
                l.rotate(angle, axis);
            }
            Node::Shape(s) => {
                s.rotate(angle, axis);
            }
            Node::Vertex(v) => {
                v.rotate(angle, axis);
            }
            Node::Change(_) | Node::NonMove(_, _) | Node::PostPrint(_) | Node::PrePrint(_) => {}
        }
    }
}
#[test]
fn rotate_test() {
    use crate::emit::Emit;
    use std::fs::File;
    use std::io::Write;
    let mut gcode = crate::read("test.gcode").expect("failed to read file");
    for node in gcode.nodes.nodes.iter_mut() {
        node.rotate(0.5, &Axis::Z);
    }
    let mut file = File::create("test_rotate.gcode").expect("failed to create file");
    file.write_all(gcode.emit(false).as_bytes())
        .expect("failed to write file");
}

trait SubDivide {
    fn subdivide(&self, max_length: f32);
}

impl SubDivide for Vertex {
    fn subdivide(&self, max_length: f32) {}
}
/*
trait Join {
    fn join(&mut self, next: Node);
}
impl Join for Vertex {
    fn join(&mut self, prev: Node) {
        // whatever previously owned the prev vertex has been deleted
        // and now the next vertex takes ownership of it
        let prev = match prev{
            Node::Vertex(v) => Box::new(core::cell::RefCell::new(v)),
            _ => panic!("prev must be a vertex"),
        };
        {
            let mut prev = prev.borrow_mut();
            // copy the flow from prev move
            let flow = prev.flow();
            prev.from = self.to();
            prev.to.e = prev.dist() * flow;
        }
        self.prev = Some(prev);
    }
}

impl Join for Shape {
    fn join(&mut self, mut next: Node) {
        let mut last = self.nodes.pop_back().unwrap();
        let last = last.vertex_mut();
        let next = next.layer_mut();
        let mut first = next.nodes.pop_front().unwrap();
        last.join(first);
        self.nodes.push_back(first);
        self.nodes.append(&mut next.nodes);
    }
}

impl Join for Layer {
    fn join(&mut self, mut next: Node) {
        let mut last = self.nodes.pop_back().unwrap();
        let last = last.vertex_mut();
        let next = next.layer_mut();
        let mut first = next.nodes.pop_front().unwrap();
        last.join(first);
        self.nodes.push_back(first);
        self.nodes.append(&mut next.nodes);
    }
} */
