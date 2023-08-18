use super::*;

pub fn first_move_index(gcode: ParsedGCode) -> i32 {
    let x_max = 10.0;
    let y_max = 10.0;
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

#[cfg(test)]
#[test]
fn first_move_test() {
    let gcode = ParsedGCode::build("test.gcode").expect("asdf");
    let index = first_move_index(gcode);
    panic!("{:?}", index);
}