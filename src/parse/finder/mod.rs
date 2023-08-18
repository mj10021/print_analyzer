use super::*;

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
fn find_retractions(gcode: &ParsedGCode) -> Vec<i32> {
    let mut cur = gcode.instructions.cursor_front();
    let mut out: Vec<i32> = Vec::new();
    while cur.peek_next().is_some() {
        if let Some((Line::G1(g1), _)) = cur.current() {
            if let Some(de) = g1.e{
                if de < 0.0 {
                    out.push(g1.move_id);
                }
            }
        }
        cur.move_next();
    }
    out
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

pub fn planar_z_finder(gcode: &ParsedGCode, first_move_id: i32) -> Vec<i32> {
    let mut cur = gcode.instructions.cursor_front();
    let mut out: Vec<i32> = Vec::new();
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
                    out.push(g1.move_id);
                }
            }
        }
        cur.move_next();
    }
    out
}

#[cfg(test)]
#[test]
fn planar_z_test() {
    let gcode = ParsedGCode::build("test.gcode").expect("asdf");
    let index = planar_z_finder(&gcode, first_move_index(&gcode));
    panic!("{:?}", index);
}
#[test]
fn find_retractions_test() {
    let gcode = ParsedGCode::build("test.gcode").expect("asdf");
    let index = find_retractions(&gcode);
    panic!("{:?}", index);
}
#[test]
fn first_move_test() {
    let gcode = ParsedGCode::build("test.gcode").expect("asdf");
    let index = first_move_index(&gcode);
    panic!("{:?}", index);
}