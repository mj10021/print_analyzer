use super::*;
#[derive(Clone, PartialEq)]
pub enum Feature {
    FirstMove,
    ZChange,
    Retraction,
    DeRetraction,
}
impl std::fmt::Debug for Feature {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Feature::FirstMove => write!(f, "FirstMove"),
            Feature::ZChange => write!(f, "ZChange"),
            Feature::Retraction => write!(f, "Retraction"),
            Feature::DeRetraction => write!(f, "DeRetraction"),
        }
    }
}
impl std::fmt::Display for Feature {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Feature::FirstMove => write!(f, "FirstMove"),
            Feature::ZChange => write!(f, "ZChange"),
            Feature::Retraction => write!(f, "Retraction"),
            Feature::DeRetraction => write!(f, "DeRetraction"),
        }
    }
}


pub fn first_move_index(gcode: &ParsedGCode) -> i32 {
    let x_max = 5.0;
    let y_max = 5.0;
    let mut cur = gcode.instructions.cursor_front();
    let mut count = 0;
    let mut out: Vec<(f32,f32,f32,i32)> = Vec::new();
    while count < 100 {
        if let Some((Line::G1(g1), state)) = cur.current() {
            count += 1;
            out.push((state.x, state.y, state.z, g1.move_id));
        }
        cur.move_next();
    }
    for (x, y, _z, id) in out {
        if x > x_max && y > y_max {
            return id;
        }
    }
    -1
}
fn find_retractions(gcode: &ParsedGCode, map: &mut Vec<Option<Feature>>) {
    let mut cur = gcode.instructions.cursor_front();
    let mut last_retraction = -1;
    let mut last_deretraction = -1;
    while cur.peek_next().is_some() {
        if let Some((Line::G1(g1), _)) = cur.current() {
            if let Some(de) = g1.e {
                if de < 0.0 {
                    map[g1.move_id as usize] = Some(Feature::Retraction);
                    last_retraction = g1.move_id;
                }
                if de > 0.0 && last_retraction > last_deretraction {
                    map[g1.move_id as usize] = Some(Feature::DeRetraction);
                     last_deretraction = g1.move_id;
                }
            }
        }
        cur.move_next();
    }
}
pub fn find_new_layer(gcode: &mut ParsedGCode) {
    let first_move_id = first_move_index(gcode);
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
                    gcode.features[g1.move_id as usize] = Some(Feature::ZChange);
                }
            }
        }
        cur.move_next();
    }
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
    find_new_layer(&mut gcode);
    use std::fs::File;
    use std::io::prelude::*;
    let mut f = File::create("planar_z_test.gcode").expect("failed to create file");
    let _ = f.write_all(gcode.debug_emit().as_bytes());

}
#[test]
fn find_retractions_test() {
    let gcode = ParsedGCode::build("test.gcode").expect("asdf");
    let mut map: Vec<Option<Feature>> = vec![None; gcode.instructions.len()];
    find_retractions(&gcode, &mut map);
    panic!("{:?}", map.iter().filter(|x| x.is_some()));
}
#[test]
fn first_move_test() {
    let gcode = ParsedGCode::build("test.gcode").expect("asdf");
    let index = first_move_index(&gcode);
    panic!("{:?}", index);
}