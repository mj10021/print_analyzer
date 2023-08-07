use crate::parse::{Instruction, Line, ParsedGCode, G1};

use std::collections::{LinkedList, VecDeque};

pub struct Cursor<'a> {
    pub x: f32,
    pub y: f32,
    pub z: f32,
    pub e: f32,
    pub f: f32,
    pub gcode: &'a ParsedGCode,
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
    pub fn build(gcode: &'a ParsedGCode) -> Cursor {
        Cursor {
            x: -1.0,
            y: -1.0,
            z: -1.0,
            e: -1.0,
            f: -1.0,
            gcode,
        }
    }
    fn update(&mut self, g1: G1) {
        if let Some(x) = g1.x {
            self.x = x;
        }
        if let Some(y) = g1.y {
            self.y = y;
        }
        if let Some(z) = g1.z {
            self.z = z;
        }
        if let Some(de) = g1.e {
            self.e += de;
        }
        if let Some(f) = g1.f {
            self.f = f;
        }
    }
    pub fn total_file_dist(&self) -> (f32, i32) {
        let mut dist = 0.0;
        let mut points = 0;
        let mut cursor = self.gcode.instructions.cursor_front();
        let mut last: (Option<f32>, Option<f32>, Option<f32>) = (None, None, None);

        while cursor.current().is_some() {
            let curr = cursor.current().unwrap();
            if let Line::G1(G1 {
                x: xf,
                y: yf,
                z: zf,
                ..
            }) = curr
            {
                let xi = last.0;
                let yi = last.1;
                let zi = last.2;
                dist += dist_calc(xi, *xf, yi, *yf, zi, *zf);
                last = (*xf, *yf, *zf);
                points += 1;
            } else {
                continue;
            }
            cursor.move_next();
        }
        (dist, points)
    }
}
