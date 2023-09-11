use crate::parse::*;
use std::collections::linked_list::CursorMut;

fn delete(cur: &mut CursorMut<Node>) {
    if let Some(Node::Vertex(v)) = cur.current() {
        let prev = v.prev;
        let _ = cur.remove_current();
        // keep moving forward until reaching move node or end of list
        while let Some(Node::NonMove(_)) = cur.current() {
            cur.move_next();
        }
        if let Some(Node::Vertex(v)) = cur.current() {
            v.prev = prev;
        }
    } else {
        cur.remove_current();
    }
}
fn insert_g1(cur: &mut CursorMut<Node>, g1: G1) {
    // insert before current node
    let Some(Node::Vertex(curr)) = cur.current() else {
        panic!("insert_g1 called from non-move node");
    };
    let prev = curr.prev.unwrap();
    let v = Vertex {
        id: -1,
        label: Label::Uninitialized,
        prev: Some(prev),
        from: unsafe { (*prev).to }.clone(),
        to: Pos::build(&unsafe { (*prev).to }, &g1),
    };
    curr.from = v.to.clone();
    cur.insert_before(Node::Vertex(v));
    let new_prev = match cur.peek_prev() {
        Some(Node::Vertex(v)) => Some(v as *mut Vertex),
        _ => panic!("failed to insert vertex"),
    };
    let Some(Node::Vertex(curr)) = cur.current() else {
        panic!("insert_g1 called from non-move node");
    };
    curr.prev = new_prev;
}
#[test]
fn ins_test() {
    let mut gcode = Parsed::build("G28\nG1x1e1\ng1x2e1\ng1x3e1\ng1x4e1\n").expect("asdf");
    let mut cur = gcode.nodes.cursor_front_mut();
    cur.move_next();
    cur.move_next();
    cur.move_next();
    let g = G1 {
        move_id: -1,
        x: Some(0.0),
        y: Some(100.0),
        z: Some(0.0),
        e: Some(100.0),
        f: Some(0.0),
    };
    insert_g1(&mut cur, g);
    panic!("{:?}", gcode);
}
