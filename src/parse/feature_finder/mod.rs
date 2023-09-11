use super::*;

#[derive(Copy, Clone, Debug, PartialEq)]
pub enum Feature {
    FirstMove,
    NewLayer(i32),
    Retraction,
    DeRetraction,
}
#[derive(Clone, Debug, PartialEq)]
pub struct Shape {
    start_vtx: i32,
    end_vtx: i32,
    z: f32,
    len: f32,
}
impl Shape {
    pub fn build_planar(gcode: &Parsed) -> Vec<Shape> {
        let mut out = Vec::new();
        let mut start_vtx = -1;
        let mut in_shape = false;
        let mut dist = 0.0;
        for node in gcode.nodes.iter() {
            match node {
                Node::Vertex(v) => {
                    if !in_shape {
                        if v.label == Label::PlanarExtrustion
                            || v.label == Label::NonPlanarExtrusion
                        {
                            in_shape = true;
                            start_vtx = v.id;
                            dist += v.dist();
                        } else {
                            continue;
                        }
                    } else {
                        if v.label == Label::PlanarExtrustion
                            || v.label == Label::NonPlanarExtrusion
                        {
                            dist += v.dist();
                        } else {
                            in_shape = false;
                            assert!(start_vtx != -1);
                            let s = Shape {
                                start_vtx,
                                end_vtx: v.id - 1,
                                len: dist,
                                z: v.to.z,
                            };
                            out.push(s);
                            dist = 0.0;
                            start_vtx = -1;
                        }
                    }
                }
                _ => (),
            }
        }
        out
    }
    fn get_center(&self) -> (f32, f32, f32) {
        todo!();
    }
}
#[derive(PartialEq)]
pub struct Layer {
    pub i: i32,
    start_id: i32,
    pub end_id: i32,
    shapes: Vec<Shape>,
    z: f32,
    layer_height: f32,
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
    pub fn build_planar(gcode: &Parsed) -> BTreeMap<i32, Layer> {
        let shapes = Shape::build_planar(gcode);
        let mut out = BTreeMap::new();
        let mut i = 0;
        let mut curr_z = 0.0;
        let mut temp_shapes: Vec<Shape> = Vec::new();
        for shape in shapes {
            if shape.z != curr_z {
                if temp_shapes.len() > 0 {
                    let start = temp_shapes[0].start_vtx;
                    let end = temp_shapes[temp_shapes.len() - 1].end_vtx;
                    for Shape {
                        z: _,
                        start_vtx: s,
                        end_vtx: f,
                        len: _,
                    } in temp_shapes.iter()
                    {
                        for j in *s..=*f {
                            out.insert(
                                j,
                                Layer {
                                    i,
                                    start_id: start,
                                    end_id: end,
                                    shapes: temp_shapes.clone(),
                                    z: curr_z,
                                    layer_height: shape.z - curr_z, // FIXME: check this
                                },
                            );
                        }
                    }
                }
                i += 1;
                curr_z = shape.z;
                temp_shapes = Vec::new();
                temp_shapes.push(shape.clone());
            } else {
                temp_shapes.push(shape.clone());
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
    let l = gcode.layers;
    let mut l = l.values().collect::<VecDeque<&Layer>>();
    l.pop_front();
    l.pop_front();
    let mut z = l.pop_front().unwrap().z;
    for layer in l {
        assert!(
            layer.z - z - 0.4 < 0.00001,
            "layer z: {}, prev z: {}",
            layer.z,
            z
        );
        z = layer.z;
    }
}

fn find_centroid(gcode: &mut Parsed) -> (f32, f32, f32) {
    let mut x = 0.0;
    let mut y = 0.0;
    let mut z = 0.0;
    let mut count = 0;
    let obj_start = gcode.first_move_id();
    for node in gcode.nodes.iter() {
        if let Node::Vertex(v) = node {
            if v.id < obj_start {
                continue;
            }
        }
        match node {
            Node::Vertex(v) => {
                x += v.to.x;
                y += v.to.y;
                z += v.to.z;
                count += 1;
            }
            _ => (),
        }
    }
    (x / count as f32, y / count as f32, z / count as f32)
}

#[test]
fn find_center_coord_test() {
    let mut gcode = Parsed::build("test.gcode").expect("failed to parse gcode");
    let center = find_centroid(&mut gcode);
    panic!("{:?}", center);
}
