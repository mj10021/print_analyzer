use crate::analysis::Cursor;
use crate::parse::{Instruction, Line, ParsedGCode, G1};

use std::collections::LinkedList;
// assumes abs xyz and relative e
fn subdiv_seg(ins: &Line, cursor: &Cursor, seg_dist: f32) -> LinkedList<Line> {
    let xi = cursor.x;
    let yi = cursor.y;
    let zi = cursor.z;

    let &Line::G1(G1 {
        x: Some(x),
        y: Some(y),
        z: Some(z),
        e: Some(e),
        f,
    }) = ins
    else {
        // if line is not G1, just add it back to the instruction stack
        // FIXME: right now this will not transform commands without x, y, z, or e
        let mut out = LinkedList::new();
        out.push_back(ins.clone());
        return out;
    };

    let dx = x - xi;
    let dy = y - yi;
    let dz = z - zi;
    let de = e;

    let dist = (dx.powf(2.0) + dy.powf(2.0) + dz.powf(2.0)).sqrt();

    let count = (seg_dist / dist);

    let x_seg = dx / count;
    let y_seg = dy / count;
    let z_seg = dz / count;
    let e_seg = de / count;

    // since the parsed g1 moves are all relative
    // each subdivided segment should be identical

    let mut out = LinkedList::new();
    let mut i = 0.0;
    while i < count {
        let g1 = G1 {
            x: Some(xi + (i * x_seg)),
            y: Some(yi + (i * y_seg)),
            z: Some(zi * (i * z_seg)),
            e: Some(e_seg),
            f,
        };
        out.push_back(Line::G1(g1));
        i += 1.0;
    }

    out
}

fn subdivide_all(gcode: &ParsedGCode, divisions: i32) -> LinkedList<Line> {
    let cursor = Cursor::build(gcode);
    let (tot_dist, points) = cursor.total_file_dist();
    let points = points * divisions;
    let points = points as f32;
    let seg_dist = tot_dist / points;
    let mut subdivided = LinkedList::new();
    let mut panic: Vec<Line> = Vec::new();
    let mut count = 0;
    for ins in &gcode.instructions {
        panic.push(ins.clone());
        count += 1;
        subdivided.append(&mut subdiv_seg(ins, &cursor, seg_dist));
    }
    subdivided
}

#[cfg(test)]
#[test]
fn sub_test() {
    // FIXME: div/0 errors with x y z or 0
    let input = "G1 X1 Y1 Z1 E1;asdfasdfasdf \n
    G1 X10 Y10 Z10 E10\n
    ;asdfasdfasdf\n";
    let mut gcode = ParsedGCode::from_str(input);
    gcode.instructions = subdivide_all(&gcode, 10);
    panic!("{:?}", gcode.instructions);
}
