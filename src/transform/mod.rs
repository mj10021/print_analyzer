use crate::parse::*;
use nalgebra::{Rotation3, Unit, Vector3, Point3};
trait Translate {
    fn translate(&self, dx: f32, dy: f32, dz: f32);
}

impl Translate for Vertex {
    fn translate(&self, dx: f32, dy: f32, dz: f32) {
    }
}

impl Translate for Shape {
    fn translate(&self, dx: f32, dy: f32, dz: f32) {
    }
}

impl Translate for Layer {
    fn translate(&self, dx: f32, dy: f32, dz: f32) { 
    }
}
impl Translate for Node {
    fn translate(&self, dx: f32, dy: f32, dz: f32) {
        match self {
            Node::Layer(l) => { l.translate(dx, dy, dz); },
            Node::Shape(s) => { s.translate(dx, dy, dz); },
            Node::Vertex(v) => { v.translate(dx, dy, dz); },
            // FIXME: layer changes and shape changes probably also need to get translated
            Node::PrePrint(_) | Node::LayerChange(_) | Node::ShapeChange(_) | Node::NonMove(_) => {},
        }
    }
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
    }
}

impl Rotate for Shape {
    fn rotate(&mut self, angle: f32, axis: &Axis) {
        for node in self.nodes.iter_mut() {
            node.rotate(angle, axis);
        }
    }
}
impl Rotate for Layer {
    fn rotate(&mut self, angle: f32, axis: &Axis) {
        for node in self.nodes.iter_mut() {
            node.rotate(angle, axis);
        }
    }
}
impl Rotate for Node {
    fn rotate(&mut self, angle: f32, axis: &Axis) {
        match self {
            Node::Layer(l) => { l.rotate(angle, axis); },
            Node::Shape(s) => { s.rotate(angle, axis); },
            Node::Vertex(v) => { v.rotate(angle, axis); },
            Node::LayerChange(_) | Node::ShapeChange(_) | Node::NonMove(_) | Node::PrePrint(_) => {},
        }
    }
}


trait SubDivide {
    fn subdivide(&self, max_length: f32);
}

impl SubDivide for Vertex {
    fn subdivide(&self, max_length: f32) {
    }
}

trait Join {
    fn join(&mut self, next: &mut Node);
}
impl Join for Vertex {
    fn join(&mut self, next: &mut Node) {
        let next = next.vertex_mut();
        // copy the flow from prev move
        let flow = next.flow();
        next.from = self.to;
        next.prev = Some(self as *mut Vertex);
        next.to.e = next.dist() * flow;
    }
}

impl Join for Shape {
    fn join(&mut self, next: &mut Node) {
        let mut last = self.nodes.pop_back().unwrap();
        let last = last.vertex_mut();
        let next = next.layer_mut();
        let mut first = next.nodes.pop_front().unwrap();
        last.join(&mut first);
        self.nodes.push_back(first);
        self.nodes.append(&mut next.nodes);        
    }
}

impl Join for Layer {
    fn join(&mut self, next: &mut Node) {
        let mut last = self.nodes.pop_back().unwrap();
        let last = last.vertex_mut();
        let next = next.layer_mut();
        let mut first = next.nodes.pop_front().unwrap();
        last.join(&mut first);
        self.nodes.push_back(first);
        self.nodes.append(&mut next.nodes);
    }    
}