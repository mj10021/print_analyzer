use crate::parse::*;
use crate::gcursor::*;
fn retract() {}

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