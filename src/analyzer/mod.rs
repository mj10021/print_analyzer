use crate::parse::*;
use crate::parse::finder::Feature;

enum Label {
    PrePrintMove,
    TravelMove,
    ExtrusionMove,
    LiftZ,
    LowerZ,
}

struct Annotation {
    features: Vec<Feature>,
    labels: Vec<Label>,
    xi: f32,
    yi: f32,    
    zi: f32,
    dx: f32,
    dy: f32,
    dz: f32,
    de: f32,
    dt: f32, // calc time from feedrate
    //shape_id: id,
    ex_width_mm: f32,
}
impl Annotation {
    fn build(gcode: &ParsedGCode, features: Vec<Option<Feature>>) {
        let mut cur = gcode.instructions.cursor_front();
        while !cur.at_g1() {
            cur.move_next();
        }
    }
}

fn retract() {}

fn wipe(gcode: &mut ParsedGCode, g1_id: i32, min_dist: f32) {
    let mut cur = gcode.instructions.cursor_front_mut();
    let mut at_node = false;
    while !at_node {
        // move until the g1 command before the retraction move
        if let Some((Line::G1(g1), _)) = cur.current() {
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
        cur.insert_before((Line::Raw(String::from(" ~~~")), State::new()));
        cur.insert_before((Line::G1(g1), curr));
        cur.insert_before((Line::Raw(String::from("~~~ ")), State::new()));
    }
    loop {
        cur.update_state(gcode.g1_moves).expect("failed to update state");
        if cur.current().unwrap() as *const (Line, State) == init {
            break;
        }
        cur.move_next_g1(gcode.g1_moves).expect("No next G1 command found");

        }
    }

#[cfg(test)]
const WIPE_TEST_GCODE: &str = "G1 X0 Y-2 Z.2 F1234\n\
                                G1 X80 E22.22\n\
                                G1 E-0.2\n\
                                G1 X50 Y50\n\
                                G1 X80 Y50 E2\n\
                                G1 X80 Y80 E2\n\
                                G1 X50 Y80 E2\n";
#[test]
fn wipe_test() {
    // this inserts at the wrong place right now
    let mut gcode = ParsedGCode::build(WIPE_TEST_GCODE).expect("asdf");
    wipe(&mut gcode, 5, 63.0);
    panic!("{:?}", gcode.emit());
}