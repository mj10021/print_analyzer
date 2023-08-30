#![feature(linked_list_cursors)]
#![allow(dead_code)]

mod analyzer;
mod parse;

use parse::*;

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
            _ => (),
        }
    }
}
#[test]
fn mod_test() {
    let mut gcode = Parsed::build("test.gcode").expect("failed to parse gcode");
    modify(&mut gcode, |v| v.to.x > 0.0, |v| v.to.e *= 2.0);
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