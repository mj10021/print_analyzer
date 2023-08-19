use parse::ParsedGCode;

fn retract() {}

fn wipe(gcode: &mut ParsedGCode, g1_id: i32, min_dist: f32) {
    let mut cur = gcode.instructions.cursor_front_mut();
    let mut at_node = false;
    let mut prev: Option<State> = None;
    while !at_node {
        // move until the g1 command before the retraction move
        if let Some((Line::G1(g1), state)) = cur.current() {
            if g1.id == g1_id {
                at_node = true;
                prev = Some(state);
            }
        }
    }
    let mut dist = 0.0;
    let mut moves: Vec<(G1, State)> = Vec::new();
    while dist < min_dist {
        cur.move_prev_g1().expect("No previous G1 command found");
        if let Some((Line::G1(g1), curr)) = cur.current() {
            let temp_dist = curr.dist(prev.unwrap());
            dist += temp_dist;
            moves.push((g1, curr));
        }
    }
    while moves.len() > 0 {
        cur.insert_before(Line::G1(moves.pop().unwrap().0));
    }
    let mut at_prev = false;
    while !at_prev {
        if let Some((Line::G1(g1), curr)) = cur.current() {
            if curr == prev.unwrap() {
                at_prev = true;
                let mut at_init = false;
                while !at_init {
                    cur.move_next_g1().expect("No next G1 command found");
                    cur.update_state();
                    if let Some((Line::G1(g1), curr)) = cur.current() {
                        if g1.id == g1_id {
                            at_init = true;
                        }
                    }
                    cur.move_prev_g1().expect("No previous G1 command found");
                }
            }
        }
    }

}