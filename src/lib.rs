#![feature(linked_list_cursors)]
#![allow(dead_code)]
mod parse;
mod analyzer;

mod transform {
    // use crate::parse::*;

    // fn transform(gcode: &mut ParsedGCode, f: fn(G1)) {
    //     let mut cur = gcode.instructions.cursor_front_mut();
    //     while cur.peek_next().is_some() {
    //         if let Some((Line::G1(g1), _)) = cur.current() {
    //             f(g1);
    //         }
    //         cur.move_next();
    //     }
    //     gcode.set_states();

    // }
}
mod cursor {
    use std::collections::linked_list::{Cursor, CursorMut};
    use crate::parse::*;
    pub enum CursorError {
        PastEnd,
        PastFront,
        ExpectedG1,
        Unknown,
    }
    impl std::fmt::Display for CursorError {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            let msg = match self {
                CursorError::PastEnd => "past end",
                CursorError::PastFront => "past front",
                CursorError::ExpectedG1 => "expected g1",
                CursorError::Unknown => "unknown... spooky",
            };
            write!(f, "{}", msg)
        }
    }
    impl std::fmt::Debug for CursorError {
        fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
            let msg = match self {
                CursorError::PastEnd => "past end",
                CursorError::PastFront => "past front",
                CursorError::ExpectedG1 => "expected g1",
                CursorError::Unknown => "unknown... spooky",
            };
            write!(f, "{}", msg)
        }
    }
    pub trait GCursorMut {
        fn at_end(&mut self) -> bool;
        fn at_front(&mut self) -> bool;
        fn at_g1(&mut self) -> Result<(), CursorError>;
        fn next(&mut self) -> Result<(), CursorError>;
        fn prev(&mut self) -> Result<(), CursorError>;
        fn move_next_g1(&mut self, g1_count: i32) -> Result<(), CursorError>;
        fn get_next_g1(&mut self, g1_count: i32) -> Result<(G1, State), CursorError>;
        fn move_prev_g1(&mut self) -> Result<(), CursorError>;
        fn get_prev_g1(&mut self, g1_count: i32) -> Result<(G1, State), CursorError>;
        fn is_first_g1(&mut self) -> bool;
        fn is_last_g1(&mut self, g1_count: i32) -> bool;
        fn update_state(&mut self) -> Result<(), CursorError>;
        fn translate_g1(&mut self, dx: f32, dy: f32, dz: f32, g1_count: i32) -> Result<(), CursorError>;
        fn subdiv_seg(&mut self, seg_len: i32, g1_count: i32) -> Result<(), CursorError>;
    }
    impl<'a> GCursorMut for CursorMut<'a, (Line, State)> {
        fn at_end(&mut self) -> bool {
            self.peek_next().is_none() && self.current().is_some()
        }
        fn at_front(&mut self) -> bool {
            self.peek_prev().is_none() && self.current().is_some()
        }
        fn at_g1(&mut self) -> Result<(), CursorError> {
            if let Some((Line::G1(_), _)) = self.current() {
                return Ok(());
            } else { Err(CursorError::ExpectedG1) }
        }
        // move cursor forward without wrapping
        fn next(&mut self) -> Result<(), CursorError> {
            if self.at_end() {
                return Err(CursorError::PastEnd);
            }
            self.move_next();
            Ok(())
        }
        fn move_next_g1(&mut self, g1_count: i32) -> Result<(), CursorError> {
            self.at_g1()?;
            if self.is_last_g1(g1_count) {
                return Err(CursorError::PastEnd);
            };
            self.next()?;
            while let Err(_) = self.at_g1() {
                self.next()?;
            }
            Ok(())
        }
        fn get_next_g1(&mut self, g1_count: i32) -> Result<(G1, State), CursorError> {
            self.at_g1()?;
            if self.is_last_g1(g1_count) {
                return Err(CursorError::PastEnd);
            };
            self.move_next_g1(g1_count)?;
            let line = self.current().unwrap().clone();
            self.move_prev_g1()?;
            if let (Line::G1(g1), state) = line {
                return Ok((g1, state));
            }
            Err(CursorError::Unknown)
        }
        fn prev(&mut self) -> Result<(), CursorError> {
            if self.at_front() {
                return Err(CursorError::PastFront);
            }
            self.move_prev();
            Ok(())
        }
        fn move_prev_g1(&mut self) -> Result<(), CursorError> {
            // this one doesn't rly work
            self.at_g1()?;
            self.prev()?;
            while let Err(_) = self.at_g1() {
                self.prev()?;
            }
            Ok(())
        }
        fn get_prev_g1(&mut self, g1_count: i32) -> Result<(G1, State), CursorError> {
            self.at_g1()?;
            if self.is_first_g1() {
                return Err(CursorError::PastFront);
            }
            self.move_prev_g1()?;
            let line = self.current().unwrap().clone();
            self.move_next_g1(g1_count)?;
            if let (Line::G1(g1), state) = line {
                return Ok((g1, state));
            } else { Err(CursorError::Unknown) }
        }
        fn is_first_g1(&mut self) -> bool {
            if let Err(_) = self.at_g1() {
                panic!("call from non-g1");
            };
            if let Some(&mut (Line::G1(G1 { move_id, .. }), _)) = self.current() {
                return move_id == 1;
            }
            false
        }
        fn is_last_g1(&mut self, g1_count: i32) -> bool {
            if let Err(_) = self.at_g1() {
                panic!("call from non-g1");
            };
            if let Some(&mut (Line::G1(G1 { move_id, .. }), _)) = self.current() {
                return move_id == g1_count;
            }
            false
        }
        fn update_state(&mut self) -> Result<(), CursorError> {

            if let Some((Line::Instruction(Instruction { first_word, ..}), state)) = self.current() {
                if first_word == &mut Word('G', 28.0, None) {
                    state.home();
                    return Ok(());
                }
            }
            if let Some((_line, prev_state)) = self.peek_prev() {
                let prev_state = prev_state.clone();
                match self.current() {
                // if the instruction is a G28, update the set state to home and return Ok(())
                    Some((Line::Instruction(_), state)) => { 
                        state.update_from(&prev_state);
                        Ok(())
                    }
                    // FIXME: change this to mark green when state is computed and mark red when g1 is modified 
                    Some((Line::G1(g1), state)) => {
                        assert!(prev_state.homed, "g1 move from unhomed state");
                        // if the state is from the current G1, update nothing and return Ok(())
                        if g1.emit() == state.g1_emit {
                            return Ok(());
                        // otherwise, update the state
                        } else {
                            state.x = g1.x.unwrap_or(prev_state.x);
                            state.y = g1.y.unwrap_or(prev_state.y);
                            state.z = g1.z.unwrap_or(prev_state.z);
                            state.e = prev_state.e + g1.e.unwrap_or(0.0);
                            state.f = g1.f.unwrap_or(prev_state.f);
                            state.homed = prev_state.homed;
                            state.g1_emit = g1.emit();
                            Ok(())
                        }
                    },
                    Some((Line::Raw(_), state)) => {
                        state.update_from(&prev_state);
                        Ok(())
                    },
                    _ => Err(CursorError::Unknown),
                }
            } else { /* front of list */ Ok(()) }
        }
        fn translate_g1(&mut self, dx: f32, dy: f32, dz: f32, g1_count: i32) -> Result<(), CursorError> {
            if let Err(e) = self.at_g1() {
                panic!("{}", e);
            }
            if self.is_first_g1() || self.is_last_g1(g1_count) {
                return Ok(());
            }
            let mut init_next_de = 0.0;
            let mut new_next_dist = 0.0;
            let mut init_next_dist = 0.0;

            let (_, prev_state) = self.get_prev_g1(g1_count)?;
            let (next_g1, next_state) = self.get_next_g1(g1_count)?;
            if let Some((Line::G1(curr_g1), curr_state)) = self.current() {
                let init_prev_dist = curr_state.dist(&prev_state);
                init_next_dist = curr_state.dist(&next_state);
                let init_curr_de = curr_g1.e.unwrap_or(0.0);
                init_next_de = next_g1.e.unwrap_or(0.0);
                curr_g1.x = Some(curr_state.x + dx);
                curr_g1.y = Some(curr_state.y + dy);
                curr_g1.z = Some(curr_state.z + dz);
                let temp_state = State {
                    x: curr_state.x + dx,
                    y: curr_state.y + dy,
                    z: curr_state.z + dz,
                    e: 0.0,
                    f: 0.0,
                    homed: true,
                    g1_emit: String::new(),
                };
                let new_prev_dist = temp_state.dist(&prev_state);
                new_next_dist = temp_state.dist(&next_state);
                curr_g1.e = Some(init_curr_de * (new_prev_dist / init_prev_dist));
            }
            self.update_state()?;
            self.move_next_g1(g1_count)?;
            if let Some((Line::G1(next_g1), _next_state)) = self.current() {
                next_g1.e = Some(init_next_de * (new_next_dist / init_next_dist));
            }
            self.update_state()?;
            self.move_prev_g1()?;
            Ok(())
        }
        fn subdiv_seg(&mut self, count: i32, g1_count: i32) -> Result<(), CursorError> {
            // needs to have a previous g1 move to divide from
            self.at_g1()?;
            let (_prev_g1, prev_state) = self.get_prev_g1(g1_count)?;
            let mut dx = 0.0;
            let mut dy = 0.0;
            let mut dz = 0.0;
            let mut de = 0.0;
            let mut f: Option<f32> = None;
            if let Some((Line::G1(curr_g1), curr_state)) = self.current() {
                dx = curr_state.x / count as f32;
                dy = curr_state.y / count as f32;
                dz = curr_state.z / count as f32;
                de = curr_g1.e.unwrap_or(0.0) / count as f32;
                curr_g1.e = Some(de);
                f = curr_g1.f;
            }
            let mut i = 0;
            while i < count {
                let new_g1 = G1 {
                    move_id: -1,
                    x: Some(prev_state.x + (dx * i as f32)),
                    y: Some(prev_state.y + (dy * i as f32)),
                    z: Some(prev_state.z + (dz * i as f32)),
                    e: Some(de),
                    f,
                };
                self.insert_before((Line::G1(new_g1), State::new()));
                self.prev()?;
                self.update_state()?;
                self.next()?;
                i += 1;
            }
            Ok(())
        }
    }
    pub trait GCursor {
        fn at_end(&self) -> bool;
        fn at_front(&self) -> bool;
        fn at_g1(&self) -> Result<(), CursorError>;
        fn next(&mut self) -> Result<(), CursorError>;
        fn prev(&mut self) -> Result<(), CursorError>;
        fn move_next_g1(&mut self, g1_count: i32) -> Result<(), CursorError>;
        fn get_next_g1(&mut self, g1_count: i32) -> Result<(G1, State), CursorError>;
        fn move_prev_g1(&mut self) -> Result<(), CursorError>;
        fn get_prev_g1(&mut self, g1_count: i32) -> Result<(G1, State), CursorError>;
        fn is_first_g1(&self) -> bool;
        fn is_last_g1(&self, g1_count: i32) -> bool;
    }
    impl GCursor for Cursor<'_, (Line, State)> {
        fn at_end(&self) -> bool {
            self.peek_next().is_none() && self.current().is_some()
        }
        fn at_front(&self) -> bool {
            self.peek_prev().is_none() && self.current().is_some()
        }
        fn at_g1(&self) -> Result<(), CursorError> {
            if let Some((Line::G1(_), _)) = self.current() {
                return Ok(());
            } else { Err(CursorError::ExpectedG1) }
        }
        // move cursor forward without wrapping
        fn next(&mut self) -> Result<(), CursorError> {
            if self.at_end() {
                return Err(CursorError::PastEnd);
            }
            self.move_next();
            Ok(())
        }
        fn move_next_g1(&mut self, g1_count: i32) -> Result<(), CursorError> {
            self.at_g1()?;
            if self.is_last_g1(g1_count) {
                return Err(CursorError::PastEnd);
            };
            self.next()?;
            while let Err(_) = self.at_g1() {
                self.next()?;
            }
            Ok(())
        }
        fn get_next_g1(&mut self, g1_count: i32) -> Result<(G1, State), CursorError> {
            self.at_g1()?;
            if self.is_last_g1(g1_count) {
                return Err(CursorError::PastEnd);
            };
            self.move_next_g1(g1_count)?;
            let line = self.current().unwrap().clone();
            self.move_prev_g1()?;
            if let (Line::G1(g1), state) = line {
                return Ok((g1, state));
            }
            Err(CursorError::Unknown)
        }
        fn prev(&mut self) -> Result<(), CursorError> {
            if self.at_front() {
                return Err(CursorError::PastFront);
            }
            self.move_prev();
            Ok(())
        }
        fn move_prev_g1(&mut self) -> Result<(), CursorError> {
            self.at_g1()?;
            self.prev()?;
            while let Err(_) = self.at_g1() {
                self.prev()?;
            }
            Ok(())
        }
        fn get_prev_g1(&mut self, g1_count: i32) -> Result<(G1, State), CursorError> {
            self.at_g1()?;
            if self.is_first_g1() {
                return Err(CursorError::PastFront);
            }
            self.move_prev_g1()?;
            let line = self.current().unwrap().clone();
            self.move_next_g1(g1_count)?;
            if let (Line::G1(g1), state) = line {
                return Ok((g1, state));
            } else { Err(CursorError::Unknown) }
        }
        fn is_first_g1(&self) -> bool {
            if let Err(_) = self.at_g1() {
                panic!("call from non-g1");
            };
            if let Some(&(Line::G1(G1 { move_id, .. }), _)) = self.current() {
                return move_id == 1;
            }
            false
        }
        fn is_last_g1(&self, g1_count: i32) -> bool {
            if let Err(_) = self.at_g1() {
                panic!("call from non-g1");
            };
            if let Some(&(Line::G1(G1 { move_id, .. }), _)) = self.current() {
                return move_id == g1_count;
            }
            false
        }
    }
}


