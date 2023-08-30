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
    start_vtx: i32,
    end_vtx: i32,
    z: f32,
    len: f32,
}
impl Shape {
    fn build_planar(gcode: &Parsed) -> VecDeque<Shape> {
        let mut out = VecDeque::new();
        let mut start_vtx = -1;
        let mut in_shape = false;
        let mut dist = 0.0;
        for node in gcode.nodes.iter() {
            match node {
                Node::Vertex(v) => {
                    if !in_shape {
                        if v.to.e > 0.0 && (v.to.x > 0.0 || v.to.y > 0.0) {
                            in_shape = true;
                            start_vtx = v.id;
                            dist += v.dist();
                        } else {
                            continue;
                        }
                    } else {
                        if v.to.e > 0.0 && (v.to.x > 0.0 || v.to.y > 0.0) {
                            dist += v.dist();
                        } else {
                            in_shape = false;
                            assert!(start_vtx != -1);
                            let s = Shape {
                                start_vtx,
                                end_vtx: v.id,
                                len: dist,
                                z: v.to.z
                            };
                            out.push_back(s);
                            dist = 0.0;
                            start_vtx = -1;
                        }
                    }
                },
                _ => (),
            }
        }
        out
    }
}
struct Layer {
    start_id: i32,
    end_id: i32,
    shapes: Vec<Shape>,
    z: f32,
}
impl Layer {
    fn build_planar(shapes: VecDeque<Shape>) -> Vec<Layer> {
        let mut out = Vec::new();
        let mut curr_z = 0.0;
        let mut temp_shapes: Vec<Shape> = Vec::new();
        for shape in shapes {
            if shape.z != curr_z {
                if temp_shapes.len() > 0 {
                    out.push(Layer {
                        start_id: temp_shapes[0].start_vtx,
                        end_id: temp_shapes[temp_shapes.len() - 1].end_vtx,
                        shapes: temp_shapes,
                        z: curr_z,
                    });
                }
                curr_z = shape.z;
                temp_shapes = Vec::new();
                temp_shapes.push(shape);
            } else {
                temp_shapes.push(shape);
            }
        }
        out
    }
}
#[test]
fn shape_finder_test() {
    let mut gcode = Parsed::build("test.gcode").expect("failed to parse");
    let s = Shape::build_planar(&gcode);
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
