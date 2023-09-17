; START PREPRINT
G28
G1 X179 Y-2 F2400 
; TravelMove
; Pos { x: 0.0, y: 0.0, z: 0.0, e: 0.0, f: -inf }
; Pos { x: 179.0, y: -2.0, z: 0.0, e: 0.0, f: 2400.0 } 
G1 Z3 F720 
; LiftZ
; Pos { x: 179.0, y: -2.0, z: 0.0, e: 0.0, f: 2400.0 }
; Pos { x: 179.0, y: -2.0, z: 3.0, e: 0.0, f: 720.0 } 
G1 X170 F1000 
; TravelMove
; Pos { x: 179.0, y: -2.0, z: 3.0, e: 0.0, f: 720.0 }
; Pos { x: 170.0, y: -2.0, z: 3.0, e: 0.0, f: 1000.0 } 
G1 Z0.2 F720 
; LowerZ
; Pos { x: 170.0, y: -2.0, z: 3.0, e: 0.0, f: 1000.0 }
; Pos { x: 170.0, y: -2.0, z: 0.2, e: 0.0, f: 720.0 } 
; END PREPRINT
; START SHAPE
G1 X110 E8 F900 
; PlanarExtrustion
; Pos { x: 170.0, y: -2.0, z: 0.2, e: 0.0, f: 720.0 }
; Pos { x: 110.0, y: -2.0, z: 0.2, e: 8.0, f: 900.0 } 
G1 X40 E10 F700 
; PlanarExtrustion
; Pos { x: 110.0, y: -2.0, z: 0.2, e: 8.0, f: 900.0 }
; Pos { x: 40.0, y: -2.0, z: 0.2, e: 10.0, f: 700.0 } 
G92 E0; Instruction { first_word: Word('G', 92.0, None), params: Some([Word('E', 0.0, None)]) }

M221 S95; Instruction { first_word: Word('M', 221.0, None), params: Some([Word('S', 95.0, None)]) }

G21; Instruction { first_word: Word('G', 21.0, None), params: None }

G90; Instruction { first_word: Word('G', 90.0, None), params: None }

M83; Instruction { first_word: Word('M', 83.0, None), params: None }

M900 K0.06; Instruction { first_word: Word('M', 900.0, None), params: Some([Word('K', 0.06, None)]) }

M107; Instruction { first_word: Word('M', 107.0, None), params: None }

G92 E0; Instruction { first_word: Word('G', 92.0, None), params: Some([Word('E', 0.0, None)]) }

M73 P1 R11; Instruction { first_word: Word('M', 73.0, None), params: Some([Word('P', 1.0, None), Word('R', 11.0, None)]) }

M73 P2 R11; Instruction { first_word: Word('M', 73.0, None), params: Some([Word('P', 2.0, None), Word('R', 11.0, None)]) }

G1 F720 
; FeedrateChangeOnly
; Pos { x: 40.0, y: -2.0, z: 0.2, e: 10.0, f: 700.0 }
; Pos { x: 40.0, y: -2.0, z: 0.2, e: 0.0, f: 720.0 } 
; END SHAPE
; START SHAPE CHANGE
G1 Z0.3 
; LiftZ
; Pos { x: 40.0, y: -2.0, z: 0.2, e: 0.0, f: 720.0 }
; Pos { x: 40.0, y: -2.0, z: 0.3, e: 0.0, f: 720.0 } 
G1 Z0.5 
; LiftZ
; Pos { x: 40.0, y: -2.0, z: 0.3, e: 0.0, f: 720.0 }
; Pos { x: 40.0, y: -2.0, z: 0.5, e: 0.0, f: 720.0 } 
G1 X78.662 Y77.959 F9000 
; TravelMove
; Pos { x: 40.0, y: -2.0, z: 0.5, e: 0.0, f: 720.0 }
; Pos { x: 78.662, y: 77.959, z: 0.5, e: 0.0, f: 9000.0 } 
G1 Z0.3 F720 
; LowerZ
; Pos { x: 78.662, y: 77.959, z: 0.5, e: 0.0, f: 9000.0 }
; Pos { x: 78.662, y: 77.959, z: 0.3, e: 0.0, f: 720.0 } 
G1 E3 F1200 
; DeRetraction
; Pos { x: 78.662, y: 77.959, z: 0.3, e: 0.0, f: 720.0 }
; Pos { x: 78.662, y: 77.959, z: 0.3, e: 3.0, f: 1200.0 } 
; END SHAPE CHANGE

