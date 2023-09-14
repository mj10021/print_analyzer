use super::*;


#[test]
fn shape_finder_test() {
    let gcode = crate::read("test.gcode").expect("failed to parse");
    let s = Shape::build_planar(&gcode);
    panic!("{:?}", s);
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
    let mut gcode = crate::read("test.gcode").expect("failed to parse gcode");
    let center = find_centroid(&mut gcode);
    panic!("{:?}", center);
}
