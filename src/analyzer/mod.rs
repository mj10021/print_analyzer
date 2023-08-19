use crate::parse::*;

fn retract() {}

fn wipe(gcode: &mut ParsedGCode, g1_id: i32, min_dist: f32) {
    let mut cur = gcode.instructions.cursor_front_mut();
    let mut at_node = false;
    while !at_node {
        // move until the g1 command before the retraction move
        if let Some((Line::G1(g1), state)) = cur.current() {
            if g1.move_id == g1_id {
                at_node = true;
            }
        }
        cur.move_next_g1(gcode.g1_moves).expect("No next G1 command found");
    }
    let init = cur.current().unwrap() as *const (Line, State);
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
    while moves.len() > 0 {
        let (g1, curr) = moves.pop().unwrap();
        cur.insert_before((Line::G1(g1), curr));
    }
    loop {
        cur.update_state(gcode.g1_moves);
        if cur.current().unwrap() as *const (Line, State) == init {
            break;
        }
        cur.move_next_g1(gcode.g1_moves).expect("No next G1 command found");

        }
    }