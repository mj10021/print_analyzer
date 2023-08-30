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
fn modify<F>(gcode: &mut Parsed, filter: fn(&Vertex) -> bool, mod_fn: fn(&mut Vertex)) {
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

// fn insert_before(feature)
// fn modify(feature)
// fn replace_with(feature, gcode_sequence)
// fn insert_after(feature)
// fn filter(feature)

/*
fn offset_layers(gcode: &mut ParsedGCode, dx: f32, dy: f32, layer_rule: F(i32) -> bool)
where
    F: Copy + FnOnce(i32) -> bool,
{
    let mut cur = gcode.instructions.cursor_front_mut();
}

fn ann_filter<F>(gcode: &mut Parsed, f: F)
where
    F: Copy + FnOnce(usize) -> bool,
{
    let mut cur = gcode.nodes.cursor_front_mut();
    while !cur.at_end() {
        if let Some((Line::G1(g1), _)) = cur.current() {
            {
                if f(g1.ann_i()) {
                    g1.e = None;
                }
            }
        }
        cur.next().expect("past end of list");
    }
    gcode.set_states().expect("failed to update states");
    gcode.ann = Annotation::build(gcode);
}

#[test]
fn ann_filter_test() {
    use crate::parse::feature_finder::shape_len;
    use crate::parse::Emit;
    let mut gcode = ParsedGCode::build("test.gcode").expect("failed to parse gcode");
    let shapes = shape_len(&gcode);
    panic!("{:?}", shapes);
    let f = |i: usize| shapes.get(&(i as i32)).unwrap_or(&(-1, -1.0)).1 < 0.1;
    ann_filter(&mut gcode, &f);
    use std::fs::File;
    use std::io::prelude::*;
    let mut f = File::create("ann_filter_test.gcode").expect("failed to create file");
    let _ = f.write_all(gcode.emit().as_bytes());
}


mod integration_tests {

    #[cfg(test)]
    use crate::parse::{Emit, ParsedGCode};
    #[test]
    fn import_emit_reemit() {
        let f = "test.gcode";
        let init = ParsedGCode::build(f).expect("failed to parse gcode");
        let init = init.emit();
        use std::fs::File;
        use std::io::prelude::*;
        let mut f = File::create("test_output.gcode").expect("failed to create file");
        let _ = f.write_all(&init.as_bytes());
        let snd = ParsedGCode::build("test_output.gcode").expect("asdf");
        let snd = snd.emit();
        assert_eq!(init, snd);
    }
}*/
