#![feature(linked_list_cursors)]
#![allow(dead_code)]

mod analyzer;
mod parse;
mod process;

use parse::*;
use process::*;
use parse::feature_finder::Layer;
use std::collections::VecDeque;

fn edit_seam(gcode: &mut Parsed, glob: VecDeque<Node>) {
    let mut cur = gcode.nodes.cursor_front_mut();
    while cur.peek_next().is_some() {
        if let Some(Node::LayerStart) = cur.current() {
            cur.move_next();
            while cur.current().unwrap() != &Node::LayerEnd {
                cur.remove_current();
            }
            // FIXME: once the moves between layers are popped,
            // need to recalculate the prev to curr vertex and then subdivide
            // to create the ramped seam
            cur.move_next(); // this is the first move of the next layer
            subdivide(&mut cur, 10);
        }
    }




    let mut layer2 = false;
    for node in gcode.nodes.iter() {
        if let Node::Vertex(v) = node {
            // first skip the first layer
            if let Some(Layer {num: 2, ..}) = gcode.layers.get(&v.id) {
                layer2 = true;
            }
            if !layer2 {
                continue;
            }
            // then take a blob of all the nodes between layers and replace with new blob 
            if !gcode.layers.contains_key(&v.id) {
                todo!();

            }
        }
    }
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
        let init = Parsed::build(f).expect("failed to parse gcode");
        let init = init.emit();
        use std::fs::File;
        use std::io::prelude::*;
        let mut f = File::create("test_output.gcode").expect("failed to create file");
        let _ = f.write_all(&init.as_bytes());
        let snd = Parsed::build("test_output.gcode").expect("asdf");
        let snd = snd.emit();
        assert_eq!(init, snd);
    }
}