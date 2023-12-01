#![feature(linked_list_cursors)]
#![allow(dead_code)]

pub mod emit;
mod parse;
mod transform;
mod gui;
use parse::{
    file_reader::{clean_line, split_line, Line},
    Pos, Vertex,
};
pub use parse::{Node, NodeList, Parsed};
use std::collections::linked_list::CursorMut;

pub fn read(path: &str) -> Result<Parsed, Box<dyn std::error::Error>> {
    let nodes = match crate::parse::file_reader::parse_file(path) {
        Ok(v) => v,
        // this is for running unit tests
        Err(_) => path
            .lines()
            .map(|s| clean_line(s))
            .filter(|s| s.len() > 0)
            .map(|s| split_line(s))
            .map(|v| Line::build(v))
            .collect(),
    };
    Ok(Parsed::build(nodes))
}
pub fn translate(gcode: &mut Parsed, vertex_id: i32, params: (f32, f32, f32)) {
    let (dx, dy, dz) = params;
    // move to requested node
    let mut cur = gcode.nodes.nodes.cursor_front_mut();
    loop {
        assert!(cur.current().is_some(), "end of list");
        if let Some(Node::Vertex(v)) = cur.current() {
            if v.id == vertex_id {
                break;
            }
        }
        cur.move_next();
    }
    // translate from that node
    let prev = NodeList::peek_prev_vertex(&mut cur);
    let cur = cur.current().unwrap().vertex_mut();
    cur.translate_unsafe(dx, dy, dz, prev);
}
pub fn hole_delete(gcode: &mut Parsed, vertex_id: i32) {
    // move to requested node
    let mut cur = gcode.nodes.nodes.cursor_front_mut();
    loop {
        assert!(cur.current().is_some(), "end of list");
        if let Some(Node::Vertex(v)) = cur.current() {
            if v.id == vertex_id {
                break;
            }
        }
        cur.move_next();
    }
    // translate from that node
    let prev = NodeList::peek_prev_vertex(&mut cur);
    unsafe { (*prev).to.e  = 0.0} ;
    let cur = cur.current().unwrap().vertex_mut();
    cur.from.e = 0.0;
    cur.to.e = 0.0;   
}
pub fn merge_delete(gcode: &mut Parsed, vertex_id: i32) {
    // move to requested node
    let mut cur = gcode.nodes.nodes.cursor_front_mut();
    loop {
        assert!(cur.current().is_some(), "end of list");
        if let Some(Node::Vertex(v)) = cur.current() {
            if v.id == vertex_id {
                break;
            }
        }
        cur.move_next();
    }
    let prev = NodeList::peek_prev_vertex(&mut cur);
    // now i pop the current node and then move until the next vertex
    cur.remove_current();
    loop {
        // FIXME: I need to add a check to see if i'm at the last node here
        if let Some(Node::Vertex(v)) = cur.current() { break; }
        assert!(cur.peek_next().is_some());
        cur.move_next();
    }
    let cur = cur.current().unwrap().vertex_mut();
    // FIXME: prob should double check this
    unsafe { 
        let prev_flow = (*prev).flow();
        (*prev).to = cur.from.clone();
        let new_dist = (*prev).dist();
        (*prev).to.e = prev_flow * new_dist;
        cur.from = (*prev).to;
    }
}
fn erode(gcode: &mut Parsed, location: (f32, f32, f32), radius: f32) {
    let location = Pos {
        x: location.0,
        y: location.1,
        z: location.2,
        ..Pos::unhomed()
    };

    for node in gcode.nodes.nodes.iter_mut() {
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

pub fn select_vertex_loop(cur: &mut CursorMut<Node>) -> Vec<i32> {
    let mut out: Vec<i32> = Vec::new();
    loop {
        if let Some(Node::Vertex(v)) = cur.current() {
            if v.extrusion_move() {
                out.push(v.id);
            } else { break; }
        }
        cur.move_next();
    }
    out
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
    for node in gcode.nodes.nodes.iter_mut() {
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
    let gcode = gcode.emit(false);
    use std::fs::File;
    use std::io::prelude::*;
    let mut f = File::create("filter_output.gcode").expect("failed to create file");
    let _ = f.write_all(&gcode.as_bytes());
}
fn filter_map(gcode: &mut Parsed, filter: fn(&Vertex) -> bool, map: fn(&mut Vertex)) {
    for node in gcode.nodes.nodes.iter_mut() {
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
}
fn map(gcode: &mut Parsed, map: fn(&mut Vertex)) {
    for node in gcode.nodes.nodes.iter_mut() {
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

mod integration_tests {

    #[cfg(test)]
    use std::fs::File;
    #[test]
    fn import_emit_reemit() {
        use crate::emit::Emit;
        use crate::read;
        use std::io::prelude::*;
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
        let a: std::collections::HashSet<String> =
            p_init.emit(false).lines().map(|s| s.to_string()).collect();
        let b: std::collections::HashSet<String> =
            snd.emit(false).lines().map(|s| s.to_string()).collect();
        assert!(
            a.difference(&b).collect::<Vec<_>>().len() < 1,
            "{:?}",
            a.difference(&b)
        );
    }
    #[test]
    fn specific_random_gcode_issue() {
        use crate::{emit::Emit, read};
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
