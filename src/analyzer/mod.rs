use crate::gcursor::*;
use crate::parse::*;

// fn insert_before(feature)
// fn modify(feature)
// fn replace_with(feature, gcode_sequence)
// fn insert_after(feature)

fn get_move_vectors(gcode: &ParsedGCode) -> Vec<[f32; 3]> {
    fn normalize(v: [f32; 3]) -> [f32; 3] {
        let mut out = [0.0; 3];
        let mag = (v[0].powf(2.0) + v[1].powf(2.0) + v[2].powf(2.0)).sqrt();
        for i in 0..3 {
            out[i] = v[i] / mag;
        }
        out
    }
    let mut cur = gcode.instructions.cursor_front();
    let mut moves = Vec::new();
    while let Err(_) = cur.at_g1() {
        cur.next().expect("past list end");
    }
    let Some((Line::G1(_), prev)) = cur.current() else {
        panic!("exptected g1 move");
    };
    let mut prev = prev.clone();
    while !cur.is_last_g1(gcode.g1_moves) {
        if let Some((Line::G1(_), state)) = cur.current() {
            moves.push(normalize([
                state.x - prev.x,
                state.y - prev.y,
                state.z - prev.z,
            ]));
            prev = state.clone();
        }
        cur.next().expect("past list end");
    }
    moves
}

fn z_map(gcode: &ParsedGCode) -> std::collections::BTreeMap<String, Vec<(f32, f32)>> {
    let mut z_map = std::collections::BTreeMap::new();
    let mut cur = gcode.instructions.cursor_front();
    while cur.peek_next().is_some() {
        if let Some((Line::G1(_), state)) = cur.current() {
            let entry = z_map.entry(state.z.to_string()).or_insert(Vec::new());
            entry.push((state.x, state.y));
        }
        cur.move_next();
    }
    z_map
}
#[test]
fn z_map_test() {
    let gcode = ParsedGCode::build("test.gcode").expect("failed to parse gcode");
    let z_map = z_map(&gcode);
    panic!("{:?}", z_map);
}

fn find_center_coord(gcode: &mut ParsedGCode) -> (f32, f32, f32) {
    let mut max_x = std::f32::NEG_INFINITY;
    let mut max_y = std::f32::NEG_INFINITY;
    let mut max_z = std::f32::NEG_INFINITY;
    let mut min_x = std::f32::INFINITY;
    let mut min_y = std::f32::INFINITY;
    let mut min_z = std::f32::INFINITY;
    let init = gcode.first_move_id();
    let mut cur = gcode.instructions.cursor_front();

    loop {
        if let Some((Line::G1(g1), _)) = cur.current() {
            if g1.move_id == init {
                break;
            }
        }
        cur.next().expect("past list end");
    }
    while !cur.at_end() {
        if let Some((Line::G1(_), state)) = cur.current() {
            max_x = max_x.max(state.x);
            max_y = max_y.max(state.y);
            max_z = max_z.max(state.z);
            min_x = min_x.min(state.x);
            min_y = min_y.min(state.y);
            min_z = min_z.min(state.z);
        }
        cur.next().expect("past end of list");
    }
    (
        (max_x + min_x) / 2.0,
        (max_y + min_y) / 2.0,
        (max_z + min_z) / 2.0,
    )
}
#[test]
fn find_center_coord_test() {
    let mut gcode = ParsedGCode::build("test.gcode").expect("failed to parse gcode");
    let center = find_center_coord(&mut gcode);
    panic!("{:?}", center);
}
fn modify_flow(gcode: &mut ParsedGCode, flow_mod: fn(&G1) -> f32) {
    let mut cur = gcode.instructions.cursor_front_mut();
    while cur.peek_next().is_some() {
        if let Some((Line::G1(g1), _)) = cur.current() {
            if let Some(_) = g1.e {
                g1.e = Some(flow_mod(g1));
            }
        }
        cur.move_next();
    }
    gcode.set_states().expect("failed to update states");
}
#[test]
fn modify_flow_test() {
    let mut gcode = ParsedGCode::build("test.gcode").expect("failed to parse gcode");

    fn moddy(g1: &G1) -> f32 {
        g1.e.unwrap_or(0.0) * (1 + g1.move_id % 3) as f32
    }
    modify_flow(&mut gcode, |g| moddy(g));
    let gcode = gcode.emit();
    use std::fs::File;
    use std::io::prelude::*;
    let mut f = File::create("modify_flow_output.gcode").expect("failed to create file");
    let _ = f.write_all(&gcode.as_bytes());
}
enum ErosionType {
    Sphere,
    Prism,
}
fn erode(gcode: &mut ParsedGCode, location: (f32, f32, f32), erosion: ErosionType, radius: f32) {
    let location = State {
        x: location.0,
        y: location.1,
        z: location.2,
        ..State::new()
    };
    let mut cur = gcode.instructions.cursor_front_mut();
    while !cur.at_end() {
        if let Some((Line::G1(g1), state)) = cur.current() {
            match erosion {
                ErosionType::Sphere => {
                    let dist = state.dist(&location);
                    if dist < radius {
                        g1.e = Some(0.0);
                    }
                }
                ErosionType::Prism => {
                    let temp_state = State {
                        x: location.x,
                        y: location.y,
                        z: state.z,
                        ..State::new()
                    };
                    if state.dist(&temp_state) < radius && (state.z - location.z).abs() < radius {
                        g1.e = Some(0.0);
                    }
                }
            }
        }
        cur.next().expect("failed to move cursor");
    }
    gcode.set_states().expect("failed to update states");
}
#[test]
fn erode_test() {
    let mut gcode = ParsedGCode::build("test.gcode").expect("failed to parse gcode");
    erode(&mut gcode, (82.0, 97.0, 10.0), ErosionType::Sphere, 5.0);
    let gcode = gcode.emit();
    use std::fs::File;
    use std::io::prelude::*;
    let mut f = File::create("erosion_output.gcode").expect("failed to create file");
    let _ = f.write_all(&gcode.as_bytes());
}

