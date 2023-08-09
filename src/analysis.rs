use crate::parse::{Instruction, Line, ParsedGCode, G1, Emit};

use std::collections::{LinkedList, VecDeque};

#[derive(Debug)]
pub struct Cursor<'a> {
    pub x: f32,
    pub y: f32,
    pub z: f32,
    pub e: f32,
    pub f: f32,
    pub cursor: std::collections::linked_list::CursorMut<'a, Line>,
}

fn dist_calc(
    xi: Option<f32>,
    xf: Option<f32>,
    yi: Option<f32>,
    yf: Option<f32>,
    zi: Option<f32>,
    zf: Option<f32>,
) -> f32 {
    let dx: f32 = match (xf, xi) {
        (Some(xf), Some(xi)) => xf - xi,
        _ => 0.0,
    };
    let dy: f32 = match (yf, yi) {
        (Some(yf), Some(yi)) => yf - yi,
        _ => 0.0,
    };
    let dz: f32 = match (zf, zi) {
        (Some(zf), Some(zi)) => zf - zi,
        _ => 0.0,
    };
    (dx.powf(2.0) + dy.powf(2.0) + dz.powf(2.0)).sqrt()
}
impl<'a> Cursor<'a> {
    pub fn build(gcode: &'a mut ParsedGCode) -> Cursor {
        let cursor = gcode.instructions.cursor_front_mut();
        Cursor {
            x: -1.0,
            y: -1.0,
            z: -1.0,
            e: -1.0,
            f: -1.0,
            cursor,
        }
    }
    fn at_front(&mut self) -> bool {
        // this will panic on an empty list but i don't care
        self.cursor.current().unwrap() as *const Line == self.cursor.front().unwrap() as *const Line
    }
    fn at_end(&mut self) -> bool {
        // this will panic on an empty list but i don't care
        self.cursor.current().unwrap() as *const Line == self.cursor.back().unwrap() as *const Line
    }
    fn reset_front(&mut self) {
        while !self.at_front() {
            self.prev();
        }
    }
    fn next(&mut self) {
        if !self.at_end() {
            self.cursor.move_next();
            if let Some(&mut Line::G1(G1 { x, y, z, e, f })) = self.cursor.current() {
                if let Some(x) = x {
                    self.x = x;
                }
                if let Some(y) = y {
                    self.y = y;
                }
                if let Some(z) = z {
                    self.z = z;
                }
                if let Some(e) = e {
                    self.e += e;
                }
                if let Some(f) = f {
                    self.f = f;
                }
            }
        }
    }
    fn prev(&mut self) {
         if !self.at_front() {
            self.cursor.move_prev();
            if let Some(&mut Line::G1(G1 { x, y, z, e, f })) = self.cursor.current() {
                if let Some(x) = x {
                    self.x = x;
                }
                if let Some(y) = y {
                    self.y = y;
                }
                if let Some(z) = z {
                    self.z = z;
                }
                if let Some(e) = e {
                    self.e += e;
                }
                if let Some(f) = f {
                    self.f = f;
                }
            }
        }       
    }
    pub fn total_file_dist(&mut self) -> (f32, i32) {
        // FIXMEEEEEEEEEEEEEEEEEEee
        let mut dist = 0.0;
        let mut points = 1;
        let mut last: [Option<f32>; 3] = [Some(self.x), Some(self.y), Some(self.z)];
        for mut num in last {
            if num.unwrap() < 0.0 {
                num = None;
            }
        }
        self.reset_front(); // just to make sure the cursor is at the front
        loop {
            let curr = self.cursor.current().unwrap();
            if let &mut Line::G1(G1 {
                x: xf,
                y: yf,
                z: zf,
                ..
            }) = curr // check if the cursor is at a G1 move
            {
                let xi = last[0];
                let yi = last[1];
                let zi = last[2];
                dist += dist_calc(xi, xf, yi, yf, zi, zf);
                
                last = [xf, yf, zf];            
             
                points += 1;


                if self.at_end() {
                    break;
                }
                self.next();
            } else {
                if self.at_end() {
                    break;
                }
                self.next();
                continue;
            }
            if self.at_end() {
                break;
            }
        }
        // need to reset cursor to beginning after searching total dist
        self.reset_front();
        (dist, points)
    }

