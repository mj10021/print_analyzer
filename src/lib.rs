#![feature(linked_list_cursors)]
#![allow(dead_code)]
//mod analyzer;
//mod gcursor;
mod parse;

//use gcursor::*;
//use parse::feature_finder::Annotation;

use crate::parse::{Parsed, Line};
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

#[cfg(test)]
#[test]
fn transform_test() {
    use crate::gcursor::*;
    use crate::parse::*;
    use std::f32::consts::PI;
    let mut gcode = ParsedGCode::build("test.gcode").expect("asdf");
    let mut cur = gcode.instructions.cursor_front_mut();
    while let Err(_) = cur.at_g1() {
        cur.next().expect("asdf");
    }
    cur.move_next_g1(gcode.g1_moves).expect("asdf");
    while !cur.is_last_g1(gcode.g1_moves) {
        if let Some((Line::G1(g1), _)) = cur.current() {
            let i = g1.move_id as f32;
            let _ = cur.translate_g1((i * (PI / 8.0)).sin(), 0.0, 0.0, gcode.g1_moves);
        }
        cur.move_next_g1(gcode.g1_moves).expect("asdf");
    }
    use std::fs::File;
    use std::io::prelude::*;
    let mut f = File::create("transform_test.gcode").expect("failed to create file");
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
