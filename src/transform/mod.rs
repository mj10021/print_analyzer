use crate::parse::*;
use nalgebra::{Point3, Rotation3, Vector3};
pub trait Translate {
    fn translate(&mut self, dx: f32, dy: f32, dz: f32);
}
impl Vertex {
    // SAFETY: self.prev needs to be a raw pointer to a Node::Vertex
    unsafe fn prev_vrtx_raw(&self) -> *mut Vertex {
        let prev = self.prev.unwrap();
        (*prev).vertex_mut_raw()
    }
}
impl Translate for Vertex {
    fn translate(&mut self, dx: f32, dy: f32, dz: f32) {
        let init_dist = self.dist();
        let init_flow = {
            if self.extrusion_move() {
                self.flow()
            } else {
                0.0
            }
        };
        {
            if self.prev.is_none() {
                let init_dist = self.dist();
                self.from.x += dx;
                self.from.y += dy;
                self.from.z += dz;
                let new_dist = self.dist();
                let mut scale = new_dist / init_dist;
                if scale.is_infinite() || scale.is_nan() {
                    scale = 0.0;
                }
                self.to.e *= scale;
                return;
            }
            let prev = self.prev.unwrap();
            let test = unsafe { (*prev).to() };
            let test2 = self.from();

            assert!(test == test2, "{:#?}\r\n{:#?}", test, test2);
            // SAFETY: prev needs to be a raw pointer to a Node::Vertex
            unsafe {
                // FIXME: it might not be safe to use a mut pointer here,
                // need to check the nomicon
                let v = self.prev_vrtx_raw();
                let prev_dist = (*v).dist();
                (*v).to.x += dx;
                (*v).to.y += dy;
                (*v).to.z += dz;
                let new_prev_dist = (*v).dist();
                let mut scale = new_prev_dist / prev_dist;
                if scale.is_infinite() || scale.is_nan() {
                    scale = 0.0;
                }
                (*v).to.e *= scale;
                self.from = (*v).to.clone();
            }
        }
        let new_dist = self.dist();
        let mut scale = new_dist / init_dist;
        if scale.is_infinite() || scale.is_nan() {
            scale = 0.0;
        }
        self.to.e = init_flow * scale;
    }
}
#[test]
fn translate_unit_test() {
    let mut gcode = crate::read("G28\nG1 X10 Y10 Z10 E10 F1000\nG1 X20 Y20 Z20 E20 F1000\n")
        .expect("failed to read file");
    for node in gcode.nodes.nodes.iter_mut() {
        node.translate(10.0, 10.0, 10.0);
    }
    gcode.nodes.update();
    panic!("{:#?}", gcode.nodes);
}
impl Translate for Shape {
    fn translate(&mut self, dx: f32, dy: f32, dz: f32) {
        for node in self.nodes.nodes.iter_mut() {
            node.translate(dx, dy, dz);
        }
    }
}

impl Translate for Layer {
    fn translate(&mut self, dx: f32, dy: f32, dz: f32) {
        for node in self.nodes.nodes.iter_mut() {
            node.translate(dx, dy, dz);
        }
    }
}
impl Translate for Node {
    fn translate(&mut self, dx: f32, dy: f32, dz: f32) {
        match self {
            Node::Layer(l) => {
                l.translate(dx, dy, dz);
            }
            Node::Shape(s) => {
                s.translate(dx, dy, dz);
            }
            Node::Vertex(v) => {
                v.translate(dx, dy, dz);
            }
            // FIXME: layer changes and shape changes probably also need to get translated
            Node::PrePrint(_) | Node::LayerChange(_) | Node::ShapeChange(_) | Node::NonMove(_, _) => {}
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
            Node::LayerChange(_) | Node::ShapeChange(_) | Node::NonMove(_, _) | Node::PrePrint(_) => {}
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
