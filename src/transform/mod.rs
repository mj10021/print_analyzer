use std::collections::linked_list::CursorMut;

use crate::parse::*;
use nalgebra::{Point3, Rotation3, Vector3};

impl Vertex {
    // FIXME: flow is wrong
    // translates the previous vertex
    fn translate(&mut self, dx: f32, dy: f32, dz: f32, prev: *mut Vertex) {

        let to_init = self.dist();
        let from_init = unsafe{(*prev).dist()};

        // SAFETY: prev must point to (finish this)
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
fn translate_test() {
    use crate::emit::Emit;
    use std::fs::File;
    use std::io::Write;
    let mut gcode = crate::read("test.gcode").expect("failed to read file");
    let mut cur = gcode.nodes.nodes.cursor_front_mut();
    let _ = NodeList::move_next_vertex(&mut cur);
    let _ = NodeList::move_next_vertex(&mut cur);
    let _ = NodeList::move_next_vertex(&mut cur);
    while cur.peek_next().is_some() {
        let at_v = {
            let mut out = false;
            if let Some(Node::Vertex(_)) = cur.current() {
                out = true;
            }
            out
        };
        if at_v {
            let (dx, dy, dz) = (10.0, 10.0, 10.0);
            let prev = NodeList::peek_prev_vertex(&mut cur);
            let Some(Node::Vertex(v)) = cur.current() else {todo!()};
            v.translate(dx, dy, dz, prev)
        }
        cur.move_next();
    }
    let gcode = gcode.emit(false);
    let mut file = File::create("test_translate.gcode").expect("failed to create file");
    file.write_all(gcode.as_bytes())
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