fn wipe(gcode: &mut ParsedGCode, g1_id: i32, min_dist: f32) {
    // WIPE SHOULD ONLY WIPE FOR THE GIVEN SHAPE, can't wipe into layer changes etc
    // I THINK THIS IS OFF BY ONE NODE
    assert!(g1_id <= gcode.g1_moves, "g1 id out of range");
    let mut cur = gcode.instructions.cursor_front_mut();
    loop {
        // move until the g1 command before the retraction move
        if let Some((Line::G1(g1), _)) = cur.current() {
            if g1.move_id == g1_id {
                break;
            }
        }
        cur.next().expect("past list end");
    }
    let mut dist = 0.0;
    let mut moves: Vec<(G1, State)> = Vec::new();
    while dist < min_dist {
        let prev = match cur.current() {
            Some((Line::G1(_), prev)) => prev.clone(),
            _ => panic!("No previous G1 command found"),
        };
        cur.move_prev_g1().expect("No previous G1 command found");
        if let Some((Line::G1(g1), curr)) = cur.current() {
            let temp_dist = curr.dist(&prev);
            dist += temp_dist;
            moves.push((g1.clone(), curr.clone()));
        }
    }
    let start = cur.peek_prev().unwrap() as *const (Line, State);
    let end = cur.current().unwrap() as *const (Line, State);
    while moves.len() > 0 {
        let (g1, curr) = moves.pop().unwrap();
        cur.insert_before((Line::Raw(String::from(" ~~~")), State::new()));
        cur.insert_before((Line::G1(g1), curr));
        cur.insert_before((Line::Raw(String::from("~~~ ")), State::new()));
    }
    while cur.current().unwrap() as *const (Line, State) != start {
        cur.prev().expect("end of list");
    }
    while cur.current().unwrap() as *const (Line, State) != end {
        cur.update_state().expect("failed to update state");
        cur.next().expect("end of list");
    }
}

#[cfg(test)]
const WIPE_TEST_GCODE: &str = "G28\nG1 X0 Y-2 Z.2 F1234\n\
                                G1 X80 E22.22\n\
                                G1 E-0.2\n\
                                G1 X50 Y50\n\
                                G1 X80 Y50 E2\n\
                                G1 X80 Y80 E2\n\
                                G1 X50 Y80 E2\n";
#[test]
fn wipe_test() {
    // this inserts at the wrong place right now
    // i think it's off by one node
    let mut gcode = ParsedGCode::build(WIPE_TEST_GCODE).expect("asdf");
    wipe(&mut gcode, 5, 1.0);
    panic!("{:?}", gcode.emit());
}
