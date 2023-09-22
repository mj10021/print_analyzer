use super::parse::*;
pub trait Emit {
    fn emit(&self, debug: bool) -> String;
}
impl Emit for Instruction {
    fn emit(&self, debug: bool) -> String {
        let Instruction {
            first_word: Word(letter, num, string),
            params,
        } = self;
        if let Some(string) = string {
            return string.clone() + "\n";
        }
        let mut out = format!("{}{}", letter, num.round() as i32);
        if let Some(params) = params {
            for Word(letter, val, _) in params {
                out += &format!(" {}{}", letter, val);
            }
        }
        if debug {
            out += &format!("; {:?}\n", self);
        }
        out + "\n"
    }
}
impl Emit for Line {
    fn emit(&self, debug: bool) -> String {
        match self {
            Line::Instruction(ins) => ins.emit(debug),
            Line::Raw(string) => string.clone(),
        }
    }
}
impl Emit for Pos {
    fn emit(&self, debug: bool) -> String {
        if debug {
            return format!(
                "X{} Y{} Z{} E{} F{}; {:?}\n",
                self.x, self.y, self.z, self.e, self.f, self
            );
        }
        assert!(self.x.is_finite() && !self.x.is_nan());
        assert!(self.y.is_finite() && !self.y.is_nan());
        assert!(self.z.is_finite() && !self.z.is_nan());
        assert!(self.e.is_finite() && !self.e.is_nan());
        assert!(self.f.is_finite() && !self.f.is_nan());

        format!(
            "X{} Y{} Z{} E{} F{}\n",
            self.x, self.y, self.z, self.e, self.f
        )
    }
}
impl Emit for Vertex<'_> {
    fn emit(&self, debug: bool) -> String {
        if self.to.x == 0.0
            && self.to.y == 0.0
            && self.to.z == 0.0
            && self.to.e == 0.0
            && self.id == &0
        {
            return "G28\n".to_string();
        }
        let mut out = String::from("G1 ");
        if self.from.x != self.to.x {
            assert!(self.to.x.is_finite() && !self.to.x.is_nan());
            out += &format!("X{} ", self.to.x);
        }
        if self.from.y != self.to.y {
            assert!(self.to.y.is_finite() && !self.to.y.is_nan());
            out += &format!("Y{} ", self.to.y);
        }
        if self.from.z != self.to.z {
            assert!(self.to.z.is_finite() && !self.to.z.is_nan());
            out += &format!("Z{} ", self.to.z);
        }
        if self.to.e != 0.0 {
            assert!(self.to.e.is_finite() && !self.to.e.is_nan());
            out += &format!("E{} ", self.to.e);
        }
        if self.from.f != self.to.f {
            assert!(self.to.f.is_finite() && !self.to.f.is_nan());
            out += &format!("F{} ", self.to.f);
        }
        out += "\n";
        if debug {
            out += &format!("; {:?}\n; {:?}\n; {:?} \n", self.label, self.from, self.to);
        }
        out
    }
}
impl Emit for Shape<'_> {
    fn emit(&self, debug: bool) -> String {
        let mut out = String::from("; START SHAPE\n");
        for node in self.nodes.iter() {
            out += &node.emit(debug);
        }
        out += "; END SHAPE\n";
        out
    }
}
impl Emit for Layer<'_> {
    fn emit(&self, debug: bool) -> String {
        let mut out = String::from("; START LAYER\n");
        for node in self.nodes.iter() {
            out += &node.emit(debug);
        }
        out += "; END LAYER\n";
        out
    }
}
impl Emit for Node<'_> {
    fn emit(&self, debug: bool) -> String {
        match self {
            Node::Vertex(v) => v.emit(debug),
            Node::NonMove(line) => line.emit(debug),
            Node::Shape(s) => s.emit(debug),
            Node::Layer(l) => l.emit(debug),
            Node::LayerChange(nodes) => {
                let mut out = String::from("; START LAYER CHANGE\n");
                for node in nodes {
                    out += &node.emit(debug);
                }
                out += "; END LAYER CHANGE\n";
                out
            }
            Node::ShapeChange(nodes) => {
                let mut out = String::from("; START SHAPE CHANGE\n");
                for node in nodes {
                    out += &node.emit(debug);
                }
                out += "; END SHAPE CHANGE\n";
                out
            }
            Node::PrePrint(nodes) => {
                let mut out = String::from("; START PREPRINT\n");
                for node in nodes {
                    out += &node.emit(debug);
                }
                out += "; END PREPRINT\n";
                out
            }
        }
    }
}
impl Emit for Parsed<'_> {
    fn emit(&self, debug: bool) -> String {
        let mut out = String::new();
        for node in &self.nodes {
            out += &node.emit(debug);
        }
        out += "\n";
        out
    }
}
