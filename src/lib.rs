#![feature(linked_list_cursors)]
#![allow(dead_code)]

mod analyzer;
mod parse;
mod process;

use parse::*;
use process::*;

fn blend_seam(gcode: &mut Parsed) {
    let mut cur = gcode.nodes.cursor_front_mut();
    let mut flow = -1.0;
    let mut prev: Option<*mut Vertex> = None;
    while cur.peek_next().is_some() {
        // keep track of the last extrusion move the cursor passed
        if let Some(Node::Vertex(v)) = cur.current() {
            if let Some(a)  = gcode.annotations.get(&v.id) {
                if a.label == Label::ExtrusionMove {
                    prev = Some(v as *mut Vertex);
                    flow = a.de / v.dist();
                }
            }       
        }
        if let Some(Node::LayerEnd) = cur.current() {
            cur.move_next();
            // FIXME: NEED TO CHECK IF AT LAST LAYER
            while cur.current().unwrap() != &Node::LayerStart {
                if cur.peek_next().is_none() {
                    break;
                }
                cur.remove_current();
            }
            cur.move_next(); // this is the first move of the next layer
            let Some(Node::Vertex(v)) = cur.current() else {
                break;
                //panic!("failed to find vertex");
            };
            unsafe { (*(prev.unwrap())).to = v.from.clone(); };
            unsafe { (*(prev.unwrap())).to.e = flow * (*(prev.unwrap())).dist(); };
            v.prev = prev;

            subdivide(&mut cur, 10);
        }
        cur.move_next();
    }
}

#[test]
fn seam_blend_test() {
    let mut gcode = Parsed::build("test_onewall.gcode").expect("failed to parse gcode");
    blend_seam(&mut gcode);
    let gcode = gcode.emit();
    use std::fs::File;
    use std::io::prelude::*;
    let mut f = File::create("seam_output.gcode").expect("failed to create file");
    let _ = f.write_all(&gcode.as_bytes());
    todo!();
}

/*
fn spread_seam(gcode: &mut Parsed, wipe_dist: f32) {
    let l = gcode.layers;
    let mut seam_ends: Vec<i32> = Vec::new();
    let first_layer = l.iter().next().unwrap().1;
    let Layer {
        num: _,
        start_id: _,
        end_id: first_seam,
        shapes: _,
        z: _
    } = first_layer;
    seam_ends.push(*first_seam);
    for (id, layer) in l {
        let Layer {
            num: _,
            start_id: start,
            end_id: end,
            shapes: _,
            z: _
        };
        seam_ends.push(end);
    }
    let mut cur = gcode.nodes.cursor_front_mut();
    while cur.peek_next().is_some() {
        if let Some(Node::Vertex(v)) = cur.current() {
            if seam_ends.contains(&v.id) {
                let cur_z = v.to.z;

            }
        }
    }
}*/
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
    let mut gcode = Parsed::build("test.gcode").expect("failed to parse gcode");
    erode(&mut gcode, (82.0, 97.0, 10.0), 5.0);
    let gcode = gcode.emit();
    use std::fs::File;
    use std::io::prelude::*;
    let mut f = File::create("erosion_output.gcode").expect("failed to create file");
    let _ = f.write_all(&gcode.as_bytes());
}
fn modify(gcode: &mut Parsed, filter: fn(&Vertex) -> bool, mod_fn: fn(&mut Vertex)) {
    for node in gcode.nodes.iter_mut() {
        match node {
            Node::Vertex(v) => {
                if filter(v) {
                    mod_fn(v);
                }
            }
            _ => { continue; },
        }
    }
}
#[test]
fn mod_test() {
    let mut gcode = Parsed::build("test.gcode").expect("failed to parse gcode");
    modify(&mut gcode, |v| ((v.to.z.trunc()) as i32) % 2 == 0, |v| v.to.x *= 1.1);
    let gcode = gcode.emit();
    use std::fs::File;
    use std::io::prelude::*;
    let mut f = File::create("mod_output.gcode").expect("failed to create file");
    let _ = f.write_all(&gcode.as_bytes());
}

// fn insert_before(feature)
// fn modify(feature)
// fn replace_with(feature, gcode_sequence)
// fn insert_after(feature)
// fn filter(feature)


mod integration_tests {

    #[cfg(test)]
    use crate::parse::{Emit, Parsed};
    #[test]
    fn import_emit_reemit() {
        let f = "test.gcode";
        let p_init = Parsed::build(f).expect("failed to parse gcode");
        let init = p_init.emit();
        use std::fs::File;
        use std::io::prelude::*;
        let mut f = File::create("test_output.gcode").expect("failed to create file");
        let _ = f.write_all(&init.as_bytes());
        let snd = Parsed::build("test_output.gcode").expect("asdf");
        let snd = snd.emit();
        let snd = Parsed::build(&snd).expect("failed to parse reemitted file");
        assert_eq!(p_init, snd);
    }
}