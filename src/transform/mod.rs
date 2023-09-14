use crate::parse::*;

trait Translate {
    fn translate(&self, dx: f32, dy: f32, dz: f32);
}

impl Translate for Vertex {
    fn translate(&self, dx: f32, dy: f32, dz: f32) {
    }
}

impl Translate for Shape {
    fn translate(&self, dx: f32, dy: f32, dz: f32) {
    }
}

impl Translate for Layer {
    fn translate(&self, dx: f32, dy: f32, dz: f32) {
    }
}

trait Rotate {
    fn rotate(&self, angle: f32, axis: (f32, f32, f32));
}

impl Rotate for Shape {
    fn rotate(&self, angle: f32, axis: (f32, f32, f32)) {
    }
}

impl Rotate for Layer {
    fn rotate(&self, angle: f32, axis: (f32, f32, f32)) {
    }
}

trait SubDivide {
    fn subdivide(&self, max_length: f32);
}

impl SubDivide for Vertex {
    fn subdivide(&self, max_length: f32) {
    }
}

trait Join<T> {
    fn join(&self, other: T);
}

impl<T> Join<T> for Shape {
    fn join(&self, other: T) {
    }
}

impl<T> Join<T> for Layer {
    fn join(&self, other: T) {
    }    
}

