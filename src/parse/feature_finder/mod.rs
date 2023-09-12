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
    nodes: LinkedList<Node>,
    closed: bool,
    len: f32,
}
impl Shape {
    pub fn build_planar(gcode: &Parsed) -> Vec<Shape> {
        let mut out = Vec::new();
        let mut in_shape = false;
        let mut dist = 0.0;
        let mut curr_shape = LinkedList::new();
        for node in gcode.nodes.iter() {
            match node {
                Node::Vertex(v) => {
                    if !in_shape {
                        if v.label == Label::PlanarExtrustion
                            || v.label == Label::NonPlanarExtrusion
                        {
                            curr_shape.push_back(node.clone());
                            in_shape = true;
                            dist += v.dist();
                        } else {
                            continue;
                        }
                    } else {
                        if v.label == Label::PlanarExtrustion
                            || v.label == Label::NonPlanarExtrusion
                        {
                            dist += v.dist();
                            curr_shape.push_back(node.clone());
                        } else {
                            in_shape = false;
                            let closed = { 
                                if let Some(Node::Vertex(v)) = curr_shape.back() {
                                    if let Some(Node::Vertex(v2)) = curr_shape.front() {
                                        if v.to.dist(&v2.to) < std::f32::EPSILON {
                                            true;
                                        }
                                    }
                                }
                                false
                            };
                            let s = Shape {
                                nodes: curr_shape.clone(),
                                closed,
                                len: dist,
                            };
                            curr_shape = LinkedList::new();
                            out.push(s);
                            dist = 0.0;
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
    start_z: f32,
    nodes: LinkedList<Node>,
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
                        nodes: _,
                        len: _,
                        closed: _,
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
                                    layer_height: shape.nodes.front().unwrap().vertex().to.z - curr_z, // FIXME: check this
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