    // assumes abs xyz and relative e
    fn subdiv_seg(&mut self, seg_dist: f32) -> LinkedList<Line> {
        let [xi, yi, zi] = [self.x, self.y, self.z];

        let mut out = LinkedList::new();

        // REWRITE THIS TO USE THE DIST_CALC FUNCTION

        let Some(&mut Line::G1(G1 { x: xf, y: yf, z: zf, e: de, mut f })) = self.cursor.peek_next() else {
            // if we cant deconstruct the G1, push it back onto the stack
            out.push_back(self.cursor.current().unwrap().clone());
            return out;
        };
        if let Some(f) = f {
        } else {
            f = Some(-1.0);
        };


        let mut dist_inner = 0.0;
        let mut dx = None;
        let mut dy = None;
        let mut dz = None;
        if let Some(xf) = xf {
            if xi > 0.0 {
                dx = Some(xf - xi);
                dist_inner += dx.unwrap().powf(2.0);
            } else {
                // if this is the first move,
                // push it back onto the stack
                out.push_back(self.cursor.current().unwrap().clone());
                return out;
            }
        }
        if let Some(yf) = yf {
            if yi > 0.0 {
                dy = Some(yf - yi);
                dist_inner += dy.unwrap().powf(2.0);
            } else {
                // if this is the first move,
                // push it back onto the stack
                out.push_back(self.cursor.current().unwrap().clone());
                return out;
            }
        }
        if let Some(zf) = zf {
            if zi > 0.0 {
                dz = Some(zf - zi);
                dist_inner += dz.unwrap().powf(2.0);
            } else {
                // if this is the first move,
                // push it back onto the stack
                out.push_back(self.cursor.current().unwrap().clone());
                return out;
            }
        }

        let dist = dist_inner.sqrt();
        let count = (dist / seg_dist);

        let mut x_seg = None;
        if dx.is_some() {
            x_seg = Some(dx.unwrap() / count);
        }
        let mut y_seg = None;
        if dy.is_some() {
            y_seg = Some(dy.unwrap() / count);
        }
        let mut z_seg = None;
        if dz.is_some() {
            z_seg = Some(dz.unwrap() / count);
        }

        let mut e_seg = None;
        if de.is_some() {
            e_seg = Some(de.unwrap() / count);
        }

        // since the parsed g1 moves are all relative
        // each subdivided segment should be identical

        let mut i = 0.0;
        while i < count {
            panic!("{:?}", count);
            // THIS IS THE LOOP I AM STUCK IN BEACUSE COUNT IS INF!!!
            let mut x = None;
            let mut y = None;
            let mut z = None;

            if x_seg.is_some() {
                x = Some(xi + (i * x_seg.unwrap()))
            }
            if y_seg.is_some() {
                y = Some(yi + (i * y_seg.unwrap()))
            }
            if z_seg.is_some() {
                z = Some(zi + (i * z_seg.unwrap()))
            }
            println!("{:?}_{:?}_{:?}", x, y, z);
            let g1 = G1 {
                x,
                y,
                z,
                e: e_seg,
                f,
            };
            out.push_back(Line::G1(g1));
            i += 1.0;
        }
        panic!("{:?}", out);
        out
    }

    pub fn subdivide_all(&mut self, divisions: i32) -> LinkedList<Line> {
        let (tot_dist, points) = self.total_file_dist(); // total dist is broken
        let points = points * divisions;
        let points = points as f32;
        let seg_dist = tot_dist / points;
        let mut subdivided = LinkedList::new();
        self.reset_front();
        println!("b {:?}", self.cursor.current());
        loop {
            subdivided.append(&mut self.subdiv_seg(seg_dist));
            if self.at_end() {
                break;
            }
            self.next();
        }
        panic!("{:?}", subdivided);
        subdivided
    }

    pub fn emit(&mut self) -> String {
        let mut out = String::new();
        self.reset_front();
        while self.cursor.current().is_some() {
            let ins = self.cursor.current().unwrap();
            out += &ins.emit();
            self.next();
        }
        out
    }

}

#[cfg(test)]

#[test]

fn dist() {
    assert_eq!(dist_calc(Some(1.0), Some(10.0), Some(1.0), Some(10.0), Some(1.0), Some(10.0)), (9.0_f32.powf(2.0) * 3.0).sqrt())
}