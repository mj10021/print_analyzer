use std::collections::linked_list::CursorMut;

use crate::parse::*;



impl Vertex {
    // FIXME: i shoudl write a version that just takes a cursor
    // translates the previous vertex
    pub fn translate_unsafe(&mut self, dx: f32, dy: f32, dz: f32, prev: *mut Vertex) {
        let to_init = self.dist();
        let from_init = unsafe { (*prev).dist() };

        // SAFETY: prev points to a vertex in the same linked list with no references
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
        let mut scale = new_dist / to_init;
        if !scale.is_finite() | scale.is_nan() {
            scale = 0.0;
        }
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
            let Some(Node::Vertex(v)) = cur.current() else {
                todo!()
            };
            v.translate_unsafe(dx, dy, dz, prev)
        }
        cur.move_next();
    }
    let gcode = gcode.emit(false);
    let mut file = File::create("test_translate.gcode").expect("failed to create file");
    file.write_all(gcode.as_bytes())
        .expect("failed to write file");
}
 