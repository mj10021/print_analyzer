use crate::parse::{Emit, Instruction, Line, ParsedGCode, G1};

use std::collections::{LinkedList, VecDeque};

#[derive(Debug)]
pub struct Cursor<'a> {
    pub x: Option<f32>,
    pub y: Option<f32>,
    pub z: Option<f32>,
    pub e: Option<f32>,
    pub f: Option<f32>,
    pub cursor: std::collections::linked_list::CursorMut<'a, Line>,
}
fn opt_sub(xi: Option<f32>, xf: Option<f32>) -> f32 {
    if xi.is_none() || xf.is_none() {
        return 0.0;
    }
    xf.unwrap() - xi.unwrap()
}
fn opt_add(a: Option<f32>, b: f32) -> Option<f32> {
    match (a, b) {
        (Some(a), b) => Some(a + b),
        _ => None,
    }
}
fn opt_dist_calc(
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
            x: None,
            y: None,
            z: None,
            e: None,
            f: None,
            cursor,
        }
    }
    fn is_g1(&mut self) -> bool {
        match self.cursor.current() {
            Some(&mut Line::G1(_)) => true,
            _ => false,
        }
    }
    fn at_front(&mut self) -> bool {
        self.cursor.peek_prev().is_none() && self.cursor.current().is_some()
    }
    fn at_end(&mut self) -> bool {
        self.cursor.peek_next().is_none() && self.cursor.current().is_some()
    }
    fn reset_front(&mut self) {
        while !self.at_front() {
            self.prev();
        }
    }
    fn update(&mut self) {
        if let Some(&mut Line::G1(G1 { x, y, z, e, f })) = self.cursor.current() {
            if x.is_some() {
                self.x = x;
            }
            if y.is_some() {
                self.y = y;
            }
            if z.is_some() {
                self.z = z;
            }
            if e.is_some() {
                if self.e.is_none() {
                    self.e = e;
                } else {
                    self.e = Some(self.e.unwrap() + e.unwrap())
                }
            }
            if f.is_some() {
                self.f = f;
            }
        }
    }
    fn unhome(&mut self) {
        self.x = None;
        self.y = None;
        self.z = None;
        self.e = None;
        self.f = None;
    }
    fn next(&mut self) {
        if self.at_end() {
            panic!("moving past end of list");
        }
        self.cursor.move_next();
        self.update();
    }
    fn prev(&mut self) {
        if self.at_front() {
            panic!("moving past front of list");
        }
        self.cursor.move_prev();
        self.update();
    }
    fn seek_to_front(&mut self, target: *const Line) {
        if let Some(curr) = self.cursor.current() {
            if curr as *const Line == target {
                return
            }
        }
        self.next();
    }
    fn seek_to_back(&mut self, target: *const Line) {
        if let Some(curr) = self.cursor.current() {
            if curr as *const Line == target {
                return
            }
        }
        self.prev();
    }
    fn move_prev_g1(&mut self) {
        let init = self.cursor.current().unwrap() as * const Line;
        self.prev();
        while !self.is_g1() {
            if let Some(cur) = self.cursor.current() {
                if cur as *const Line == init {
                    panic!("no prev g1 found");
                }
            }
            self.prev();
        }
    }
    fn find_prev_g1(&mut self) -> G1 {
        // NEED TO ADD CASE FOR IF THERE IS NO PREVIOUS G1
        if !self.is_g1() {
            panic!{"called find prev g1 from non-g1 node"};
        }

        let curr = self.cursor.current().unwrap() as *const Line;
        self.prev();
        while !self.is_g1() {
            self.prev();
        }
        if let Line::G1(g1) = self.cursor.current().unwrap().clone() {
            self.seek_to_front(curr);
            return g1;
        } else { panic!("asdf") }

    }
    fn find_next_g1(&mut self) -> G1 {
        // NEED TO ADD CASE FOR IF THERE IS NO NEXT G1
        if !self.is_g1() {
            panic!{"called find prev g1 from non-g1 node"};
        }

        let curr = self.cursor.current().unwrap() as *const Line;
        self.next();
        while !self.is_g1() {
            self.next();
        }
        if let Line::G1(g1) = self.cursor.current().unwrap().clone() {
            self.seek_to_back(curr);
            return g1;
        } else { panic!("asdf") }

    }
    fn calc_prev_flow(&mut self) -> f32 {
        self.update();
        if !self.is_g1() {
            panic!("flow calc from non-g1 node");
        }
        // make sure that this is using the correct initial and final positions
        let prev = self.find_prev_g1();
        let de = match prev.e {
            Some(de) => de,
            _ => 0.0,
        };
        let dist = opt_dist_calc(prev.x, self.x, prev.y, self.y, prev.z, self.z);
        de / dist
    }
    fn calc_next_flow(&mut self) -> f32 {

    }

    fn translate(&mut self, dx: f32, dy: f32, dz: f32) { //TO BE CONTINUED
        // translating from the current position of the cursor, which is the
        let Some(&mut Line::G1(mut curr)) = self.cursor.current() else { 
            panic!("translating non-g1 move");
        };
        let mut prev = self.find_prev_g1();
        let prev_dist = opt_dist_calc(prev.x, curr.x, prev.y, curr.y, prev.z, curr.z);
        let de = match prev.e {
            Some(e) => e,
            _ => 0.0,
        };
        let prev_flow = de / prev_dist;
        let mut next = self.find_next_g1();
        let next_dist = opt_dist_calc(curr.x, next.x, curr.y, next.y, curr.z, next.z);
        // HERE I SHOULD CALCULATE THE FLOW IN BOTH DIRECTIONS BEFORE ANY TANSFORMATION
        curr.x = opt_add(prev.x, dx);
        curr.y = opt_add(prev.y, dy);
        curr.z = opt_add(prev.z, dz);
        let new_dist = opt_dist_calc(prev.x, curr.x, prev.y, curr.y, prev.z, curr.z);
        let dist_ratio = new_dist / init_dist;
        let new_flow = prev_flow * dist_ratio;
        prev.e = Some(new_flow);
        //NEED TO INSERT NEW prev G1 here

        // i think i'm off by one node and i need to go one farther back





        if let Line::G1(G1{ mut x, mut y, mut z, e, f}) = self.cursor.current().unwrap(){
            x = Some(x.unwrap() + dx); 
            y = Some(y.unwrap() + dy);
            z = Some(z.unwrap() + dz);
        };



    }
    pub fn total_file_dist(&mut self) -> (f32, i32) {
        // FIXMEEEEEEEEEEEEEEEEEEee
        let mut dist = 0.0;
        let mut points = 1;

        // makes sure the cursor is on the first node
        self.reset_front(); // this guarantees that the position

        // make sure the cursor values are correct for the first node
        self.unhome();
        self.update();

        let [mut xi, mut yi, mut zi] = [self.x, self.y, self.z];

        while self.cursor.peek_next().is_some() {
            if let Some(&mut Line::G1(G1 {
                x: xf,
                y: yf,
                z: zf,
                e: de,
                f,
            })) = self.cursor.peek_next()
            {
                dist += opt_dist_calc(xi, xf, yi, yf, zi, zf);
                xi = xf;
                yi = yf;
                zi = zf;
                points += 1;
            }
            self.next();
        }
        (dist, points)
    }
    fn subdiv_seg(&mut self, seg_dist: f32) {
        if !self.is_g1() {
            panic!("can't subdivide non g1 move: {:?}", self.cursor.current());
        }
        // store pointer to initial g1 move and and find previous move
        let init = self.cursor.current().unwrap() as *const Line;
        self.prev();
        while !self.is_g1() {
            self.prev();
        }
        let xi = self.x;
        let yi = self.y;
        let zi = self.z;
        let tot_e = match self.e{
            Some(de) => de,
            None => 0.0,
        };

        // return to initial move
        while self.cursor.current().unwrap() as *const Line != init {
            self.next(); // I NEED TO TEST THIS
        }
        let mut new_pts: Vec<Line> = Vec::new();
        let dx = self.x.unwrap() - xi.unwrap();
        let dy = self.y.unwrap() - yi.unwrap();
        let dz = self.z.unwrap() - zi.unwrap();

        let dist = opt_dist_calc(xi, self.x, yi, self.y, zi, self.z);

 
        let count = (dist / seg_dist);
        let mut i = 1.0;
        while i < count {
            let x = Some(xi.unwrap() + (dx * i));
            let y = Some(yi.unwrap() + (dy * i));
            let z = Some(zi.unwrap() + (dz * i));
            let de = Some((tot_e / count) * i);
            let new_move = Line::G1(G1 {x, y, z, e: de, f: None});
            new_pts.push(new_move);
            i += 1.0;
        }
        while new_pts.len() > 0 {
            let pt = new_pts.pop().unwrap();
            self.cursor.insert_before(pt);
        }
    }
    //    pub fn subdivide_all(&mut self, divisions: i32) -> LinkedList<Line> {
    //        let (tot_dist, points) = self.total_file_dist(); // total dist is broken
    //        let points = points * divisions;
    //        let points = points as f32;
    //        let seg_dist = tot_dist / points;
    //        let mut subdivided = LinkedList::new();
    //        self.reset_front();
    //        println!("b {:?}", self.cursor.current());
    //        loop {
    //            subdivided.append(&mut self.subdiv_seg(seg_dist));
    //            if self.at_end() {
    //                break;
    //            }
    //            self.next();
    //        }
    //        panic!("{:?}", subdivided);
    //        subdivided
    //    }
    //
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

