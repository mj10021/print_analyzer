#![feature(linked_list_cursors)]
#![allow(dead_code)]

mod parse;
mod emit;
mod transform;
//mod gui;
use parse::{Vertex, Node, Label, Parsed, Pos, file_reader::build_nodes};

use std::collections::linked_list::CursorMut;

fn read(path: &str) -> Result<Parsed, Box<dyn std::error::Error>> {
    let nodes = build_nodes(path)?;
    Ok(Parsed::build(nodes))
}

fn normalize_move_len(gcode: &mut Parsed, len: f32) {
    // stuck in loop
    subdivide_all(gcode, len);
    let mut dist = 0.0;
    let mut start = -1;
    let mut cur = gcode.nodes.cursor_front_mut();

    while cur.peek_next().is_some() {
        let (len, id) = match cur.current() {
            Some(Node::Vertex(v)) => (v.dist(), v.id),
            _ => (0.0, -1),
        };
        dist += len;
        if dist > len {
            let current = id;
            dist = 0.0;
            loop {
                if let Some(Node::Vertex(v)) = cur.peek_prev() {
                    if v.id == start {
                        break;
                    }
                }
                cur.move_prev();
            }
            loop {
                if let Some(Node::Vertex(v)) = cur.current() {
                    if v.id == current {
                        start = current;
                        break;
                    } else {
                        cur.remove_current();
                    }
                } else {
                    cur.move_next();
                }
            }
        }
        cur.move_next();
    }
}
#[test]
fn normalize_test() {
    use crate::emit::Emit;
    let mut gcode = read("test.gcode").expect("failed to parse gcode");
    normalize_move_len(&mut gcode, 0.5);
    let gcode = gcode.emit(false);
    use std::fs::File;
    use std::io::prelude::*;
    let mut f = File::create("normalize_output.gcode").expect("failed to create file");
    let _ = f.write_all(&gcode.as_bytes());
}

fn subdivide_all(gcode: &mut Parsed, len: f32) {
    let mut cur = gcode.nodes.cursor_front_mut();
    while cur.current().is_some() {
        if let Some(Node::Vertex(v)) = cur.current() {
            let count = (v.dist() / len).trunc() as i32;
            if v.label == Label::PlanarExtrustion || v.label == Label::NonPlanarExtrusion {
                subdivide(&mut cur, count);
            }
        }
        cur.move_next();
    }
}
#[test]
fn sub_all_test() {
    use crate::emit::Emit;
    let mut gcode = read("test_line_wall.gcode").expect("failed to parse gcode");
    subdivide_all(&mut gcode, 2.0);
    let gcode = gcode.emit(false);
    use std::fs::File;
    use std::io::prelude::*;
    let mut f = File::create("sub_all_output.gcode").expect("failed to create file");
    let _ = f.write_all(&gcode.as_bytes());
}

fn erode(gcode: &mut Parsed, location: (f32, f32, f32), radius: f32) {
    let location = Pos {
        x: location.0,
        y: location.1,
        z: location.2,
        ..Pos::unhomed()
    };

    for node in gcode.nodes.iter_mut() {
        match node {
            Node::Vertex(v) => {
                let dist = v.to.dist(&location);
                if dist < radius {
                    v.to.e = 0.0;
                }
            }
            _ => (),
        }
    }
}
#[test]
fn erode_test() {
    use crate::emit::Emit;
    let mut gcode = read("test.gcode").expect("failed to parse gcode");
    erode(&mut gcode, (82.0, 97.0, 10.0), 5.0);
    let gcode = gcode.emit(false);
    use std::fs::File;
    use std::io::prelude::*;
    let mut f = File::create("erosion_output.gcode").expect("failed to create file");
    let _ = f.write_all(&gcode.as_bytes());
}
fn filter(gcode: &mut Parsed, filter: fn(&Vertex) -> bool) {
    for node in gcode.nodes.iter_mut() {
        match node {
            Node::Vertex(v) => {
                if filter(v) {
                    v.to.e = 0.0;
                }
            }
            _ => {
                continue;
            }
        }
    }
}
#[test]
fn filter_test() {
    use crate::emit::Emit;
    let mut gcode = read("test.gcode").expect("failed to parse gcode");
    filter(&mut gcode, |v| (v.from.x - v.to.x) > (v.from.y - v.to.y));
    gcode.update_nodes();
    let gcode = gcode.emit(false);
    use std::fs::File;
    use std::io::prelude::*;
    let mut f = File::create("filter_output.gcode").expect("failed to create file");
    let _ = f.write_all(&gcode.as_bytes());
}
fn filter_map(gcode: &mut Parsed, filter: fn(&Vertex) -> bool, map: fn(&mut Vertex)) {
    for node in gcode.nodes.iter_mut() {
        match node {
            Node::Vertex(v) => {
                if filter(v) {
                    map(v);
                }
            }
            _ => {
                continue;
            }
        }
    }
    gcode.update_nodes();
}
fn map(gcode: &mut Parsed, map: fn(&mut Vertex)) {
    for node in gcode.nodes.iter_mut() {
        match node {
            Node::Vertex(v) => {
                map(v);
            }
            _ => {
                continue;
            }
        }
    }
}
#[test]
fn map_test() {
    use transform::Translate;
    use crate::emit::Emit;
    use nalgebra::{Rotation3, Vector3};
    use std::f32::consts::FRAC_PI_2;
    let mut gcode = read("test_one_wall_cylinder.gcode").expect("failed to parse gcode");
    subdivide_all(&mut gcode, 0.5);
    gcode.update_nodes();
    for node in gcode.nodes.iter_mut() {
        if let Node::Vertex(v) = node {
            let (x, y, z) = v.get_vector();
            let vec = Vector3::new(x, y, z);
            let rot = Rotation3::from_euler_angles(0.0, 0.0, FRAC_PI_2);
            let vec = rot * vec;
            if v.prev.is_some()
                && (v.label == Label::PlanarExtrustion || v.label == Label::NonPlanarExtrusion)
                && unsafe {
                    (*(v.prev.unwrap())).label == Label::PlanarExtrustion
                        || (*(v.prev.unwrap())).label == Label::NonPlanarExtrusion
                }
            {
                v.translate(
                    (vec.x * v.id as f32).sin() * 0.33,
                    (vec.y * v.id as f32).sin() * 0.33,
                    0.0,
                );
            }
        }
    }
    gcode.update_nodes();
    let gcode = gcode.emit(false);
    use std::fs::File;
    use std::io::prelude::*;
    let mut f = File::create("map_output.gcode").expect("failed to create file");
    let _ = f.write_all(&gcode.as_bytes());
}
// fn insert_before(feature)
// fn modify(feature)
// fn replace_with(feature, gcode_sequence)
// fn insert_after(feature)

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
        } else {
            cur.move_next();
        }
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


