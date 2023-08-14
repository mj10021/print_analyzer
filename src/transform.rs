use crate::parse::ParsedGCode;

use std::collections::LinkedList;





#[cfg(test)]
// #[test]
// fn sub_test() {
//     let input = "G1 X1 Y1 Z1 E1;asdfasdfasdf \n
//     G1 X10 Y10 Z10 E10\n
//     ;asdfasdfasdf\n";
//     let mut gcode = ParsedGCode::from_str(input);
//     let mut cursor = Cursor::build(&mut gcode);
//     let instructions = cursor.subdivide_all(10);
//     gcode.instructions = instructions;
//     panic!("{:?}", gcode.instructions);
// }
#[test]
fn emit() {
    let input = "G1 X1 Y1 Z1 E1;asdfasdfasdf \n
    G1 X10 Y10 Z10 E10 F1000\n
    ;asdfasdfasdf\n";
    let mut gcode = ParsedGCode::from_str(input);
    let mut cursor = Cursor::build(&mut gcode);
    let out = cursor.emit();
    assert_eq!(out, "G1 X1 Y1 Z1 E1\nG1 X10 Y10 Z10 E10 F1000\n");
}