fn opt_dist_test() {
    assert_eq!(
        opt_dist_calc(
            Some(1.0),
            Some(10.0),
            Some(1.0),
            Some(10.0),
            Some(1.0),
            Some(10.0)
        ),
        (9.0_f32.powf(2.0) * 3.0).sqrt()
    )
}
#[test]
fn prev_flow() {
    let input = "G1 X1 Y0 Z0 E10;asdfasdfasdf \n
    G1 X20 Y0 Z0 E0\n
    ;asdfasdfasdf\n";
    let mut gcode = ParsedGCode::from_str(input);
    let mut cursor = Cursor::build(&mut gcode);
    cursor.next();
    assert_eq!(10.0/19.0, cursor.calc_prev_flow());
}
#[test]
fn total_dist_test() {
    let input = "G1 X1 Y1 Z1 E1;asdfasdfasdf \n
    G1 X20 Y20 Z11 E10\n
    ;asdfasdfasdf\n";
    let mut gcode = ParsedGCode::from_str(input);
    let mut cursor = Cursor::build(&mut gcode);
    assert_eq!(
        cursor.total_file_dist(),
        (
            opt_dist_calc(
                Some(1.0),
                Some(20.0),
                Some(1.0),
                Some(20.0),
                Some(1.0),
                Some(11.0)
            ),
            2
        )
    );
}
#[test]
fn sub_seg_test() {
    // the coordinates are wrong
    let input = "G1 X1 Y1 Z1 E1;asdfasdfasdf \n
    G1 X20 Y20 Z11 E10\n
    ;asdfasdfasdf\n";
    let mut gcode = ParsedGCode::from_str(input);
    let mut cursor = Cursor::build(&mut gcode);
    cursor.next();
    let seg_dist = 5.0;
    cursor.subdiv_seg(seg_dist);
    panic!("{:?}", gcode);
}
