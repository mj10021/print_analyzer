
use super::*;


#[derive(Copy, Clone, Debug, PartialEq)]
pub enum Feature {
    FirstMove,
    NewLayer(i32),
    LayerChangeSequence(u32),
    ShapeChangeSequence(u32),
    ShapeStart,
    ShapeEnd,
    Retraction,
    DeRetraction,
}

struct Shape {
    start_id: i32,
    end_id: i32,
    len: f32,
}

struct Layer {
    start_id: i32,
    end_id: i32,
    shapes: Vec<Shape>,
    height: f32,
}
impl Layer {
    fn build_planar(gcode: &mut Parsed) -> Vec<Layer> {
        let mut out = Vec::new();
        let first_move_id = gcode.first_move_id();
        let mut cur = gcode.instructions.cursor_front();
        let mut layer_z = 0.0;
        while cur.peek_next().is_some() {
            if let Some((Line::G1(g1), curr)) = cur.current() {
                if g1.move_id < first_move_id {
                    cur.move_next();
                    continue;
                }
                if let Some((Line::G1(_), next)) = cur.peek_next() {
                    if curr.z != layer_z && curr.z == next.z && g1.z.is_some() {
                        layer_z = next.z;
                        gcode.ann[g1.ann_i()].feature = Some(Feature::LayerChangeSequence(0));
                    }
                }
            }
            cur.move_next();
        }
        out
    }
}
fn find_retractions(gcode: &mut Parsed) {
    let mut last_retraction = -1;
    let mut last_deretraction = -1;
    for node in gcode.nodes {
        match node {
            Node::Vertex( Vertex { id, prev, from, to  }) => {
                if to.e < 0.0 {
                    gcode.ann[id].feature = Some(Feature::Retraction);
                    last_retraction = id;
                }
                if to.e > 0.0 && last_retraction > last_deretraction {
                    gcode.ann[id].feature = Some(Feature::DeRetraction);
                    last_deretraction = id;
                }
            },
            _ => (),
        }
    }
}

fn find_shapes(gcode: &mut ParsedGCode) {
    let mut cur = gcode.instructions.cursor_front();
    let mut in_shape = false;
    while !cur.at_end() {
        if let Some((Line::G1(g1), _)) = cur.current() {
            if g1.e.is_some()
                && g1.e.unwrap() > 0.0
                && ((g1.x.is_some() && g1.x.unwrap() > 0.0)
                    || (g1.y.is_some() && g1.y.unwrap() > 0.0))
            {
                if !in_shape {
                    in_shape = true;
                    gcode.ann[g1.ann_i()].feature = Some(Feature::ShapeStart);
                }
            } else {
                if in_shape {
                    in_shape = false;
                    if g1.move_id > 1 {
                        gcode.ann[g1.move_id as usize - 2].feature = Some(Feature::ShapeEnd);
                    }
                }
            }
        }
        cur.next().expect("past end of list");
    }
}
pub fn shape_len(gcode: &ParsedGCode) -> std::collections::HashMap<i32, (i32, f32)> {
    // FIXME: doesnt do anything!!!!!!!!!!!11
    let mut out = std::collections::HashMap::new();
    let mut cur = gcode.instructions.cursor_front();
    let mut dist = 0.0;
    let mut in_shape = false;
    let mut last_start_id = 0;
    while !cur.at_end() {
        if !in_shape {
            if let Some((Line::G1(g1), _)) = cur.current() {
                if gcode.ann[g1.ann_i()].feature == Some(Feature::ShapeStart) {
                    in_shape = true;
                    last_start_id = g1.move_id;
                }
            }
        } else {
            if let Some((Line::G1(g1), _)) = cur.current() {
                let s = gcode.ann[g1.ann_i()];
                dist += (s.dx.powf(2.0) + s.dy.powf(2.0) + s.dz.powf(2.0)).sqrt();
                if gcode.ann[g1.ann_i()].feature == Some(Feature::ShapeEnd) {
                    in_shape = false;
                } else {
                    out.insert(last_start_id, (g1.move_id, dist));
                    dist = 0.0;
                    in_shape = false;
                }
            }
        }
        cur.next().expect("past end of list");
    }
    out
}
#[test]
fn shape_len_test() {
    let mut gcode = ParsedGCode::build("test.gcode").expect("failed to parse gcode");
    let ann = Annotation::build(&mut gcode);
    let shape_len = shape_len(&gcode);
    panic!("{:?}", shape_len);
}
#[test]
fn shape_finder_test() {
    let mut gcode = ParsedGCode::build("test.gcode").expect("failed to parse");
    find_retractions(&mut gcode);
    // find_new_layer(&mut gcode);
    find_shapes(&mut gcode);
    use std::fs::File;
    use std::io::prelude::*;
    let mut f = File::create("shape_finder_test.gcode").expect("failed to create file");
    let _ = f.write_all(gcode.debug_emit().as_bytes());
}
// analysis rules:
// - travel moves are usually much faster than print moves
// - whether retraction or z hop is on or off, there is some sequence of moves
//      that are inserted between every shape
// - different features (ext perim, inner perim, infill) can have different widths (flow)
//      and different speeds but don't always

#[cfg(test)]
#[test]
fn planar_z_test() {
    let mut gcode = ParsedGCode::build("test.gcode").expect("asdf");
    // find_new_layer(&mut gcode);
    use std::fs::File;
    use std::io::prelude::*;
    let mut f = File::create("planar_z_test.gcode").expect("failed to create file");
    let _ = f.write_all(gcode.debug_emit().as_bytes());
}
#[test]
fn find_retractions_test() {
    let test = "G28\n\
                        G1 X0 Y-2 Z.2 F1234\n\
                        G1 X80 E22.22\n\
                        G1 E-0.2\n\
                        G1 X50 Y50\n\
                        G1 X80 Y50 E2\n\
                        G1 X80 Y80 E2\n\
                        G1 E-0.2\n\
                        G1 X50 Y80 E2\n";
    let mut gcode = ParsedGCode::build(test).expect("asdf");
    find_retractions(&mut gcode);
    assert_eq!(gcode.ann[2].feature, Some(Feature::Retraction));
    assert_eq!(gcode.ann[3].feature, Some(Feature::DeRetraction));
    assert_eq!(gcode.ann[6].feature, Some(Feature::Retraction));
    assert_eq!(gcode.ann[7].feature, Some(Feature::DeRetraction));
}
#[test]
fn first_move_test() {
    let gcode = ParsedGCode::build("test.gcode").expect("asdf");
    let index = gcode.first_move_id(); // should be 11 for test.gcode
    assert_eq!(index, 11);
}
