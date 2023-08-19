use super::*;
#[derive(Clone)]
pub enum Feature {
    FirstMove,
    NewLayer,
    Retraction,
}
impl std::fmt::Debug for Feature {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Feature::FirstMove => write!(f, "FirstMove"),
            Feature::NewLayer => write!(f, "NewLayer"),
            Feature::Retraction => write!(f, "Retraction"),
        }
    }
}
impl std::fmt::Display for Feature {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Feature::FirstMove => write!(f, "FirstMove"),
            Feature::NewLayer => write!(f, "NewLayer"),
            Feature::Retraction => write!(f, "Retraction"),
        }
    }
}


pub fn first_move_index(gcode: &ParsedGCode) -> i32 {
    let x_max = 30.0;
    let y_max = 30.0;
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
    while cur.peek_next().is_some() {
        if let Some((Line::G1(g1), _)) = cur.current() {
            if let Some(de) = g1.e{
                if de < 0.0 {
                    map[g1.move_id as usize] = Some(Feature::Retraction);
                }
            }
        }
        cur.move_next();
    }
}

//fn check_forward(n: i32) -> bool {
//    let mut check = cursor.current().unwrap().x;
//    for _ in 0..n {
//        if check != cursor.peek_next().unwrap().x {
//            return false;
//        }
//        cursor.move_next();
//    }
//    true
//}

pub fn find_new_layer(gcode: &ParsedGCode, map: &mut Vec<Option<Feature>>) {
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
                if curr.z != layer_z && curr.z == next.z {
                    layer_z = next.z;
                    map[g1.move_id as usize] = Some(Feature::NewLayer);
                }
            }
        }
        cur.move_next();
    }
}

#[cfg(test)]
#[test]
fn planar_z_test() {
    let gcode = ParsedGCode::build("test.gcode").expect("asdf");
    let mut map: Vec<Option<Feature>> = vec![None; gcode.instructions.len()];
    find_new_layer(&gcode, &mut map);
    panic!("{:?}", map);
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