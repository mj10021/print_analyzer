use crate::parse::*;

fn find_center_coord(gcode: &mut Parsed) -> (f32, f32, f32) {
    let mut max_x = std::f32::NEG_INFINITY;
    let mut max_y = std::f32::NEG_INFINITY;
    let mut max_z = std::f32::NEG_INFINITY;
    let mut min_x = std::f32::INFINITY;
    let mut min_y = std::f32::INFINITY;
    let mut min_z = std::f32::INFINITY;
    let first_move = gcode.first_move_id();

    for node in gcode.nodes.iter() {
        match node {
            Node::NonMove(_) => {
                continue;
            }
            Node::Vertex(v) => {
                if v.id < first_move {
                    continue;
                }
                max_x = max_x.max(v.to.x);
                max_y = max_y.max(v.to.y);
                max_z = max_z.max(v.to.z);
                min_x = min_x.min(v.to.x);
                min_y = min_y.min(v.to.y);
                min_z = min_z.min(v.to.z);
            }
        }
    }
    (
        (max_x + min_x) / 2.0,
        (max_y + min_y) / 2.0,
        (max_z + min_z) / 2.0,
    )
}

#[test]
fn find_center_coord_test() {
    let mut gcode = Parsed::build("test.gcode").expect("failed to parse gcode");
    let center = find_center_coord(&mut gcode);
    panic!("{:?}", center);
}