#[cfg(test)]
#[test]
fn transform_test() {
    use std::f32::consts::PI;
    use crate::parse::*;
    use crate::cursor::*;
    let mut gcode = ParsedGCode::build("test.gcode").expect("asdf");
    let mut cur = gcode.instructions.cursor_front_mut();
    while let Err(_) = cur.at_g1() {
        cur.next().expect("asdf");
    }
    cur.move_next_g1(gcode.g1_moves).expect("asdf");
    while !cur.is_last_g1(gcode.g1_moves) {
        if let Some((Line::G1(g1), _)) = cur.current() {
            let i = g1.move_id as f32;
            let _ = cur.translate_g1((i * (PI / 8.0)).sin(), 0.0, 0.0, gcode.g1_moves);
        }
        cur.move_next_g1(gcode.g1_moves).expect("asdf");}
    use std::fs::File;
    use std::io::prelude::*;
    let mut f = File::create("transform_test.gcode").expect("failed to create file");
    let _ = f.write_all(gcode.debug_emit().as_bytes());
}
mod integration_tests {

    #[cfg(test)]
    use crate::parse::{ParsedGCode, Emit};
    #[test]
    fn import_emit_reemit() {
        let f = "test.gcode";
        let init = ParsedGCode::build(f).expect("failed to parse gcode");
        let init = init.emit();
        use std::fs::File;
        use std::io::prelude::*;
        let mut f = File::create("test_output.gcode").expect("failed to create file");
        let _ = f.write_all(&init.as_bytes());
        let snd = ParsedGCode::build("test_output.gcode").expect("asdf");
        let snd = snd.emit();
        assert_eq!(init, snd);
    }
}