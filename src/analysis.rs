use crate::parse::{Emit, Instruction, Line, ParsedGCode, G1};

use std::{
    collections::{HashMap, LinkedList, VecDeque},
    f32::NEG_INFINITY,
};

#[derive(Clone, Debug)]
pub struct State {
    x: f32,
    y: f32,
    z: f32,
    e: f32,
    f: f32,
    hash: Option<f64>,
}

impl State {
    pub fn new() -> State {
        State {
            x: NEG_INFINITY,
            y: NEG_INFINITY,
            z: NEG_INFINITY,
            e: NEG_INFINITY,
            f: NEG_INFINITY,
            hash: None,
        }
    }
}

/// A cursor tracking a linked list of nodes where each node represents a line of gcode
/// x, y, z, and e represent absolute coordinates, f is the last specified feedrate, or none if default
#[derive(Debug)]
pub struct Cursor<'a> {
    pub x: Option<f32>,
    pub y: Option<f32>,
    pub z: Option<f32>,
    pub e: Option<f32>,
    pub f: Option<f32>,
    pub cursor: std::collections::linked_list::CursorMut<'a, (Line, State)>,
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
    /// returns true if the current node is a Line::G1
    /// ```
    /// extern crate print_analyzer;
    /// use print_analyzer::parse::ParsedGCode;
    /// use print_analyzer::analysis::Cursor;
    /// let gcode = "G1 X1\nM200 S100\nG1 E1234.1234";
    /// let mut gcode = ParsedGCode::from_str(gcode);
    /// let mut cursor = Cursor::build(&mut gcode);
    /// assert_eq!(cursor.is_g1(), true);
    /// cursor.next();
    /// assert_eq!(cursor.is_g1(), false);
    /// cursor.next();
    /// assert_eq!(cursor.is_g1(), true);
    /// ```
    pub fn is_g1(&mut self) -> bool {
        match self.cursor.current() {
            Some(&mut (Line::G1(_), _)) => true,
            _ => false,
        }
    }
    fn at_front(&mut self) -> bool {
        self.cursor.peek_prev().is_none() && self.cursor.current().is_some()
    }
    fn at_end(&mut self) -> bool {
        self.cursor.peek_next().is_none() && self.cursor.current().is_some()
    }

    /// moves cursor to head of linked list
    /// ``` rust
    /// #![feature(linked_list_cursors)]
    /// extern crate print_analyzer;
    /// use print_analyzer::parse::{ParsedGCode, Line, G1};
    /// use print_analyzer::analysis::Cursor;
    /// let gcode = "G1 X1\nM200 S100\nG1 E1234.1234";
    /// let mut gcode = ParsedGCode::from_str(gcode);
    /// let mut cursor = Cursor::build(&mut gcode);
    /// cursor.next();
    /// cursor.next();
    /// cursor.reset_front();
    /// assert_eq!(cursor.cursor.current(), Some(&mut Line::G1(G1 {x: Some(1.0), y: None, z: None, e: None, f: None})));
    pub fn reset_front(&mut self) {
        while !self.at_front() {
            self.prev();
        }
    }
    /// set cursor values to current node
    /// ```
    /// extern crate print_analyzer;
    /// use print_analyzer::parse::{ParsedGCode, Line, G1};
    /// use print_analyzer::analysis::Cursor;
    /// let gcode = "G1 X1\nM200 S100\nG1 E1234.1234";
    /// let mut gcode = ParsedGCode::from_str(gcode);
    /// let mut cursor = Cursor::build(&mut gcode);
    /// cursor.initialize();
    /// assert_eq!(cursor.x, Some(1.0));
    /// ```
    ///
    pub fn initialize(&mut self) {
        if let Some(&mut (Line::G1(G1 { x, y, z, e, f }), _)) = self.cursor.current() {
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
                self.e = e;
            }
            if f.is_some() {
                self.f = f;
            }
        }
    }
    fn update_next(&mut self) {
        if let Some(&mut (Line::G1(G1 { x, y, z, e, f }), _)) = self.cursor.current() {
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
    fn update_prev(&mut self) {
        if let Some(&mut (Line::G1(G1 { x, y, z, e, f }), _)) = self.cursor.current() {
            if x.is_some() {
                self.x = x;
            }
            if y.is_some() {
                self.y = y;
            }
            if z.is_some() {
                self.z = z;
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
    /// move the cursor one line forward in g-code and update values if g1
    /// ``` rust
    /// extern crate print_analyzer;
    /// use print_analyzer::parse::{ParsedGCode, Line, G1};
    /// use print_analyzer::analysis::Cursor;
    /// let gcode = "G1 X1 E1\nG1 z100 e21\nG1 E1234.1234";
    /// let mut gcode = ParsedGCode::from_str(gcode);
    /// let mut cursor = Cursor::build(&mut gcode);
    ///
    /// cursor.initialize();
    /// let ei = cursor.e;
    /// cursor.next();
    /// cursor.prev();
    /// assert_eq!(ei, cursor.e);
    /// ```
    pub fn next(&mut self) {
        if self.at_end() {
            panic!("moving past end of list");
        }
        self.cursor.move_next();
        self.update_next();
    }
    pub fn prev(&mut self) {
        if self.at_front() {
            panic!("moving past front of list");
        }
        if self.is_g1() {
            if let Some(&mut (
                Line::G1(G1 {
                    x: _,
                    y: _,
                    z: _,
                    e: Some(de),
                    f: _,
                }),
                _,
            )) = self.cursor.current()
            {
                self.e = Some((self.e.unwrap() - de));
            }
        }
        self.cursor.move_prev();
        self.update_prev();
    }
    pub fn seek_to_front(&mut self, target: *const (Line, State)) {
        if let Some(curr) = self.cursor.current() {
            if curr as *const (Line, State) == target {
                return;
            }
        }
        self.next();
    }
    fn seek_to_back(&mut self, target: *const (Line, State)) {
        if let Some(curr) = self.cursor.current() {
            if curr as *const (Line, State) == target {
                return;
            }
        }
        self.prev();
    }
    fn move_prev_g1(&mut self) {
        let init = self.cursor.current().unwrap() as *const (Line, State);
        self.prev();
        while !self.is_g1() {
            if let Some(cur) = self.cursor.current() {
                if cur as *const (Line, State) == init {
                    panic!("no prev g1 found");
                }
            }
            self.prev();
        }
    }
    fn find_prev_g1(&mut self) -> G1 {
        // NEED TO ADD CASE FOR IF THERE IS NO PREVIOUS G1
        if !self.is_g1() {
            panic! {"called find prev g1 from non-g1 node"};
        }

        let curr = self.cursor.current().unwrap() as *const (Line, State);
        self.prev();
        while !self.is_g1() {
            self.prev();
        }
        if let (Line::G1(g1), _) = self.cursor.current().unwrap().clone() {
            self.seek_to_front(curr);
            return g1;
        } else {
            panic!("asdf")
        }
    }
    fn move_next_g1(&mut self) {
        let init = self.cursor.current().unwrap() as *const (Line, State);
        self.next();
        while !self.is_g1() {
            if let Some(cur) = self.cursor.current() {
                if cur as *const (Line, State) == init {
                    panic!("no prev g1 found");
                }
            }
            self.next();
        }
    }
    fn find_next_g1(&mut self) -> G1 {
        // NEED TO ADD CASE FOR IF THERE IS NO NEXT G1
        if !self.is_g1() {
            panic! {"called find prev g1 from non-g1 node"};
        }

        let curr = self.cursor.current().unwrap() as *const (Line, State);
        self.next();
        while !self.is_g1() {
            self.next();
        }
        if let (Line::G1(g1), _) = self.cursor.current().unwrap().clone() {
            self.seek_to_back(curr);
            return g1;
        } else {
            panic!("asdf")
        }
    }
    fn calc_prev_flow(&mut self) -> f32 {
        self.unhome();
        self.update_next();
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
        todo!();
    }

    fn translate(&mut self, dx: f32, dy: f32, dz: f32) {
        // translating from the current position of the cursor, which is the
        let (Line::G1(mut curr), _) = self.cursor.current().unwrap().clone() else {
            panic!("translating non-g1 move");
        };
        let mut prev = self.find_prev_g1();
        let prev_dist = opt_dist_calc(prev.x, curr.x, prev.y, curr.y, prev.z, curr.z);
        let init_de = match curr.e {
            Some(de) => de,
            _ => 0.0,
        };
        let mut next = self.find_next_g1();
        let next_dist = opt_dist_calc(curr.x, next.x, curr.y, next.y, curr.z, next.z);
        let next_de = match next.e {
            Some(de) => de,
            _ => 0.0,
        };
        curr.x = opt_add(curr.x, dx);
        curr.y = opt_add(curr.y, dy);
        curr.z = opt_add(curr.z, dz);

        let new_prev_dist = opt_dist_calc(prev.x, curr.x, prev.y, curr.y, prev.z, curr.z);
        let new_flow = (init_de / prev_dist) * new_prev_dist;
        curr.e = Some(new_flow);

        let new_next_dist = opt_dist_calc(curr.x, next.x, curr.y, next.y, curr.z, next.z);
        let next_dist_ratio = new_next_dist / next_dist;
        let new_flow = (next_de / next_dist) * new_next_dist;
        next.e = Some(new_flow);

        // start: adsf -> *G1 (curr) -> asdf -> asdf -> G1 (next) -> None
        // remove current node: asdf -> *asdf -> adsf -> G1 (next) -> None
        // insert_before(new curr): asdf -> G1 (new_curr) -> *asdf -> asdf -> G1(next) -> None
        // move_prev : asdf -> *G1 (new_curr) -> asdf -> asdf -> G1(next) -> None
        // move_next_g1(): asdf -> G1 (new_curr) -> asdf -> asdf -> *G1(next) -> None
        // remove current: asdf -> G1 (new_curr) -> *asdf -> asdf -> *None
        // insert before(new_next): asdf -> G1 (new_curr) -> asdf -> asdf -> G1(new_next) -> *None
        // move prev: asdf -> G1 (new_curr) -> asdf -> asdf -> *G1(new_next) -> None
        // move_prev_g1():: asdf -> *G1 (new_curr) -> asdf -> asdf -> G1(new_next) -> None

        // NEED TO ADD CASE FOR TRANSLATING LAST NODE!!!

        let new_curr = (Line::G1(curr), State::new());
        let new_next = (Line::G1(next), State::new());
        let _ = self.cursor.remove_current();
        self.cursor.insert_before(new_curr);
        self.cursor.move_prev();
        self.move_next_g1();
        let _ = self.cursor.remove_current();
        self.cursor.insert_before(new_next);
        self.cursor.move_prev();
        self.move_prev_g1();
    }
    pub fn total_file_dist(&mut self) -> (f32, i32) {
        // FIXMEEEEEEEEEEEEEEEEEEee
        let mut dist = 0.0;
        let mut points = 1;

        // makes sure the cursor is on the first node
        self.reset_front(); // this guarantees that the position

        // make sure the cursor values are correct for the first node
        self.unhome();
        self.update_next();

        let [mut xi, mut yi, mut zi] = [self.x, self.y, self.z];

        while self.cursor.peek_next().is_some() {
            if let Some(&mut (
                Line::G1(G1 {
                    x: xf,
                    y: yf,
                    z: zf,
                    e: de,
                    f,
                }),
                _,
            )) = self.cursor.peek_next()
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
        let init = self.cursor.current().unwrap() as *const (Line, State);
        let G1 {
            x: xi,
            y: yi,
            z: zi,
            e: _,
            f: _,
        } = self.find_prev_g1();

        let mut new_pts: Vec<Line> = Vec::new();
        let dx = opt_sub(xi, self.x);
        let dy = opt_sub(yi, self.y);
        let dz = opt_sub(zi, self.z);
        let tot_e = self.e.unwrap_or(0.0);
        let dist = (dx.powf(2.0) + dy.powf(2.0) + dz.powf(2.0)).sqrt();

        let count = (dist / seg_dist);
        let mut i = 1.0;

        while i < count {
            let x = Some(xi.unwrap() + (dx * i));
            let y = Some(yi.unwrap() + (dy * i));
            let z = Some(zi.unwrap() + (dz * i));
            let de = Some((tot_e / count) * i);
            let new_move = Line::G1(G1 {
                x,
                y,
                z,
                e: de,
                f: None,
            });
            new_pts.push(new_move);
            i += 1.0;
        }
        while new_pts.len() > 0 {
            let pt = new_pts.pop().unwrap();
            self.cursor.insert_before((pt, State::new()));
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
        loop {
            let (ins, _) = self.cursor.current().unwrap();
            out += &ins.emit();
            if self.at_end() {
                break;
            }
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
    assert_eq!(10.0 / 19.0, cursor.calc_prev_flow());
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
#[test]
fn trans_test() {
    let input = "G1 X0 Y1 Z1\n
        G1 X1 E1\n
        G1 X2 E1\n
        G1 X3 E1\n";
    let mut gcode = ParsedGCode::from_str(input);
    let mut cursor = Cursor::build(&mut gcode);
    cursor.initialize();

    while cursor.x != Some(2.0) {
        cursor.next();
    }

    cursor.translate(0.5, 0.0, 1.1);
    cursor.reset_front();
    cursor.initialize();

    let t0 = G1 {
        x: Some(0.0),
        y: Some(1.0),
        z: Some(1.0),
        e: None,
        f: None,
    };
    let t1 = G1 {
        x: Some(1.0),
        y: None,
        z: None,
        e: Some(1.0),
        f: None,
    };
    let t2 = G1 {
        x: Some(2.5),
        y: None,
        z: None,
        e: Some(1.5),
        f: None,
    };
    let t3 = G1 {
        x: Some(3.0),
        y: None,
        z: None,
        e: Some(0.5),
        f: None,
    };
    let test = [t0, t1, t2, t3];

    cursor.reset_front();
    let mut i = 0;
    while !cursor.at_end() {
        let (Line::G1(curr), _) = cursor.cursor.current().unwrap().clone() else {
            panic!("asdf");
        };
        assert_eq!(curr, test[i]);
        cursor.next();
        i += 1;
    }
}
