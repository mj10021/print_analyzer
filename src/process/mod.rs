use std::collections::linked_list::CursorMut;
use crate::parse::*;

pub fn merge_verteces(cur: &mut CursorMut<Node>, until: i32) {
    let Some(Node::Vertex(curr)) = cur.current() else {
        panic!("blend_verteces called from non-move node");
    };
    assert!(curr.id < until);
    let prev = curr.prev.clone();
    let mut i = curr.id;
    cur.move_next();
    while i < until {
        if let Some(Node::Vertex(next)) = cur.current() {
            i = next.id;
            cur.remove_current();
        } else { cur.move_next(); }
    }
    while cur.peek_next().is_some() {
        if let Some(Node::Vertex(_)) = cur.current() {
            break;
        }
        cur.move_next();
    }
    let Some(Node::Vertex(curr)) = cur.current() else {
        panic!("blending from non-move node");
    };
    curr.prev = prev;
    curr.from = unsafe { (*prev.unwrap()).to }.clone();

}
#[test]
fn merge_test() {
    let mut gcode = Parsed::build("test.gcode").expect("failed to parse");
    let mut cur = gcode.nodes.cursor_front_mut();
    while cur.peek_next().is_some() {
        if let Some(Node::LayerStart) = cur.current() {
            break;
        }
        cur.move_next();
    }
    let Some(Node::Vertex(v)) = cur.peek_next() else {
        panic!("failed to find vertex");
    };
    let until = v.id;
    while cur.peek_prev().is_some() {
        if let Some(Node::LayerEnd) = cur.current() {
            break;
        }
        cur.move_prev();
    }
    loop {
        if let Some(Node::Vertex(v)) = cur.current() {
                break;
        }
        cur.move_next();
    }
    merge_verteces(&mut cur, until);
    panic!("{:?}", gcode);
}

pub fn subdivide(cur: &mut CursorMut<Node>, count: i32) {
    assert!(count > 1);
    // take a copy of the value of the current node
    let end = match cur.current() {
        Some(Node::Vertex(v)) => v.clone(),
        _ => panic!("subdivide called from non-move node"),
    };
    let start = end.prev.unwrap();
    let x_seg = (end.to.x - end.from.x) / count as f32;
    let y_seg = (end.to.y - end.from.y) / count as f32;
    let z_seg = (end.to.z - end.from.z) / count as f32;
    let mut prev = Some(start);
    for i in 1..count {
        let v = Vertex {
            id: -1,
            prev,
            from: Pos {
                x: end.from.x,
                y: end.from.y,
                z: end.from.z,
                e: end.from.e / count as f32,
                f: end.from.f,
            },
            to: Pos {
                x: end.from.x + x_seg * i as f32,
                y: end.from.y + y_seg * i as f32,
                z: end.from.z + z_seg * i as f32,
                e: end.from.e / count as f32,
                f: end.from.f,
            },
        };
        cur.insert_before(Node::Vertex(v));
        prev = match cur.peek_prev() {
            Some(Node::Vertex(v)) => Some(v as *mut Vertex),
            _ => panic!("failed to insert vertex"),
        }
    }
    // now edit the original node
    let end = match cur.current() {
        Some(Node::Vertex(v)) => v,
        _ => panic!("subdivide called from non-move node"),
    };
    end.prev = prev;
    end.from = unsafe { (*(end.prev.unwrap())).to.clone() };
}
#[test]
fn sub_test() {
    let mut gcode = Parsed::build("G28\nG1x1e1\ng1x2e1\ng1x3e1\ng1x4e1\n").expect("asdf");
    let mut cur = gcode.nodes.cursor_front_mut();
    let mut c = 0;
    while c < 2 {
        if let Some(Node::Vertex(_)) = cur.current() {
            c += 1;
        }
        cur.move_next();
        assert!(cur.peek_next().is_some());
    }
    subdivide(&mut cur, 5);
    panic!("{:?}", gcode);
}
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

