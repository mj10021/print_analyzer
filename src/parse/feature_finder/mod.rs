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
#[derive(Debug)]
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
impl std::fmt::Debug for Layer {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.debug_struct("Layer")
            .field("start_id", &self.start_id)
            .field("end_id", &self.end_id)
            .field("z", &self.z)
            .finish()
    }
}
impl Layer {
    fn build_planar(gcode: &Parsed) -> Vec<Layer> {
        let shapes = Shape::build_planar(gcode);
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
    let gcode = Parsed::build("test.gcode").expect("failed to parse");
    let s = Shape::build_planar(&gcode);
    panic!("{:?}", s);
}
#[test]
fn layer_finder_test() {
    let gcode = Parsed::build("test.gcode").expect("failed to parse");
    let l = Layer::build_planar(&gcode);
    let mut l = VecDeque::from(l);
    l.pop_front();
    l.pop_front();
    let mut z = l.pop_front().unwrap().z;
    for layer in l {
        assert!(layer.z - z - 0.4 < 0.00001, "layer z: {}, prev z: {}", layer.z, z);
        z = layer.z;
    }
}
// analysis rules:
// - travel moves are usually much faster than print moves
// - whether retraction or z hop is on or off, there is some sequence of moves
//      that are inserted between every shape
// - different features (ext perim, inner perim, infill) can have different widths (flow)
//      and different speeds but don't always