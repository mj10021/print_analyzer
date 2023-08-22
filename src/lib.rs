#![feature(linked_list_cursors)]
#![allow(dead_code)]
mod analyzer;
mod parse;

mod transform {
    // use crate::parse::*;

    // fn transform(gcode: &mut ParsedGCode, f: fn(G1)) {
    //     let mut cur = gcode.instructions.cursor_front_mut();
    //     while cur.peek_next().is_some() {
    //         if let Some((Line::G1(g1), _)) = cur.current() {
    //             f(g1);
    //         }
    //         cur.move_next();
    //     }
    //     gcode.set_states();

    // }
}
mod gcursor;

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
    let _ = f.write_all(gcode.debug_emit().as_bytes());
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
}