pub fn subdivide(cur: &mut CursorMut<Node>, count: i32) {
    // FIXME: this is not working on the first move of a shape
    // FIXME: I NEED TO CHECK THE MATH HERE!!!!!!!!
    if count < 2 {
        return;
    }
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
    let e_seg = end.to.e / count as f32;
    let mut prev = Some(start);
    for i in 1..count {
        let v = Vertex {
            id: -1,
            label: Label::Uninitialized,
            prev,
            from: Pos {
                x: end.from.x,
                y: end.from.y,
                z: end.from.z,
                e: end.from.e,
                f: end.from.f,
            },
            to: Pos {
                x: end.from.x + x_seg * i as f32,
                y: end.from.y + y_seg * i as f32,
                z: end.from.z + z_seg * i as f32,
                e: e_seg,
                f: end.to.f,
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
    end.to.e *= 1.0 / count as f32;
    end.prev = prev;
    end.from = unsafe { (*(end.prev.unwrap())).to.clone() };
}
#[test]
fn one_sub_test() {
    use crate::emit::Emit;
    let gcode = "G28\nf700\nG1x50y50z0.4\ng1x80e5\n";
    let mut gcode = read(gcode).expect("failed to parse");
    subdivide_all(&mut gcode, 2.0);
    use std::fs::File;
    use std::io::prelude::*;
    let mut f = File::create("sub_output.gcode").expect("failed to create file");
    let _ = f.write_all(&gcode.emit(false).as_bytes());
}
#[test]
fn sub_test() {
    let mut gcode = read("G28\nG1x1e1\ng1x2e1\ng1x3e1\ng1x4e1\n").expect("asdf");
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

mod integration_tests {

    #[cfg(test)]
    use std::fs::File;
    #[test]
    fn import_emit_reemit() {
        use std::io::prelude::*;
        use crate::emit::Emit;
        use crate::read;
        let f = "test.gcode";
        let p_init = read(f).expect("failed to parse gcode");
        let init = p_init.emit(false);

        let mut f = File::create("test_output.gcode").expect("failed to create file");
        let _ = f.write_all(&init.as_bytes());
        let snd = read("test_output.gcode").expect("asdf");
        let snd = snd.emit(false);
        let snd = read(&snd).expect("failed to parse reemitted file");
        let mut f = File::create("test_output2.gcode").expect("failed to create file");
        let _ = f.write_all(&snd.emit(false).as_bytes());
        assert_eq!(p_init, snd);
    }
    #[test]
    fn specific_random_gcode_issue() {
        use crate::{read, emit::Emit};
        use std::io::prelude::*;
        let gcode = "G28
        G1 X179 Y-2 F2400 
        G1 Z3 F720 
        G1 X170 F1000 
        G1 Z0.2 F720 
        ; END LAYER CHANGE
        ; START SHAPE
        G1 X110 E8 F900 
        G1 X40 E10 F700 
        G92 E0
        M221 S95
        G21
        G90
        M83
        M900 K0.06
        M107
        G92 E0
        M73 P1 R11
        ; END SHAPE
        M73 P2 R11
        ; START SHAPE CHANGE
        G1 F720 
        G1 Z0.3 
        G1 Z0.5 
        G1 X78.662 Y77.959 F9000 
        G1 Z0.3 F720 
        G1 E3 F1200
        G1 X78.663 Y78 E3.000 F1200
        G1 X87 Y83 E13";
        let gcode = read(gcode).expect("asf");
        let mut f = File::create("asdf_test.gcode").expect("failed to create file");
        let _ = f.write_all(&gcode.emit(false).as_bytes());
    }
}