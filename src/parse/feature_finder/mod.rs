use super::*;

#[derive(Copy, Clone, Debug, PartialEq)]
enum Label {
    Uninitialized,
    FirstG1,
    PrePrintMove,
    TravelMove,
    ExtrusionMove,
    LiftZ,
    LowerZ,
    MysteryMove,
}
#[derive(Copy, Clone, Debug, PartialEq)]
struct Annotation {
    label: Label,
    feature: Option<Feature>,
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
    fn new() -> Annotation {
        Annotation {
            label: Label::Uninitialized,
            feature: None,
            xi: NEG_INFINITY,
            yi: NEG_INFINITY,
            zi: NEG_INFINITY,
            dx: NEG_INFINITY,
            dy: NEG_INFINITY,
            dz: NEG_INFINITY,
            de: NEG_INFINITY,
            dt: NEG_INFINITY,
            ex_width_mm: 0.0,
        }
    }
    fn get_time(dist: f32, feedrate:f32) -> f32 {
        (dist / feedrate) * 60.0
    }
    fn build(gcode: &mut ParsedGCode) -> Vec<Annotation> {
        gcode.set_states().expect("failed to set states");
        let mut cur = gcode.instructions.cursor_front();
        while let Err(_) = cur.at_g1() {
            cur.move_next();
        }
        let mut out = Vec::with_capacity(gcode.g1_moves as usize);
        for _ in 0..gcode.g1_moves {
            out.push(Annotation::new());
        }
        out[0].label = Label::FirstG1;
        let Some((Line::G1(_), state)) = cur.current() else { panic!("asdf"); };
        out[0].xi = 0.0;
        out[0].yi = 0.0;
        out[0].zi = 0.0;
        out[0].dx = state.x;
        out[0].dy = state.y;
        out[0].dz = state.z;
        out[0].de = state.e;
        out[0].dt = Annotation::get_time(state.dist(&State::origin()), state.f);
        let mut prev_state = state.clone();
        let first_move = gcode.first_move_id();
        while !cur.is_last_g1(gcode.g1_moves) {
            cur.move_next_g1(gcode.g1_moves).expect("asdf");
            let Some((Line::G1(g1), state)) = cur.current() else { panic!("asdf"); };
            let i = g1.move_id as usize - 1;
            out[i].xi = prev_state.x;
            out[i].yi = prev_state.y;
            out[i].zi = prev_state.z;
            out[i].dx = state.x - prev_state.x;
            out[i].dy = state.y - prev_state.y;
            out[i].dz = state.z - prev_state.z;
            out[i].de = state.e;
            out[i].dt = Annotation::get_time(state.dist(&prev_state), state.f);
            prev_state = state.clone();
            out[i].label = {
                if g1.move_id < first_move { Label::PrePrintMove }
                else if out[i].de > 0.0 { Label::ExtrusionMove }
                else if out[i].dz > 0.0 { Label::LiftZ }
                else if out[i].dz < 0.0 { Label::LowerZ }
                else if out[i].dx != 0.0 || out[i].dy != 0.0 { Label::TravelMove }
                else { panic!("{:?}\r\n\r\n{:?}", g1, state) }//{ Label::MysteryMove }
            }
        }
        out
    }
}





#[derive(Copy, Clone, PartialEq)]
pub enum Feature {
    FirstMove,
    LayerChangeSequence(u32),
    ShapeChangeSequence(u32),
    Retraction,
    DeRetraction,
}
impl std::fmt::Debug for Feature {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Feature::FirstMove => write!(f, "FirstMove"),
            Feature::LayerChangeSequence(i) => write!(f, "LayerChangeSequence {}", i),
            Feature::ShapeChangeSequence(i) => write!(f, "ShapeChangeSequence({})", i),
            Feature::Retraction => write!(f, "Retraction"),
            Feature::DeRetraction => write!(f, "DeRetraction"),
        }
    }
}
impl std::fmt::Display for Feature {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Feature::FirstMove => write!(f, "FirstMove"),
            Feature::LayerChangeSequence(i) => write!(f, "LayerChangeSequence {}", i),
            Feature::ShapeChangeSequence(i) => write!(f, "ShapeChangeSequence({})", i),
            Feature::Retraction => write!(f, "Retraction"),
            Feature::DeRetraction => write!(f, "DeRetraction"),
        }
    }
}

fn find_retractions(gcode: &ParsedGCode, annotations: &mut Vec<Annotation>) {
    let mut cur = gcode.instructions.cursor_front();
    let mut last_retraction = -1;
    let mut last_deretraction = -1;
    while cur.peek_next().is_some() {
        if let Some((Line::G1(g1), _)) = cur.current() {
            if let Some(de) = g1.e {
                if de < 0.0 {
                    annotations[g1.move_id as usize - 1].feature = Some(Feature::Retraction);
                    last_retraction = g1.move_id;
                }
                if de > 0.0 && last_retraction > last_deretraction {
                    annotations[g1.move_id as usize - 1].feature = Some(Feature::DeRetraction);
                     last_deretraction = g1.move_id;
                }
            }
        }
        cur.move_next();
    }
}
fn find_new_layer(gcode: &mut ParsedGCode, annotations: &mut Vec<Annotation>) {
    let first_move_id = gcode.first_move_id();
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
                    annotations[g1.move_id as usize - 1].feature = Some(Feature::LayerChangeSequence(0));
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
    let mut ann = Annotation::build(&mut gcode);
    find_new_layer(&mut gcode, &mut ann);
    use std::fs::File;
    use std::io::prelude::*;
    let mut f = File::create("planar_z_test.gcode").expect("failed to create file");
    let _ = f.write_all(gcode.debug_emit().as_bytes());

}
#[test]
fn find_retractions_test() {
    let mut gcode = ParsedGCode::build("test.gcode").expect("asdf");
    let mut ann = Annotation::build(&mut gcode);
    find_retractions(&gcode, &mut ann);
    let out = ann.iter().filter(|x| x.label==Label::MysteryMove).collect::<Vec<_>>();
    panic!("{:?}", out);
}
#[test]
fn first_move_test() {
    let gcode = ParsedGCode::build("test.gcode").expect("asdf");
    let index = gcode.first_move_id();
    panic!("{:?}", index);
}