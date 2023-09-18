use crate::parse::*;
use nalgebra::{Rotation3, Vector3, Point3};
pub trait Translate {
    fn translate(&mut self, dx: f32, dy: f32, dz: f32);
}

impl Translate for Vertex {
    fn translate(&mut self, dx: f32, dy: f32, dz: f32) {
        if self.prev.is_none() {
            return;
        }
        println!("{:#?}", self);
        let init_dist = self.dist();
        let init_flow = {
            if self.extrusion_move() {
                self.flow()
            } else { 0.0 }
        };

        self.to.x += dx;
        self.to.y += dy;
        self.to.z += dz;


        let prev = self.prev.unwrap();
        unsafe {
            let prev_dist = (*prev).dist();
            (*prev).to.x += dx;
            (*prev).to.y += dy;
            (*prev).to.z += dz;
            let new_prev_dist = (*prev).dist();
            let mut scale = new_prev_dist / prev_dist;
            if scale.is_infinite() || scale.is_nan() {
                scale = 0.0;
            }
            (*prev).to.e *= scale;
            self.from = (*prev).to.clone();
        }
        let new_dist = self.dist();
        let mut scale = new_dist / init_dist;
        if scale.is_infinite() || scale.is_nan() {
            scale = 0.0;
        }
        self.to.e = init_flow * scale;
    }








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
    //         assert!(self.prev.is_some(), "translate from unhomed state");
    //         //assert!((*(self.prev.unwrap())).to == self.from, "node not updated");
    //         let prev = self.prev.unwrap();
    //         let (xi, yi, zi) = (*prev).from.to_tup();
    //         let (xf, yf, zf) = (*prev).to.to_tup();
    //         let dxi = xf - xi;
    //         let dyi = yf - yi;
    //         let dzi = zf - zi;
    //         let di = (dxi.powf(2.0) + dyi.powf(2.0) + dzi.powf(2.0)).sqrt();
    //         (*prev).to.x += dx;
    //         (*prev).to.y += dy;
    //         (*prev).to.z += dz;
    //         self.from.x += dx;
    //         self.from.y += dy;
    //         self.from.z += dz;
    //         let (xf, yf, zf) = (*prev).to.to_tup();
    //         let dxf = xf - xi;
    //         let dyf = yf - yi;
    //         let dzf = zf - zi;
    //         let df = (dxf.powf(2.0) + dyf.powf(2.0) + dzf.powf(2.0)).sqrt();
    //         let mut scale = df / di;
    //         if scale.is_infinite() || scale.is_nan() {
    //             scale = 0.0;
    //         }
    //         (*prev).to.e *= scale;
    //         let df = self.dist();
    //         let mut scale = df / di;
    //         if scale.is_infinite() || scale.is_nan() {
    //             scale = 0.0;
    //         }
    //         self.to.e *= scale;
    //     }
}

impl Translate for Shape {
    fn translate(&mut self, dx: f32, dy: f32, dz: f32) {
        for node in self.nodes.iter_mut() {
            node.translate(dx, dy, dz);
        }
    }
}

impl Translate for Layer {
    fn translate(&mut self, dx: f32, dy: f32, dz: f32) { 
        for node in self.nodes.iter_mut() {
            node.translate(dx, dy, dz);
        }
    }
}
impl Translate for Node {
    fn translate(&mut self, dx: f32, dy: f32, dz: f32) {
        match self {
            Node::Layer(l) => { l.translate(dx, dy, dz); },
            Node::Shape(s) => { s.translate(dx, dy, dz); },
            Node::Vertex(v) => { v.translate(dx, dy, dz); },
            // FIXME: layer changes and shape changes probably also need to get translated
            Node::PrePrint(_) | Node::LayerChange(_) | Node::ShapeChange(_) | Node::NonMove(_) => {},
        }
    }
}

#[test]
fn translate_test() {
    use std::fs::File;
    use std::io::Write;
    use crate::emit::Emit;
    let mut gcode = crate::read("test.gcode").expect("failed to read file");
    for node in gcode.nodes.iter_mut() {
        node.translate(10.0, 10.0, 10.0);
    }
    let mut file = File::create("test_translate.gcode").expect("failed to create file");
    file.write_all(gcode.emit(false).as_bytes()).expect("failed to write file");
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
#[test]
fn rotate_test() {
    use std::fs::File;
    use std::io::Write;
    use crate::emit::Emit;
    let mut gcode = crate::read("test.gcode").expect("failed to read file");
    for node in gcode.nodes.iter_mut() {
        node.rotate(0.5, &Axis::Z);
    }
    let mut file = File::create("test_rotate.gcode").expect("failed to create file");
    file.write_all(gcode.emit(false).as_bytes()).expect("failed to write file");

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