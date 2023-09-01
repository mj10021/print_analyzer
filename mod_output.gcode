M73 P0 R11
M201 X2500 Y2500 Z400 E5000
M203 X180 Y180 Z12 E80
M204 P2000 R1250 T2500
M205 X8 Y8 Z2 E10
M205 S0 T0
M862.3P"MINI"
G90
M83
M104 S170
M140 S60
M109 R170
M190 S60
M204 T1250
G28
; Some(Annotation { label: PrePrintMove, dx: inf, dy: inf, dz: inf, de: 0.0, dt: NaN, ex_width_mm: 0.0 })
; None
G29
M204 T2500
M104 S220
G92 E0
G1 X196.90001 Y-2 F2400 
; Some(Annotation { label: FirstG1, dx: 179.0, dy: -2.0, dz: 0.0, de: 0.0, dt: 4.4750004, ex_width_mm: 0.0 })
; None
G1 Z3 F720 
; Some(Annotation { label: PrePrintMove, dx: 0.0, dy: 0.0, dz: 3.0, de: 0.0, dt: 0.25, ex_width_mm: 0.0 })
; None
M109 S220
G1 X170 F1000 
; Some(Annotation { label: PrePrintMove, dx: -9.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.53999996, ex_width_mm: 0.0 })
; None
G1 X187 Z0.2 F720 
; Some(Annotation { label: PrePrintMove, dx: 0.0, dy: 0.0, dz: -2.8, de: 0.0, dt: 0.23333332, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X121 E8 F900 
; Some(Annotation { label: PrePrintMove, dx: -60.0, dy: 0.0, dz: 0.0, de: 8.0, dt: 4.0, ex_width_mm: 5.037611 })
; Some(Layer { start_id: 5, end_id: 7, z: 0.2 })
G1 X44 E10 F700 
; Some(Annotation { label: PrePrintMove, dx: -70.0, dy: 0.0, dz: 0.0, de: 10.0, dt: 6.0, ex_width_mm: 5.397441 })
; Some(Layer { start_id: 5, end_id: 7, z: 0.2 })
G92 E0
M221 S95
G21
G90
M83
M900 K0.06
M107
G92 E0
M73 P1 R11
G1 X44 E-3 F2700 
; Some(Annotation { label: PrePrintMove, dx: 0.0, dy: 0.0, dz: 0.0, de: -3.0, dt: 0.06666667, ex_width_mm: -inf })
; Some(Layer { start_id: 5, end_id: 7, z: 0.2 })
M73 P2 R11
; LAYER END
G1 X44 F720 
; Some(Annotation { label: PrePrintMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X44 Z0.3 
; Some(Annotation { label: PrePrintMove, dx: 0.0, dy: 0.0, dz: 0.10000001, de: 0.0, dt: 0.008333335, ex_width_mm: 0.0 })
; None
G1 X44 Z0.5 
; Some(Annotation { label: PrePrintMove, dx: 0.0, dy: 0.0, dz: 0.19999999, de: 0.0, dt: 0.016666666, ex_width_mm: 0.0 })
; None
G1 X86.528206 Y77.959 F9000 
; Some(Annotation { label: TravelMove, dx: 38.662003, dy: 79.959, dz: 0.0, de: 0.0, dt: 0.53305995, ex_width_mm: 0.0 })
; None
G1 X86.528206 Z0.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999999, de: 0.0, dt: 0.016666666, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X86.528206 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
M204 P800
G1 X89.1 Y77.164 E0.25738 
; Some(Annotation { label: ExtrusionMove, dx: 2.3379974, dy: -0.79499817, dz: 0.0, de: 0.25738, dt: 0.11689988, ex_width_mm: 3.9378393 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X108.9 E1.87602 
; Some(Annotation { label: ExtrusionMove, dx: 18.0, dy: 0.0, dz: 0.0, de: 1.87602, dt: 0.9, ex_width_mm: 3.937775 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X110.7645 Y77.559 E0.18139 
; Some(Annotation { label: ExtrusionMove, dx: 1.6949997, dy: 0.39499664, dz: 0.0, de: 0.18139, dt: 0.08474998, ex_width_mm: 3.9377334 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X112.2451 Y78.662 E0.18137 
; Some(Annotation { label: ExtrusionMove, dx: 1.3460007, dy: 1.1030045, dz: 0.0, de: 0.18137, dt: 0.06730004, ex_width_mm: 3.9377606 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X113.1196 Y81 E0.25738 
; Some(Annotation { label: ExtrusionMove, dx: 0.79499817, dy: 2.3379974, dz: 0.0, de: 0.25738, dt: 0.11689988, ex_width_mm: 3.9378393 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X113.1196 Y99 E1.87602 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 18.0, dz: 0.0, de: 1.87602, dt: 0.9, ex_width_mm: 3.937775 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X112.685104 Y100.695 E0.18139 
; Some(Annotation { label: ExtrusionMove, dx: -0.39499664, dy: 1.6949997, dz: 0.0, de: 0.18139, dt: 0.08474998, ex_width_mm: 3.9377334 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X111.4718 Y102.041 E0.18137 
; Some(Annotation { label: ExtrusionMove, dx: -1.1030045, dy: 1.3460007, dz: 0.0, de: 0.18137, dt: 0.06730004, ex_width_mm: 3.9377606 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X108.9 Y102.836 E0.25738 
; Some(Annotation { label: ExtrusionMove, dx: -2.3379974, dy: 0.79499817, dz: 0.0, de: 0.25738, dt: 0.11689988, ex_width_mm: 3.9378393 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X89.1 E1.87602 
; Some(Annotation { label: ExtrusionMove, dx: -18.0, dy: 0.0, dz: 0.0, de: 1.87602, dt: 0.9, ex_width_mm: 3.937775 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
M73 P2 R10
G1 X87.235504 Y102.441 E0.18139 
; Some(Annotation { label: ExtrusionMove, dx: -1.6949997, dy: -0.39499664, dz: 0.0, de: 0.18139, dt: 0.08474998, ex_width_mm: 3.9377334 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X85.7549 Y101.338 E0.18137 
; Some(Annotation { label: ExtrusionMove, dx: -1.3460007, dy: -1.1030045, dz: 0.0, de: 0.18137, dt: 0.06730004, ex_width_mm: 3.9377606 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X84.8804 Y99 E0.25738 
; Some(Annotation { label: ExtrusionMove, dx: -0.79499817, dy: -2.3379974, dz: 0.0, de: 0.25738, dt: 0.11689988, ex_width_mm: 3.9378393 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X84.8804 Y81 E1.87602 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -18.0, dz: 0.0, de: 1.87602, dt: 0.9, ex_width_mm: 3.937775 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X85.3149 Y79.305 E0.18139 
; Some(Annotation { label: ExtrusionMove, dx: 0.39499664, dy: -1.6949997, dz: 0.0, de: 0.18139, dt: 0.08474998, ex_width_mm: 3.9377334 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
M73 P3 R10
G1 X86.4446 Y78.052 E0.16885 
; Some(Annotation { label: ExtrusionMove, dx: 1.0270004, dy: -1.2529984, dz: 0.0, de: 0.16885, dt: 0.06264992, ex_width_mm: 3.9377153 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
M204 P1000
G1 X86.4446 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
; LAYER END
G1 X86.4446 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X89.052704 Y77.18 E-0.9 
; Some(Annotation { label: Wipe, dx: 2.3710022, dy: -0.87200165, dz: 0.0, de: -0.9, dt: 0.019758351, ex_width_mm: -13.460113 })
; None
G1 X89.052704 Z0.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999999, de: 0.0, dt: 0.016666666, ex_width_mm: 0.0 })
; None
G1 X107.2654 Y97.514 F9000 
; Some(Annotation { label: TravelMove, dx: 16.557, dy: 20.334, dz: 0.0, de: 0.0, dt: 0.13556, ex_width_mm: 0.0 })
; None
G1 X107.2654 Z0.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999999, de: 0.0, dt: 0.016666666, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X107.2654 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
M204 P800
G1 X90.734604 E1.56626 
; Some(Annotation { label: ExtrusionMove, dx: -15.028, dy: 0.0, dz: 0.0, de: 1.56626, dt: 0.7514, ex_width_mm: 3.937754 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X90.734604 Y82.486 E1.56626 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.028, dz: 0.0, de: 1.56626, dt: 0.7514, ex_width_mm: 3.937754 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X107.2654 E1.56626 
; Some(Annotation { label: ExtrusionMove, dx: 15.028, dy: 0.0, dz: 0.0, de: 1.56626, dt: 0.7514, ex_width_mm: 3.937754 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X107.2654 Y97.394 E1.55376 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 14.907997, dz: 0.0, de: 1.55376, dt: 0.74539983, ex_width_mm: 3.9377723 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
M204 P1000
G1 X108.185 Y98.35 F9000 
; Some(Annotation { label: TravelMove, dx: 0.83599854, dy: 0.9560013, dz: 0.0, de: 0.0, dt: 0.006373342, ex_width_mm: 0.0 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
M204 P800
; LAYER END
G1 X108.185 F1200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X89.815 E1.74052 
; Some(Annotation { label: ExtrusionMove, dx: -16.699997, dy: 0.0, dz: 0.0, de: 1.74052, dt: 0.8349998, ex_width_mm: 3.9377537 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X89.815 Y81.65 E1.74052 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -16.699997, dz: 0.0, de: 1.74052, dt: 0.8349998, ex_width_mm: 3.9377537 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X108.185 E1.74052 
; Some(Annotation { label: ExtrusionMove, dx: 16.699997, dy: 0.0, dz: 0.0, de: 1.74052, dt: 0.8349998, ex_width_mm: 3.9377537 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X108.185 Y98.23 E1.72802 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.580002, dz: 0.0, de: 1.72802, dt: 0.8290001, ex_width_mm: 3.9377677 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
M204 P1000
M73 P4 R10
G1 X107.33471 Y98.143 F9000 
; Some(Annotation { label: TravelMove, dx: -0.772995, dy: -0.087005615, dz: 0.0, de: 0.0, dt: 0.0051533002, ex_width_mm: 0.0 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
; LAYER END
G1 X107.33471 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 X107.33471 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X105.4064 Y98.248 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.753006, dy: 0.10500336, dz: 0.0, de: -0.9, dt: 0.014608383, ex_width_mm: -19.362762 })
; None
G1 X105.4064 Z0.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999999, de: 0.0, dt: 0.016666666, ex_width_mm: 0.0 })
; None
G1 X106.898 Y84.542 F9000 
; Some(Annotation { label: TravelMove, dx: 1.3560028, dy: -13.706001, dz: 0.0, de: 0.0, dt: 0.09137334, ex_width_mm: 0.0 })
; None
G1 X106.898 Z0.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999999, de: 0.0, dt: 0.016666666, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X106.898 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
M204 P800
G1 X105.417404 Y83.196 E0.20207 
; Some(Annotation { label: ExtrusionMove, dx: -1.3460007, dy: -1.3460007, dz: 0.0, de: 0.20207, dt: 0.06730004, ex_width_mm: 4.0107675 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X104.0941 E0.1277 
; Some(Annotation { label: ExtrusionMove, dx: -1.2030029, dy: 0.0, dz: 0.0, de: 0.1277, dt: 0.060150143, ex_width_mm: 4.0106072 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X106.484406 Y85.369 E0.32622 
; Some(Annotation { label: ExtrusionMove, dx: 2.1730042, dy: 2.1730042, dz: 0.0, de: 0.32622, dt: 0.10865021, ex_width_mm: 4.0107074 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X106.484406 Y86.573 E0.12781 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.2039948, dz: 0.0, de: 0.12781, dt: 0.060199738, ex_width_mm: 4.0107555 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X102.76971 Y83.196 E0.50698 
; Some(Annotation { label: ExtrusionMove, dx: -3.376999, dy: -3.376999, dz: 0.0, de: 0.50698, dt: 0.16884995, ex_width_mm: 4.0107985 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X101.445305 E0.12781 
; Some(Annotation { label: ExtrusionMove, dx: -1.2040024, dy: 0.0, dz: 0.0, de: 0.12781, dt: 0.06020012, ex_width_mm: 4.01073 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X106.484406 Y87.777 E0.68773 
; Some(Annotation { label: ExtrusionMove, dx: 4.5810013, dy: 4.5810013, dz: 0.0, de: 0.68773, dt: 0.22905006, ex_width_mm: 4.010777 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X106.484406 Y88.98 E0.1277 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.2030029, dz: 0.0, de: 0.1277, dt: 0.060150143, ex_width_mm: 4.0106072 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X100.122 Y83.196 E0.86833 
; Some(Annotation { label: ExtrusionMove, dx: -5.784004, dy: -5.784004, dz: 0.0, de: 0.86833, dt: 0.28920022, ex_width_mm: 4.010764 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X98.79761 E0.12781 
; Some(Annotation { label: ExtrusionMove, dx: -1.2039948, dy: 0.0, dz: 0.0, de: 0.12781, dt: 0.060199738, ex_width_mm: 4.0107555 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X106.484406 Y90.184 E1.04908 
; Some(Annotation { label: ExtrusionMove, dx: 6.987999, dy: 6.987999, dz: 0.0, de: 1.04908, dt: 0.34939995, ex_width_mm: 4.0107603 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X106.484406 Y91.388 E0.12781 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.2040024, dz: 0.0, de: 0.12781, dt: 0.06020012, ex_width_mm: 4.01073 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X97.4732 Y83.196 E1.22983 
; Some(Annotation { label: ExtrusionMove, dx: -8.192001, dy: -8.192001, dz: 0.0, de: 1.22983, dt: 0.40960005, ex_width_mm: 4.0107536 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X96.149895 E0.1277 
; Some(Annotation { label: ExtrusionMove, dx: -1.2030029, dy: 0.0, dz: 0.0, de: 0.1277, dt: 0.060150143, ex_width_mm: 4.0106072 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X106.484406 Y92.591 E1.41043 
; Some(Annotation { label: ExtrusionMove, dx: 9.395004, dy: 9.395004, dz: 0.0, de: 1.41043, dt: 0.46975023, ex_width_mm: 4.0107484 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X106.484406 Y93.795 E0.12781 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.2039948, dz: 0.0, de: 0.12781, dt: 0.060199738, ex_width_mm: 4.0107555 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X94.8255 Y83.196 E1.59119 
; Some(Annotation { label: ExtrusionMove, dx: -10.598999, dy: -10.598999, dz: 0.0, de: 1.59119, dt: 0.52994996, ex_width_mm: 4.010773 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X93.5011 E0.12781 
; Some(Annotation { label: ExtrusionMove, dx: -1.2040024, dy: 0.0, dz: 0.0, de: 0.12781, dt: 0.06020012, ex_width_mm: 4.01073 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X106.484406 Y94.999 E1.77194 
; Some(Annotation { label: ExtrusionMove, dx: 11.803001, dy: 11.803001, dz: 0.0, de: 1.77194, dt: 0.59015006, ex_width_mm: 4.0107675 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X106.484406 Y96.202 E0.1277 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.2030029, dz: 0.0, de: 0.1277, dt: 0.060150143, ex_width_mm: 4.0106072 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
M73 P5 R10
G1 X92.177795 Y83.196 E1.95254 
; Some(Annotation { label: ExtrusionMove, dx: -13.006004, dy: -13.006004, dz: 0.0, de: 1.95254, dt: 0.65030026, ex_width_mm: 4.0107627 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X91.5156 E0.06391 
; Some(Annotation { label: ExtrusionMove, dx: -0.6019974, dy: 0.0, dz: 0.0, de: 0.06391, dt: 0.030099869, ex_width_mm: 4.011069 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X91.5156 Y83.798 E0.06391 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.6019974, dz: 0.0, de: 0.06391, dt: 0.030099869, ex_width_mm: 4.011069 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X105.822205 Y96.804 E1.95254 
; Some(Annotation { label: ExtrusionMove, dx: 13.006004, dy: 13.006004, dz: 0.0, de: 1.95254, dt: 0.65030026, ex_width_mm: 4.0107627 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X104.4989 E0.1277 
; Some(Annotation { label: ExtrusionMove, dx: -1.2030029, dy: 0.0, dz: 0.0, de: 0.1277, dt: 0.060150143, ex_width_mm: 4.0106072 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X91.5156 Y85.001 E1.77194 
; Some(Annotation { label: ExtrusionMove, dx: -11.803001, dy: -11.803001, dz: 0.0, de: 1.77194, dt: 0.59015006, ex_width_mm: 4.0107675 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X91.5156 Y86.205 E0.12781 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.2040024, dz: 0.0, de: 0.12781, dt: 0.06020012, ex_width_mm: 4.01073 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X103.1745 Y96.804 E1.59119 
; Some(Annotation { label: ExtrusionMove, dx: 10.598999, dy: 10.598999, dz: 0.0, de: 1.59119, dt: 0.52994996, ex_width_mm: 4.010773 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X101.850105 E0.12781 
; Some(Annotation { label: ExtrusionMove, dx: -1.2039948, dy: 0.0, dz: 0.0, de: 0.12781, dt: 0.060199738, ex_width_mm: 4.0107555 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X91.5156 Y87.409 E1.41043 
; Some(Annotation { label: ExtrusionMove, dx: -9.395004, dy: -9.395004, dz: 0.0, de: 1.41043, dt: 0.46975023, ex_width_mm: 4.0107484 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X91.5156 Y88.612 E0.1277 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.2030029, dz: 0.0, de: 0.1277, dt: 0.060150143, ex_width_mm: 4.0106072 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X100.5268 Y96.804 E1.22983 
; Some(Annotation { label: ExtrusionMove, dx: 8.192001, dy: 8.192001, dz: 0.0, de: 1.22983, dt: 0.40960005, ex_width_mm: 4.0107536 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X99.2024 E0.12781 
; Some(Annotation { label: ExtrusionMove, dx: -1.2040024, dy: 0.0, dz: 0.0, de: 0.12781, dt: 0.06020012, ex_width_mm: 4.01073 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X91.5156 Y89.816 E1.04908 
; Some(Annotation { label: ExtrusionMove, dx: -6.987999, dy: -6.987999, dz: 0.0, de: 1.04908, dt: 0.34939995, ex_width_mm: 4.0107603 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X91.5156 Y91.02 E0.12781 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.2039948, dz: 0.0, de: 0.12781, dt: 0.060199738, ex_width_mm: 4.0107555 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X97.878006 Y96.804 E0.86833 
; Some(Annotation { label: ExtrusionMove, dx: 5.784004, dy: 5.784004, dz: 0.0, de: 0.86833, dt: 0.28920022, ex_width_mm: 4.010764 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X96.5547 E0.1277 
; Some(Annotation { label: ExtrusionMove, dx: -1.2030029, dy: 0.0, dz: 0.0, de: 0.1277, dt: 0.060150143, ex_width_mm: 4.0106072 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X91.5156 Y92.223 E0.68773 
; Some(Annotation { label: ExtrusionMove, dx: -4.5810013, dy: -4.5810013, dz: 0.0, de: 0.68773, dt: 0.22905006, ex_width_mm: 4.010777 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X91.5156 Y93.427 E0.12781 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.2040024, dz: 0.0, de: 0.12781, dt: 0.06020012, ex_width_mm: 4.01073 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X95.2303 Y96.804 E0.50698 
; Some(Annotation { label: ExtrusionMove, dx: 3.376999, dy: 3.376999, dz: 0.0, de: 0.50698, dt: 0.16884995, ex_width_mm: 4.0107985 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
M73 P6 R10
G1 X93.90591 E0.12781 
; Some(Annotation { label: ExtrusionMove, dx: -1.2039948, dy: 0.0, dz: 0.0, de: 0.12781, dt: 0.060199738, ex_width_mm: 4.0107555 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X91.5156 Y94.631 E0.32622 
; Some(Annotation { label: ExtrusionMove, dx: -2.1730042, dy: -2.1730042, dz: 0.0, de: 0.32622, dt: 0.10865021, ex_width_mm: 4.0107074 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X91.5156 Y95.834 E0.1277 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.2030029, dz: 0.0, de: 0.1277, dt: 0.060150143, ex_width_mm: 4.0106072 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
G1 X92.9962 Y97.18 E0.20207 
; Some(Annotation { label: ExtrusionMove, dx: 1.3460007, dy: 1.3460007, dz: 0.0, de: 0.20207, dt: 0.06730004, ex_width_mm: 4.0107675 })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
M204 P1000
M106 S84.15
G92 E0
G1 X92.9962 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 13, end_id: 99, z: 0.3 })
; LAYER END
G1 X92.9962 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X91.5156 Y95.834 E-0.67813 
; Some(Annotation { label: Wipe, dx: -1.3460007, dy: -1.3460007, dz: 0.0, de: -0.67813, dt: 0.011216672, ex_width_mm: -13.459799 })
; None
G1 X91.5156 Y95.211 E-0.22187 
; Some(Annotation { label: Wipe, dx: 0.0, dy: -0.6230011, dz: 0.0, de: -0.22187, dt: 0.005191676, ex_width_mm: -13.455372 })
; None
G1 X91.5156 Z0.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999999, de: 0.0, dt: 0.016666666, ex_width_mm: 0.0 })
; None
G1 X91.5156 Z0.7 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999999, de: 0.0, dt: 0.016666666, ex_width_mm: 0.0 })
; None
G1 X91.5156 Z0.9 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999999, de: 0.0, dt: 0.016666666, ex_width_mm: 0.0 })
; None
G1 X84.8804 F9000 
; Some(Annotation { label: TravelMove, dx: -6.0319977, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.04021332, ex_width_mm: 0.0 })
; None
G1 X84.8804 Z0.7 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999999, de: 0.0, dt: 0.016666666, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X84.8804 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X84.8804 F1642 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X84.8804 Y81 E1.9241 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -14.210999, dz: 0.0, de: 1.9241, dt: 0.5192813, ex_width_mm: 5.11551 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X85.3149 Y79.305 E0.23564 
; Some(Annotation { label: ExtrusionMove, dx: 0.39499664, dy: -1.6949997, dz: 0.0, de: 0.23564, dt: 0.061936647, ex_width_mm: 5.115428 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X86.528206 Y77.959 E0.23562 
; Some(Annotation { label: ExtrusionMove, dx: 1.1030045, dy: -1.3460007, dz: 0.0, de: 0.23562, dt: 0.049183946, ex_width_mm: 5.1155934 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X89.1 Y77.164 E0.33435 
; Some(Annotation { label: ExtrusionMove, dx: 2.3379974, dy: -0.79499817, dz: 0.0, de: 0.33435, dt: 0.085432306, ex_width_mm: 5.115457 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X108.9 E2.43711 
; Some(Annotation { label: ExtrusionMove, dx: 18.0, dy: 0.0, dz: 0.0, de: 2.43711, dt: 0.65773445, ex_width_mm: 5.115505 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X110.7645 Y77.559 E0.23564 
; Some(Annotation { label: ExtrusionMove, dx: 1.6949997, dy: 0.39499664, dz: 0.0, de: 0.23564, dt: 0.061936647, ex_width_mm: 5.115428 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X112.2451 Y78.662 E0.23562 
; Some(Annotation { label: ExtrusionMove, dx: 1.3460007, dy: 1.1030045, dz: 0.0, de: 0.23562, dt: 0.049183946, ex_width_mm: 5.1155934 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X113.1196 Y81 E0.33435 
; Some(Annotation { label: ExtrusionMove, dx: 0.79499817, dy: 2.3379974, dz: 0.0, de: 0.33435, dt: 0.085432306, ex_width_mm: 5.115457 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X113.1196 Y99 E2.43711 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 18.0, dz: 0.0, de: 2.43711, dt: 0.65773445, ex_width_mm: 5.115505 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X112.685104 Y100.695 E0.23564 
; Some(Annotation { label: ExtrusionMove, dx: -0.39499664, dy: 1.6949997, dz: 0.0, de: 0.23564, dt: 0.061936647, ex_width_mm: 5.115428 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X111.4718 Y102.041 E0.23562 
; Some(Annotation { label: ExtrusionMove, dx: -1.1030045, dy: 1.3460007, dz: 0.0, de: 0.23562, dt: 0.049183946, ex_width_mm: 5.1155934 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X108.9 Y102.836 E0.33435 
; Some(Annotation { label: ExtrusionMove, dx: -2.3379974, dy: 0.79499817, dz: 0.0, de: 0.33435, dt: 0.085432306, ex_width_mm: 5.115457 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X89.1 E2.43711 
; Some(Annotation { label: ExtrusionMove, dx: -18.0, dy: 0.0, dz: 0.0, de: 2.43711, dt: 0.65773445, ex_width_mm: 5.115505 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X87.235504 Y102.441 E0.23564 
; Some(Annotation { label: ExtrusionMove, dx: -1.6949997, dy: -0.39499664, dz: 0.0, de: 0.23564, dt: 0.061936647, ex_width_mm: 5.115428 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X85.7549 Y101.338 E0.23562 
; Some(Annotation { label: ExtrusionMove, dx: -1.3460007, dy: -1.1030045, dz: 0.0, de: 0.23562, dt: 0.049183946, ex_width_mm: 5.1155934 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X84.8804 Y99 E0.33435 
; Some(Annotation { label: ExtrusionMove, dx: -0.79499817, dy: -2.3379974, dz: 0.0, de: 0.33435, dt: 0.085432306, ex_width_mm: 5.115457 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X84.8804 Y95.331 E0.49677 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -3.6689987, dz: 0.0, de: 0.49677, dt: 0.13406816, ex_width_mm: 5.1155663 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X84.8804 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
; LAYER END
G1 X84.8804 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X84.8804 Y92.805 E-0.9 
; Some(Annotation { label: Wipe, dx: 0.0, dy: -2.526001, dz: 0.0, de: -0.9, dt: 0.021050008, ex_width_mm: -13.461544 })
; None
G1 X84.8804 Z0.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999999, de: 0.0, dt: 0.016666666, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 20.571999, dy: 4.9309998, dz: 0.0, de: 0.0, dt: 0.13714665, ex_width_mm: 0.0 })
; None
G1 X107.509605 Z0.7 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999999, de: 0.0, dt: 0.016666666, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X107.509605 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X107.509605 F1642 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X90.4904 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 0.5653593, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X90.4904 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 0.5653593, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X107.509605 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 0.5653593, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X107.509605 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 0.56097436, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
M73 P7 R10
G1 X108.40501 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
M204 P800
; LAYER END
G1 X108.40501 F1500 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X89.595 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 0.68400025, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X89.595 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 0.68400025, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X108.40501 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 0.68400025, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X108.40501 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 0.6792002, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
M204 P1000
G1 X107.5547 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
; LAYER END
G1 X107.5547 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 X107.5547 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X105.6264 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z0.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999999, de: 0.0, dt: 0.016666666, ex_width_mm: 0.0 })
; None
G1 X91.494705 Y83.022 F9000 
; Some(Annotation { label: TravelMove, dx: -12.847, dy: -15.425995, dz: 0.0, de: 0.0, dt: 0.10283997, ex_width_mm: 0.0 })
; None
G1 X91.494705 Z0.7 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999999, de: 0.0, dt: 0.016666666, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X91.494705 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
M204 P1500
G1 X91.494705 F1642 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X91.3968 Y82.933 E0.02118 
; Some(Annotation { label: ExtrusionMove, dx: -0.08900452, dy: -0.08900452, dz: 0.0, de: 0.02118, dt: 0.0032522965, ex_width_mm: 6.357477 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X91.2626 Y82.966 E0.02126 
; Some(Annotation { label: ExtrusionMove, dx: -0.12199402, dy: 0.03300476, dz: 0.0, de: 0.02126, dt: 0.004457759, ex_width_mm: 6.355819 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X91.2263 Y83.088 E0.02126 
; Some(Annotation { label: ExtrusionMove, dx: -0.03300476, dy: 0.12199402, dz: 0.0, de: 0.02126, dt: 0.004457759, ex_width_mm: 6.355819 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X91.3242 Y83.177 E0.02118 
; Some(Annotation { label: ExtrusionMove, dx: 0.08900452, dy: 0.08900452, dz: 0.0, de: 0.02118, dt: 0.0032522965, ex_width_mm: 6.357477 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X91.4584 Y83.144 E0.02126 
; Some(Annotation { label: ExtrusionMove, dx: 0.12199402, dy: -0.03300476, dz: 0.0, de: 0.02126, dt: 0.004457759, ex_width_mm: 6.355819 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X91.2516 Y84.445 E0.17798 
; Some(Annotation { label: ExtrusionMove, dx: -0.18799591, dy: 1.3010025, dz: 0.0, de: 0.17798, dt: 0.047539677, ex_width_mm: 5.115541 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X92.8895 Y82.956 E0.28511 
; Some(Annotation { label: ExtrusionMove, dx: 1.4889984, dy: -1.4889984, dz: 0.0, de: 0.28511, dt: 0.0544092, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X94.1556 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.0420585, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X91.2516 Y85.596 E0.5055 
; Some(Annotation { label: ExtrusionMove, dx: -2.6399994, dy: 2.6399994, dz: 0.0, de: 0.5055, dt: 0.0964677, ex_width_mm: 5.1155024 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X91.2516 Y86.748 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.1520004, dz: 0.0, de: 0.15598, dt: 0.04209502, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X95.422806 Y82.956 E0.72608 
; Some(Annotation { label: ExtrusionMove, dx: 3.7919998, dy: -3.7919998, dz: 0.0, de: 0.72608, dt: 0.13856272, ex_width_mm: 5.115488 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X96.6889 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.0420585, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X91.2516 Y87.899 E0.94647 
; Some(Annotation { label: ExtrusionMove, dx: -4.943001, dy: 4.943001, dz: 0.0, de: 0.94647, dt: 0.18062122, ex_width_mm: 5.1154885 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X91.2516 Y89.05 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.151001, dz: 0.0, de: 0.15584, dt: 0.0420585, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X97.955 Y82.956 E1.16687 
; Some(Annotation { label: ExtrusionMove, dx: 6.094002, dy: -6.094002, dz: 0.0, de: 1.16687, dt: 0.22267973, ex_width_mm: 5.1155324 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X99.222206 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 1.1520004, dy: 0.0, dz: 0.0, de: 0.15598, dt: 0.04209502, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X91.2516 Y90.202 E1.38745 
; Some(Annotation { label: ExtrusionMove, dx: -7.246002, dy: 7.246002, dz: 0.0, de: 1.38745, dt: 0.26477474, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X91.2516 Y91.353 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.1509933, dz: 0.0, de: 0.15584, dt: 0.042058222, ex_width_mm: 5.1155467 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X100.4883 Y82.956 E1.60784 
; Some(Annotation { label: ExtrusionMove, dx: 8.396996, dy: -8.396996, dz: 0.0, de: 1.60784, dt: 0.30683297, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X101.7555 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 1.1520004, dy: 0.0, dz: 0.0, de: 0.15598, dt: 0.04209502, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X91.2516 Y92.505 E1.82842 
; Some(Annotation { label: ExtrusionMove, dx: -9.548996, dy: 9.548996, dz: 0.0, de: 1.82842, dt: 0.34892797, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X91.2516 Y93.656 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.151001, dz: 0.0, de: 0.15584, dt: 0.0420585, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
M73 P8 R10
G1 X103.0216 Y82.956 E2.04881 
; Some(Annotation { label: ExtrusionMove, dx: 10.699997, dy: -10.699997, dz: 0.0, de: 2.04881, dt: 0.3909865, ex_width_mm: 5.11551 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X104.287704 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.0420585, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X91.2516 Y94.807 E2.2692 
; Some(Annotation { label: ExtrusionMove, dx: -11.850998, dy: 11.850998, dz: 0.0, de: 2.2692, dt: 0.433045, ex_width_mm: 5.1155086 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X91.2516 Y95.959 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.1520004, dz: 0.0, de: 0.15598, dt: 0.04209502, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X105.5549 Y82.956 E2.48978 
; Some(Annotation { label: ExtrusionMove, dx: 13.002998, dy: -13.002998, dz: 0.0, de: 2.48978, dt: 0.47514004, ex_width_mm: 5.115504 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X106.7484 Y83.023 E0.14718 
; Some(Annotation { label: ExtrusionMove, dx: 1.0849991, dy: 0.06700134, dz: 0.0, de: 0.14718, dt: 0.039646737, ex_width_mm: 5.1153917 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X91.3253 Y97.044 E2.68471 
; Some(Annotation { label: ExtrusionMove, dx: -14.020996, dy: 14.020996, dz: 0.0, de: 2.68471, dt: 0.51233846, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X92.59141 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.0420585, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X106.7484 Y84.174 E2.46432 
; Some(Annotation { label: ExtrusionMove, dx: 12.869995, dy: -12.869995, dz: 0.0, de: 2.46432, dt: 0.47028, ex_width_mm: 5.115518 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X106.7484 Y85.325 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.1509933, dz: 0.0, de: 0.15584, dt: 0.042058222, ex_width_mm: 5.1155467 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X93.8575 Y97.044 E2.24393 
; Some(Annotation { label: ExtrusionMove, dx: -11.719002, dy: 11.719002, dz: 0.0, de: 2.24393, dt: 0.42822173, ex_width_mm: 5.115518 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X95.1247 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 1.1520004, dy: 0.0, dz: 0.0, de: 0.15598, dt: 0.04209502, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X106.7484 Y86.477 E2.02335 
; Some(Annotation { label: ExtrusionMove, dx: 10.567001, dy: -10.567001, dz: 0.0, de: 2.02335, dt: 0.38612673, ex_width_mm: 5.1155243 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X106.7484 Y87.628 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.151001, dz: 0.0, de: 0.15584, dt: 0.0420585, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X96.3908 Y97.044 E1.80295 
; Some(Annotation { label: ExtrusionMove, dx: -9.416, dy: 9.416, dz: 0.0, de: 1.80295, dt: 0.3440682, ex_width_mm: 5.1155005 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X97.658 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 1.1520004, dy: 0.0, dz: 0.0, de: 0.15598, dt: 0.04209502, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X106.7484 Y88.78 E1.58237 
; Some(Annotation { label: ExtrusionMove, dx: 8.264, dy: -8.264, dz: 0.0, de: 1.58237, dt: 0.3019732, ex_width_mm: 5.1155066 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X106.7484 Y89.931 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.151001, dz: 0.0, de: 0.15584, dt: 0.0420585, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X98.9241 Y97.044 E1.36198 
; Some(Annotation { label: ExtrusionMove, dx: -7.112999, dy: 7.112999, dz: 0.0, de: 1.36198, dt: 0.2599147, ex_width_mm: 5.1155095 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X100.1902 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.0420585, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X106.7484 Y91.082 E1.14159 
; Some(Annotation { label: ExtrusionMove, dx: 5.961998, dy: -5.961998, dz: 0.0, de: 1.14159, dt: 0.2178562, ex_width_mm: 5.115514 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X106.7484 Y92.234 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.1520004, dz: 0.0, de: 0.15598, dt: 0.04209502, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
M73 P9 R10
G1 X101.457405 Y97.044 E0.92101 
; Some(Annotation { label: ExtrusionMove, dx: -4.8099976, dy: 4.8099976, dz: 0.0, de: 0.92101, dt: 0.17576118, ex_width_mm: 5.1155276 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X102.7235 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.0420585, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X106.7484 Y93.385 E0.70062 
; Some(Annotation { label: ExtrusionMove, dx: 3.6589966, dy: -3.6589966, dz: 0.0, de: 0.70062, dt: 0.13370267, ex_width_mm: 5.11554 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X106.7484 Y94.536 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.151001, dz: 0.0, de: 0.15584, dt: 0.0420585, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X103.98961 Y97.044 E0.48023 
; Some(Annotation { label: ExtrusionMove, dx: -2.5079956, dy: 2.5079956, dz: 0.0, de: 0.48023, dt: 0.091644175, ex_width_mm: 5.1155634 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X105.256805 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 1.1520004, dy: 0.0, dz: 0.0, de: 0.15598, dt: 0.04209502, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X106.7484 Y95.688 E0.25964 
; Some(Annotation { label: ExtrusionMove, dx: 1.3559952, dy: -1.3559952, dz: 0.0, de: 0.25964, dt: 0.04954915, ex_width_mm: 5.1154566 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X106.8067 Y96.954 E0.17156 
; Some(Annotation { label: ExtrusionMove, dx: 0.053001404, dy: 1.2659988, dz: 0.0, de: 0.17156, dt: 0.046260614, ex_width_mm: 5.115504 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X106.7154 Y96.871 E0.01823 
; Some(Annotation { label: ExtrusionMove, dx: -0.08300018, dy: -0.08300018, dz: 0.0, de: 0.01823, dt: 0.0030328934, ex_width_mm: 5.8678436 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X106.5911 Y96.901 E0.01816 
; Some(Annotation { label: ExtrusionMove, dx: -0.11299896, dy: 0.02999878, dz: 0.0, de: 0.01816, dt: 0.004129073, ex_width_mm: 5.8686514 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X106.558105 Y97.014 E0.01816 
; Some(Annotation { label: ExtrusionMove, dx: -0.02999878, dy: 0.11299896, dz: 0.0, de: 0.01816, dt: 0.004129073, ex_width_mm: 5.8686514 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X106.64941 Y97.097 E0.01823 
; Some(Annotation { label: ExtrusionMove, dx: 0.08300018, dy: 0.08300018, dz: 0.0, de: 0.01823, dt: 0.0030328934, ex_width_mm: 5.8678436 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
G1 X106.772606 Y97.066 E0.01805 
; Some(Annotation { label: ExtrusionMove, dx: 0.11199951, dy: -0.03099823, dz: 0.0, de: 0.01805, dt: 0.0040925522, ex_width_mm: 5.868395 })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
M204 P1000
M106 S170.85
G92 E0
G1 X106.772606 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 108, end_id: 211, z: 0.7 })
; LAYER END
G1 X106.772606 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X106.64941 Y97.097 E-0.0414 
; Some(Annotation { label: Wipe, dx: -0.11199951, dy: 0.03099823, dz: 0.0, de: -0.0414, dt: 0.0009333293, ex_width_mm: -13.45992 })
; None
G1 X106.558105 Y97.014 E-0.04182 
; Some(Annotation { label: Wipe, dx: -0.08300018, dy: -0.08300018, dz: 0.0, de: -0.04182, dt: 0.0006916682, ex_width_mm: -13.460957 })
; None
G1 X106.5911 Y96.901 E-0.04165 
; Some(Annotation { label: Wipe, dx: 0.02999878, dy: -0.11299896, dz: 0.0, de: -0.04165, dt: 0.00094165804, ex_width_mm: -13.459764 })
; None
G1 X106.7154 Y96.871 E-0.04165 
; Some(Annotation { label: Wipe, dx: 0.11299896, dy: -0.02999878, dz: 0.0, de: -0.04165, dt: 0.00094165804, ex_width_mm: -13.459764 })
; None
G1 X106.8067 Y96.954 E-0.04182 
; Some(Annotation { label: Wipe, dx: 0.08300018, dy: 0.08300018, dz: 0.0, de: -0.04182, dt: 0.0006916682, ex_width_mm: -13.460957 })
; None
G1 X106.7484 Y95.688 E-0.45141 
; Some(Annotation { label: Wipe, dx: -0.053001404, dy: -1.2659988, dz: 0.0, de: -0.45141, dt: 0.01054999, ex_width_mm: -13.459951 })
; None
G1 X106.2237 Y96.165 E-0.24025 
; Some(Annotation { label: Wipe, dx: -0.47699738, dy: 0.47699738, dz: 0.0, de: -0.24025, dt: 0.0039749783, ex_width_mm: -13.456073 })
; None
G1 X106.2237 Z0.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999999, de: 0.0, dt: 0.016666666, ex_width_mm: 0.0 })
; None
G1 Z1.1 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
G1 Z1.3 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999993, de: 0.0, dt: 0.01666666, ex_width_mm: 0.0 })
; None
G1 X97.736 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 1.1689987, dy: 1.5709991, dz: 0.0, de: 0.0, dt: 0.010473328, ex_width_mm: 0.0 })
; None
G1 Z1.1 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999993, de: 0.0, dt: 0.01666666, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 F1287 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 0.7213054, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 0.7213054, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 0.7213054, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 0.7157108, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
M204 P800
; LAYER END
G1 F1287 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 0.79720306, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 0.79720306, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 0.79720306, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 0.7916086, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
M204 P1000
M73 P10 R10
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 Z1.3 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999993, de: 0.0, dt: 0.01666666, ex_width_mm: 0.0 })
; None
G1 X83.022 Y96.823 F9000 
; Some(Annotation { label: TravelMove, dx: -13.001999, dy: -1.625, dz: 0.0, de: 0.0, dt: 0.086679995, ex_width_mm: 0.0 })
; None
G1 Z1.1 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999993, de: 0.0, dt: 0.01666666, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
M204 P1500
G1 F1287 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X82.933 Y96.912 E0.02118 
; Some(Annotation { label: ExtrusionMove, dx: -0.08900452, dy: 0.08900452, dz: 0.0, de: 0.02118, dt: 0.004149395, ex_width_mm: 6.357477 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X82.966 Y97.034 E0.02126 
; Some(Annotation { label: ExtrusionMove, dx: 0.03300476, dy: 0.12199402, dz: 0.0, de: 0.02126, dt: 0.0056873667, ex_width_mm: 6.355819 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X83.088 Y97.067 E0.02126 
; Some(Annotation { label: ExtrusionMove, dx: 0.12199402, dy: 0.03300476, dz: 0.0, de: 0.02126, dt: 0.0056873667, ex_width_mm: 6.355819 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X83.177 Y96.978 E0.02118 
; Some(Annotation { label: ExtrusionMove, dx: 0.08900452, dy: -0.08900452, dz: 0.0, de: 0.02118, dt: 0.004149395, ex_width_mm: 6.357477 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X83.144 Y96.856 E0.02126 
; Some(Annotation { label: ExtrusionMove, dx: -0.03300476, dy: -0.12199402, dz: 0.0, de: 0.02126, dt: 0.0056873667, ex_width_mm: 6.355819 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X82.956 Y95.555 E0.17798 
; Some(Annotation { label: ExtrusionMove, dx: -0.18799591, dy: -1.3010025, dz: 0.0, de: 0.17798, dt: 0.0606528, ex_width_mm: 5.115541 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X84.445 Y97.044 E0.28511 
; Some(Annotation { label: ExtrusionMove, dx: 1.4889984, dy: 1.4889984, dz: 0.0, de: 0.28511, dt: 0.06941718, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X85.596 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.05365972, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X82.956 Y94.404 E0.5055 
; Some(Annotation { label: ExtrusionMove, dx: -2.6399994, dy: -2.6399994, dz: 0.0, de: 0.5055, dt: 0.12307689, ex_width_mm: 5.1155024 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 Y93.252 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.1520004, dz: 0.0, de: 0.15598, dt: 0.053706314, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X86.748 Y97.044 E0.72608 
; Some(Annotation { label: ExtrusionMove, dx: 3.7919998, dy: 3.7919998, dz: 0.0, de: 0.72608, dt: 0.1767832, ex_width_mm: 5.115488 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X87.899 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.05365972, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X82.956 Y92.101 E0.94647 
; Some(Annotation { label: ExtrusionMove, dx: -4.943001, dy: -4.943001, dz: 0.0, de: 0.94647, dt: 0.23044293, ex_width_mm: 5.1154885 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 Y90.95 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.151001, dz: 0.0, de: 0.15584, dt: 0.05365972, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X89.05 Y97.044 E1.16687 
; Some(Annotation { label: ExtrusionMove, dx: 6.094002, dy: 6.094002, dz: 0.0, de: 1.16687, dt: 0.28410265, ex_width_mm: 5.1155324 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X90.202 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 1.1520004, dy: 0.0, dz: 0.0, de: 0.15598, dt: 0.053706314, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X82.956 Y89.798 E1.38745 
; Some(Annotation { label: ExtrusionMove, dx: -7.246002, dy: -7.246002, dz: 0.0, de: 1.38745, dt: 0.33780897, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 Y88.647 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.1509933, dz: 0.0, de: 0.15584, dt: 0.05365936, ex_width_mm: 5.1155467 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X91.353 Y97.044 E1.60784 
; Some(Annotation { label: ExtrusionMove, dx: 8.396996, dy: 8.396996, dz: 0.0, de: 1.60784, dt: 0.39146832, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X92.505 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 1.1520004, dy: 0.0, dz: 0.0, de: 0.15598, dt: 0.053706314, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X82.956 Y87.495 E1.82842 
; Some(Annotation { label: ExtrusionMove, dx: -9.548996, dy: -9.548996, dz: 0.0, de: 1.82842, dt: 0.44517463, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 Y86.344 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.151001, dz: 0.0, de: 0.15584, dt: 0.05365972, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X93.656 Y97.044 E2.04881 
; Some(Annotation { label: ExtrusionMove, dx: 10.699997, dy: 10.699997, dz: 0.0, de: 2.04881, dt: 0.49883437, ex_width_mm: 5.11551 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X94.807 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.05365972, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X82.956 Y85.193 E2.2692 
; Some(Annotation { label: ExtrusionMove, dx: -11.850998, dy: -11.850998, dz: 0.0, de: 2.2692, dt: 0.5524941, ex_width_mm: 5.1155086 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 Y84.041 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.1520004, dz: 0.0, de: 0.15598, dt: 0.053706314, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X95.959 Y97.044 E2.48978 
; Some(Annotation { label: ExtrusionMove, dx: 13.002998, dy: 13.002998, dz: 0.0, de: 2.48978, dt: 0.6062004, ex_width_mm: 5.115504 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X97.044 Y96.977 E0.14718 
; Some(Annotation { label: ExtrusionMove, dx: 1.0849991, dy: -0.06700134, dz: 0.0, de: 0.14718, dt: 0.050582707, ex_width_mm: 5.1153917 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
M73 P11 R10
G1 X83.023 Y82.956 E2.68471 
; Some(Annotation { label: ExtrusionMove, dx: -14.020996, dy: -14.020996, dz: 0.0, de: 2.68471, dt: 0.65365946, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X84.174 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.05365972, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X97.044 Y95.826 E2.46432 
; Some(Annotation { label: ExtrusionMove, dx: 12.869995, dy: 12.869995, dz: 0.0, de: 2.46432, dt: 0.5999998, ex_width_mm: 5.115518 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 Y94.675 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.1509933, dz: 0.0, de: 0.15584, dt: 0.05365936, ex_width_mm: 5.1155467 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X85.325 Y82.956 E2.24393 
; Some(Annotation { label: ExtrusionMove, dx: -11.719002, dy: -11.719002, dz: 0.0, de: 2.24393, dt: 0.5463404, ex_width_mm: 5.115518 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X86.477 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 1.1520004, dy: 0.0, dz: 0.0, de: 0.15598, dt: 0.053706314, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X97.044 Y93.523 E2.02335 
; Some(Annotation { label: ExtrusionMove, dx: 10.567001, dy: 10.567001, dz: 0.0, de: 2.02335, dt: 0.49263412, ex_width_mm: 5.1155243 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 Y92.372 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.151001, dz: 0.0, de: 0.15584, dt: 0.05365972, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X87.628 Y82.956 E1.80295 
; Some(Annotation { label: ExtrusionMove, dx: -9.416, dy: -9.416, dz: 0.0, de: 1.80295, dt: 0.43897438, ex_width_mm: 5.1155005 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X88.78 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 1.1520004, dy: 0.0, dz: 0.0, de: 0.15598, dt: 0.053706314, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
M73 P11 R9
G1 X97.044 Y91.22 E1.58237 
; Some(Annotation { label: ExtrusionMove, dx: 8.264, dy: 8.264, dz: 0.0, de: 1.58237, dt: 0.38526806, ex_width_mm: 5.1155066 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 Y90.069 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.151001, dz: 0.0, de: 0.15584, dt: 0.05365972, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X89.931 Y82.956 E1.36198 
; Some(Annotation { label: ExtrusionMove, dx: -7.112999, dy: -7.112999, dz: 0.0, de: 1.36198, dt: 0.33160836, ex_width_mm: 5.1155095 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X91.082 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.05365972, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X97.044 Y88.918 E1.14159 
; Some(Annotation { label: ExtrusionMove, dx: 5.961998, dy: 5.961998, dz: 0.0, de: 1.14159, dt: 0.27794862, ex_width_mm: 5.115514 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 Y87.766 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.1520004, dz: 0.0, de: 0.15598, dt: 0.053706314, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X92.234 Y82.956 E0.92101 
; Some(Annotation { label: ExtrusionMove, dx: -4.8099976, dy: -4.8099976, dz: 0.0, de: 0.92101, dt: 0.22424231, ex_width_mm: 5.1155276 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X93.385 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.05365972, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
M73 P12 R9
G1 X97.044 Y86.615 E0.70062 
; Some(Annotation { label: ExtrusionMove, dx: 3.6589966, dy: 3.6589966, dz: 0.0, de: 0.70062, dt: 0.17058259, ex_width_mm: 5.11554 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 Y85.464 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.151001, dz: 0.0, de: 0.15584, dt: 0.05365972, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X94.536 Y82.956 E0.48023 
; Some(Annotation { label: ExtrusionMove, dx: -2.5079956, dy: -2.5079956, dz: 0.0, de: 0.48023, dt: 0.11692287, ex_width_mm: 5.1155634 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X95.688 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 1.1520004, dy: 0.0, dz: 0.0, de: 0.15598, dt: 0.053706314, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X97.044 Y84.312 E0.25964 
; Some(Annotation { label: ExtrusionMove, dx: 1.3559952, dy: 1.3559952, dz: 0.0, de: 0.25964, dt: 0.06321656, ex_width_mm: 5.1154566 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X97.066 Y82.934 E0.1866 
; Some(Annotation { label: ExtrusionMove, dx: 0.022003174, dy: -1.3779984, dz: 0.0, de: 0.1866, dt: 0.06424235, ex_width_mm: 5.115564 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X97.097 Y83.046 E0.01805 
; Some(Annotation { label: ExtrusionMove, dx: 0.03099823, dy: 0.11199951, dz: 0.0, de: 0.01805, dt: 0.0052214223, ex_width_mm: 5.868395 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X97.014 Y83.129 E0.01823 
; Some(Annotation { label: ExtrusionMove, dx: -0.08300018, dy: 0.08300018, dz: 0.0, de: 0.01823, dt: 0.0038694725, ex_width_mm: 5.8678436 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X96.901 Y83.099 E0.01816 
; Some(Annotation { label: ExtrusionMove, dx: -0.11299896, dy: -0.02999878, dz: 0.0, de: 0.01816, dt: 0.005268017, ex_width_mm: 5.8686514 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X96.871 Y82.986 E0.01816 
; Some(Annotation { label: ExtrusionMove, dx: -0.02999878, dy: -0.11299896, dz: 0.0, de: 0.01816, dt: 0.005268017, ex_width_mm: 5.8686514 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
G1 X96.954 Y82.903 E0.01823 
; Some(Annotation { label: ExtrusionMove, dx: 0.08300018, dy: -0.08300018, dz: 0.0, de: 0.01823, dt: 0.0038694725, ex_width_mm: 5.8678436 })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
M204 P1000
M106 S255
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 225, end_id: 303, z: 1.1 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.871 Y82.986 E-0.04182 
; Some(Annotation { label: Wipe, dx: -0.08300018, dy: 0.08300018, dz: 0.0, de: -0.04182, dt: 0.0006916682, ex_width_mm: -13.460957 })
; None
G1 X96.901 Y83.099 E-0.04165 
; Some(Annotation { label: Wipe, dx: 0.02999878, dy: 0.11299896, dz: 0.0, de: -0.04165, dt: 0.00094165804, ex_width_mm: -13.459764 })
; None
G1 X97.014 Y83.129 E-0.04165 
; Some(Annotation { label: Wipe, dx: 0.11299896, dy: 0.02999878, dz: 0.0, de: -0.04165, dt: 0.00094165804, ex_width_mm: -13.459764 })
; None
G1 X97.097 Y83.046 E-0.04182 
; Some(Annotation { label: Wipe, dx: 0.08300018, dy: -0.08300018, dz: 0.0, de: -0.04182, dt: 0.0006916682, ex_width_mm: -13.460957 })
; None
G1 X97.066 Y82.934 E-0.0414 
; Some(Annotation { label: Wipe, dx: -0.03099823, dy: -0.11199951, dz: 0.0, de: -0.0414, dt: 0.0009333293, ex_width_mm: -13.45992 })
; None
G1 X97.044 Y84.312 E-0.49098 
; Some(Annotation { label: Wipe, dx: -0.022003174, dy: 1.3779984, dz: 0.0, de: -0.49098, dt: 0.01148332, ex_width_mm: -13.46002 })
; None
G1 X96.646 Y83.914 E-0.20068 
; Some(Annotation { label: Wipe, dx: -0.397995, dy: -0.397995, dz: 0.0, de: -0.20068, dt: 0.003316625, ex_width_mm: -13.470923 })
; None
G1 Z1.3 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999993, de: 0.0, dt: 0.01666666, ex_width_mm: 0.0 })
; None
G1 Z1.5 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
G1 Z1.7 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
G1 X97.736 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 1.0899963, dy: 13.821999, dz: 0.0, de: 0.0, dt: 0.09214666, ex_width_mm: 0.0 })
; None
G1 Z1.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
M204 P800
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
M73 P13 R9
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
M204 P1000
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 Z1.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
G1 X97.044 Y93.712 F9000 
; Some(Annotation { label: TravelMove, dx: 1.0199966, dy: -4.736, dz: 0.0, de: 0.0, dt: 0.031573333, ex_width_mm: 0.0 })
; None
G1 Z1.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 Y91.212 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X96.886 Y91.31 E0.02517 
; Some(Annotation { label: ExtrusionMove, dx: -0.15799713, dy: 0.09799957, dz: 0.0, de: 0.02517, dt: 0.010533142, ex_width_mm: 5.114913 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X96.314 Y91.747 E0.09746 
; Some(Annotation { label: ExtrusionMove, dx: -0.5719986, dy: 0.4370041, dz: 0.0, de: 0.09746, dt: 0.03813324, ex_width_mm: 5.1154346 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X95.859 Y92.184 E0.08542 
; Some(Annotation { label: ExtrusionMove, dx: -0.45500183, dy: 0.43699646, dz: 0.0, de: 0.08542, dt: 0.030333454, ex_width_mm: 5.115734 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X95.498 Y92.621 E0.07675 
; Some(Annotation { label: ExtrusionMove, dx: -0.36100006, dy: 0.4370041, dz: 0.0, de: 0.07675, dt: 0.029133607, ex_width_mm: 5.115797 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X94.969 Y93.494 E0.13821 
; Some(Annotation { label: ExtrusionMove, dx: -0.5289993, dy: 0.8730011, dz: 0.0, de: 0.13821, dt: 0.058200072, ex_width_mm: 5.115611 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X94.613 Y94.368 E0.12778 
; Some(Annotation { label: ExtrusionMove, dx: -0.3560028, dy: 0.8739929, dz: 0.0, de: 0.12778, dt: 0.058266196, ex_width_mm: 5.1157236 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X94.39 Y95.241 E0.122 
; Some(Annotation { label: ExtrusionMove, dx: -0.22299957, dy: 0.8730011, dz: 0.0, de: 0.122, dt: 0.058200072, ex_width_mm: 5.115702 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X94.362 Y96.115 E0.1184 
; Some(Annotation { label: ExtrusionMove, dx: -0.027999878, dy: 0.87400055, dz: 0.0, de: 0.1184, dt: 0.058266703, ex_width_mm: 5.115678 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X94.522 Y96.552 E0.06301 
; Some(Annotation { label: ExtrusionMove, dx: 0.16000366, dy: 0.4370041, dz: 0.0, de: 0.06301, dt: 0.029133607, ex_width_mm: 5.115552 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X94.928 Y96.988 E0.08066 
; Some(Annotation { label: ExtrusionMove, dx: 0.40599823, dy: 0.435997, dz: 0.0, de: 0.08066, dt: 0.029066468, ex_width_mm: 5.1153345 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X95.015 Y97.044 E0.01401 
; Some(Annotation { label: ExtrusionMove, dx: 0.086997986, dy: 0.055999756, dz: 0.0, de: 0.01401, dt: 0.005799866, ex_width_mm: 5.1160927 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X92.112 E0.39305 
; Some(Annotation { label: ExtrusionMove, dx: -2.9029999, dy: 0.0, dz: 0.0, de: 0.39305, dt: 0.19353333, ex_width_mm: 5.1154833 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X92.06 Y96.988 E0.01035 
; Some(Annotation { label: ExtrusionMove, dx: -0.052001953, dy: -0.055999756, dz: 0.0, de: 0.01035, dt: 0.0037333171, ex_width_mm: 5.1169753 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X91.378 Y96.552 E0.1096 
; Some(Annotation { label: ExtrusionMove, dx: -0.6819992, dy: -0.435997, dz: 0.0, de: 0.1096, dt: 0.045466613, ex_width_mm: 5.115689 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X90.599 Y96.115 E0.12094 
; Some(Annotation { label: ExtrusionMove, dx: -0.7789993, dy: -0.4370041, dz: 0.0, de: 0.12094, dt: 0.05193329, ex_width_mm: 5.1157045 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X89.898 Y95.678 E0.11184 
; Some(Annotation { label: ExtrusionMove, dx: -0.7009964, dy: -0.43699646, dz: 0.0, de: 0.11184, dt: 0.046733093, ex_width_mm: 5.1153545 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X89.325 Y95.241 E0.09757 
; Some(Annotation { label: ExtrusionMove, dx: -0.5730057, dy: -0.4370041, dz: 0.0, de: 0.09757, dt: 0.03820038, ex_width_mm: 5.1155186 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X88.871 Y94.805 E0.08523 
; Some(Annotation { label: ExtrusionMove, dx: -0.45399475, dy: -0.435997, dz: 0.0, de: 0.08523, dt: 0.030266315, ex_width_mm: 5.11586 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X88.509 Y94.368 E0.07683 
; Some(Annotation { label: ExtrusionMove, dx: -0.3619995, dy: -0.4370041, dz: 0.0, de: 0.07683, dt: 0.029133607, ex_width_mm: 5.115379 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X87.981 Y93.494 E0.13825 
; Some(Annotation { label: ExtrusionMove, dx: -0.5279999, dy: -0.8739929, dz: 0.0, de: 0.13825, dt: 0.058266196, ex_width_mm: 5.1154323 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X87.625 Y92.621 E0.12765 
; Some(Annotation { label: ExtrusionMove, dx: -0.3560028, dy: -0.8730011, dz: 0.0, de: 0.12765, dt: 0.058200072, ex_width_mm: 5.1154976 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X87.402 Y91.747 E0.12213 
; Some(Annotation { label: ExtrusionMove, dx: -0.22299957, dy: -0.87400055, dz: 0.0, de: 0.12213, dt: 0.058266703, ex_width_mm: 5.115655 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X87.374 Y90.874 E0.11826 
; Some(Annotation { label: ExtrusionMove, dx: -0.027999878, dy: -0.8730011, dz: 0.0, de: 0.11826, dt: 0.058200072, ex_width_mm: 5.115473 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X87.533 Y90.437 E0.06296 
; Some(Annotation { label: ExtrusionMove, dx: 0.15899658, dy: -0.4370041, dz: 0.0, de: 0.06296, dt: 0.029133607, ex_width_mm: 5.1152873 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X87.94 Y90 E0.08085 
; Some(Annotation { label: ExtrusionMove, dx: 0.4070053, dy: -0.43699646, dz: 0.0, de: 0.08085, dt: 0.029133098, ex_width_mm: 5.1152105 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X88.622 Y89.563 E0.10967 
; Some(Annotation { label: ExtrusionMove, dx: 0.6819992, dy: -0.43699646, dz: 0.0, de: 0.10967, dt: 0.045466613, ex_width_mm: 5.1155515 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X89.401 Y89.126 E0.12094 
; Some(Annotation { label: ExtrusionMove, dx: 0.7789993, dy: -0.4370041, dz: 0.0, de: 0.12094, dt: 0.05193329, ex_width_mm: 5.1157045 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X90.102 Y88.69 E0.11177 
; Some(Annotation { label: ExtrusionMove, dx: 0.7009964, dy: -0.435997, dz: 0.0, de: 0.11177, dt: 0.046733093, ex_width_mm: 5.1154237 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X90.675 Y88.253 E0.09757 
; Some(Annotation { label: ExtrusionMove, dx: 0.5730057, dy: -0.4370041, dz: 0.0, de: 0.09757, dt: 0.03820038, ex_width_mm: 5.1155186 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X91.129 Y87.816 E0.08532 
; Some(Annotation { label: ExtrusionMove, dx: 0.45399475, dy: -0.43699646, dz: 0.0, de: 0.08532, dt: 0.030266315, ex_width_mm: 5.1156325 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X91.491 Y87.379 E0.07683 
; Some(Annotation { label: ExtrusionMove, dx: 0.3619995, dy: -0.4370041, dz: 0.0, de: 0.07683, dt: 0.029133607, ex_width_mm: 5.115379 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X92.019 Y86.506 E0.13814 
; Some(Annotation { label: ExtrusionMove, dx: 0.5279999, dy: -0.8730011, dz: 0.0, de: 0.13814, dt: 0.058200072, ex_width_mm: 5.115614 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X92.375 Y85.632 E0.12778 
; Some(Annotation { label: ExtrusionMove, dx: 0.3560028, dy: -0.8739929, dz: 0.0, de: 0.12778, dt: 0.058266196, ex_width_mm: 5.1157236 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X92.598 Y84.759 E0.122 
; Some(Annotation { label: ExtrusionMove, dx: 0.22299957, dy: -0.8730011, dz: 0.0, de: 0.122, dt: 0.058200072, ex_width_mm: 5.115702 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X92.626 Y83.885 E0.1184 
; Some(Annotation { label: ExtrusionMove, dx: 0.027999878, dy: -0.87400055, dz: 0.0, de: 0.1184, dt: 0.058266703, ex_width_mm: 5.115678 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X92.467 Y83.448 E0.06296 
; Some(Annotation { label: ExtrusionMove, dx: -0.15899658, dy: -0.4370041, dz: 0.0, de: 0.06296, dt: 0.029133607, ex_width_mm: 5.1152873 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X92.06 Y83.012 E0.08076 
; Some(Annotation { label: ExtrusionMove, dx: -0.4070053, dy: -0.435997, dz: 0.0, de: 0.08076, dt: 0.029066468, ex_width_mm: 5.115779 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X91.974 Y82.956 E0.0139 
; Some(Annotation { label: ExtrusionMove, dx: -0.085998535, dy: -0.055999756, dz: 0.0, de: 0.0139, dt: 0.0057332357, ex_width_mm: 5.1174197 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X94.877 E0.39305 
; Some(Annotation { label: ExtrusionMove, dx: 2.9029999, dy: 0.0, dz: 0.0, de: 0.39305, dt: 0.19353333, ex_width_mm: 5.1154833 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X94.928 Y83.012 E0.01026 
; Some(Annotation { label: ExtrusionMove, dx: 0.051002502, dy: 0.055999756, dz: 0.0, de: 0.01026, dt: 0.0037333171, ex_width_mm: 5.117787 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X95.61 Y83.448 E0.1096 
; Some(Annotation { label: ExtrusionMove, dx: 0.6819992, dy: 0.435997, dz: 0.0, de: 0.1096, dt: 0.045466613, ex_width_mm: 5.115689 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X96.389 Y83.885 E0.12094 
; Some(Annotation { label: ExtrusionMove, dx: 0.7789993, dy: 0.4370041, dz: 0.0, de: 0.12094, dt: 0.05193329, ex_width_mm: 5.1157045 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X97.044 Y84.293 E0.10448 
; Some(Annotation { label: ExtrusionMove, dx: 0.6549988, dy: 0.40799713, dz: 0.0, de: 0.10448, dt: 0.043666586, ex_width_mm: 5.1154475 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 Y86.793 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
M204 P1000
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 Y84.293 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: -2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X97.022 Y84.279 E-0.00937 
; Some(Annotation { label: Wipe, dx: -0.021995544, dy: -0.013999939, dz: 0.0, de: -0.00937, dt: 0.0001832962, ex_width_mm: -13.57795 })
; None
G1 Z1.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
G1 X84.189 Y82.956 F9000 
; Some(Annotation { label: TravelMove, dx: -12.833, dy: -1.322998, dz: 0.0, de: 0.0, dt: 0.08555333, ex_width_mm: 0.0 })
; None
G1 Z1.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
M204 P1500
M73 P14 R9
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X82.956 E0.16694 
; Some(Annotation { label: ExtrusionMove, dx: -1.2330017, dy: 0.0, dz: 0.0, de: 0.16694, dt: 0.08220012, ex_width_mm: 5.115436 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 Y84.224 E0.17168 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.2679977, dz: 0.0, de: 0.17168, dt: 0.084533185, ex_width_mm: 5.1154885 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X83.114 Y84.322 E0.02517 
; Some(Annotation { label: ExtrusionMove, dx: 0.15799713, dy: 0.09799957, dz: 0.0, de: 0.02517, dt: 0.010533142, ex_width_mm: 5.114913 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X83.686 Y84.759 E0.09746 
; Some(Annotation { label: ExtrusionMove, dx: 0.5719986, dy: 0.4370041, dz: 0.0, de: 0.09746, dt: 0.03813324, ex_width_mm: 5.1154346 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X84.141 Y85.195 E0.08532 
; Some(Annotation { label: ExtrusionMove, dx: 0.45500183, dy: 0.435997, dz: 0.0, de: 0.08532, dt: 0.030333454, ex_width_mm: 5.115356 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X84.502 Y85.632 E0.07675 
; Some(Annotation { label: ExtrusionMove, dx: 0.36100006, dy: 0.4370041, dz: 0.0, de: 0.07675, dt: 0.029133607, ex_width_mm: 5.115797 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X85.031 Y86.506 E0.13832 
; Some(Annotation { label: ExtrusionMove, dx: 0.5289993, dy: 0.8739929, dz: 0.0, de: 0.13832, dt: 0.058266196, ex_width_mm: 5.115431 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X85.387 Y87.379 E0.12765 
; Some(Annotation { label: ExtrusionMove, dx: 0.3560028, dy: 0.8730011, dz: 0.0, de: 0.12765, dt: 0.058200072, ex_width_mm: 5.1154976 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X85.61 Y88.253 E0.12213 
; Some(Annotation { label: ExtrusionMove, dx: 0.22299957, dy: 0.87400055, dz: 0.0, de: 0.12213, dt: 0.058266703, ex_width_mm: 5.115655 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X85.638 Y89.126 E0.11826 
; Some(Annotation { label: ExtrusionMove, dx: 0.027999878, dy: 0.8730011, dz: 0.0, de: 0.11826, dt: 0.058200072, ex_width_mm: 5.115473 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X85.478 Y89.563 E0.06301 
; Some(Annotation { label: ExtrusionMove, dx: -0.16000366, dy: 0.4370041, dz: 0.0, de: 0.06301, dt: 0.029133607, ex_width_mm: 5.115552 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X85.072 Y90 E0.08076 
; Some(Annotation { label: ExtrusionMove, dx: -0.40599823, dy: 0.43699646, dz: 0.0, de: 0.08076, dt: 0.029133098, ex_width_mm: 5.115393 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X84.39 Y90.437 E0.10967 
; Some(Annotation { label: ExtrusionMove, dx: -0.6819992, dy: 0.43699646, dz: 0.0, de: 0.10967, dt: 0.045466613, ex_width_mm: 5.1155515 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X83.611 Y90.874 E0.12094 
; Some(Annotation { label: ExtrusionMove, dx: -0.7789993, dy: 0.4370041, dz: 0.0, de: 0.12094, dt: 0.05193329, ex_width_mm: 5.1157045 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 X82.956 Y91.281 E0.10441 
; Some(Annotation { label: ExtrusionMove, dx: -0.6549988, dy: 0.40699768, dz: 0.0, de: 0.10441, dt: 0.043666586, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
G1 Y93.781 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 317, end_id: 408, z: 1.5 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 Y91.281 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: -2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X82.978 Y91.267 E-0.00937 
; Some(Annotation { label: Wipe, dx: 0.021995544, dy: -0.013999939, dz: 0.0, de: -0.00937, dt: 0.0001832962, ex_width_mm: -13.57795 })
; None
G1 Z1.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
G1 Z1.9 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999993, de: 0.0, dt: 0.01666666, ex_width_mm: 0.0 })
; None
G1 X91.275795 Z2.1 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999993, de: 0.0, dt: 0.01666666, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.758003, dy: 6.469002, dz: 0.0, de: 0.0, dt: 0.09838669, ex_width_mm: 0.0 })
; None
G1 Z1.9 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999993, de: 0.0, dt: 0.01666666, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
M204 P800
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
M73 P15 R9
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
M204 P1000
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z2.1 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999993, de: 0.0, dt: 0.01666666, ex_width_mm: 0.0 })
; None
G1 X91.2516 Y93.973 F9000 
; Some(Annotation { label: TravelMove, dx: -13.068001, dy: -4.4749985, dz: 0.0, de: 0.0, dt: 0.087120004, ex_width_mm: 0.0 })
; None
G1 Z1.9 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999993, de: 0.0, dt: 0.01666666, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 Y91.473 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X83.885 Y91.05 E0.13821 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.42299652, dz: 0.0, de: 0.13821, dt: 0.061933395, ex_width_mm: 5.1156173 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X84.759 Y90.782 E0.12377 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.26800537, dz: 0.0, de: 0.12377, dt: 0.058266703, ex_width_mm: 5.115347 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X85.632 Y90.669 E0.11919 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.11299896, dz: 0.0, de: 0.11919, dt: 0.058200072, ex_width_mm: 5.115676 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X86.069 Y90.764 E0.06055 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.09500122, dz: 0.0, de: 0.06055, dt: 0.029133098, ex_width_mm: 5.1155777 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X86.506 Y91.142 E0.07823 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.37799835, dz: 0.0, de: 0.07823, dt: 0.029133098, ex_width_mm: 5.1154566 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X86.943 Y91.891 E0.11741 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: 0.74900055, dz: 0.0, de: 0.11741, dt: 0.04993337, ex_width_mm: 5.115516 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X87.379 Y92.758 E0.1314 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: 0.8670044, dz: 0.0, de: 0.1314, dt: 0.057800293, ex_width_mm: 5.11569 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X87.816 Y93.522 E0.11917 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: 0.76399994, dz: 0.0, de: 0.11917, dt: 0.05093333, ex_width_mm: 5.1155806 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X88.253 Y94.133 E0.10171 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.61100006, dz: 0.0, de: 0.10171, dt: 0.040733337, ex_width_mm: 5.115635 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X88.69 Y94.613 E0.08789 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: 0.47999573, dz: 0.0, de: 0.08789, dt: 0.031999715, ex_width_mm: 5.115574 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X89.126 Y94.993 E0.07831 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: 0.37999725, dz: 0.0, de: 0.07831, dt: 0.029066468, ex_width_mm: 5.1157665 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X90 Y95.551 E0.1404 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.5580063, dz: 0.0, de: 0.1404, dt: 0.058266703, ex_width_mm: 5.1156254 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X90.874 Y95.938 E0.12942 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.38700104, dz: 0.0, de: 0.12942, dt: 0.058266703, ex_width_mm: 5.1156187 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X91.747 Y96.207 E0.12368 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.2689972, dz: 0.0, de: 0.12368, dt: 0.058200072, ex_width_mm: 5.1153426 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X92.621 Y96.32 E0.11932 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.11299896, dz: 0.0, de: 0.11932, dt: 0.058266703, ex_width_mm: 5.115495 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X93.057 Y96.224 E0.06045 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: -0.09600067, dz: 0.0, de: 0.06045, dt: 0.029066468, ex_width_mm: 5.1158547 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X93.494 Y95.847 E0.07814 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: -0.3769989, dz: 0.0, de: 0.07814, dt: 0.029133607, ex_width_mm: 5.1153045 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X93.931 Y95.098 E0.11741 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: -0.74900055, dz: 0.0, de: 0.11741, dt: 0.04993337, ex_width_mm: 5.1155386 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X94.368 Y94.23 E0.13158 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: -0.8679962, dz: 0.0, de: 0.13158, dt: 0.057866413, ex_width_mm: 5.115659 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X94.805 Y93.467 E0.11905 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: -0.7630005, dz: 0.0, de: 0.11905, dt: 0.0508667, ex_width_mm: 5.1154704 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X95.241 Y92.855 E0.10174 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: -0.6119995, dz: 0.0, de: 0.10174, dt: 0.040799968, ex_width_mm: 5.1155586 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X95.678 Y92.375 E0.08789 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: -0.48000336, dz: 0.0, de: 0.08789, dt: 0.032000225, ex_width_mm: 5.11553 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X96.115 Y91.995 E0.07841 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: -0.37999725, dz: 0.0, de: 0.07841, dt: 0.029133098, ex_width_mm: 5.1156316 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X97.044 Y91.413 E0.14843 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.58200073, dz: 0.0, de: 0.14843, dt: 0.061933395, ex_width_mm: 5.1156096 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 Y84.484 E0.93815 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -6.929001, dz: 0.0, de: 0.93815, dt: 0.46193337, ex_width_mm: 5.1154943 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X96.115 Y84.062 E0.13815 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.4220047, dz: 0.0, de: 0.13815, dt: 0.061933395, ex_width_mm: 5.1154547 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X95.241 Y83.793 E0.12381 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.2689972, dz: 0.0, de: 0.12381, dt: 0.058266703, ex_width_mm: 5.1153708 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X94.368 Y83.68 E0.11919 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.11299896, dz: 0.0, de: 0.11919, dt: 0.058200072, ex_width_mm: 5.115676 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X93.931 Y83.776 E0.06058 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.09600067, dz: 0.0, de: 0.06058, dt: 0.029133098, ex_width_mm: 5.115671 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X93.494 Y84.153 E0.07814 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.3769989, dz: 0.0, de: 0.07814, dt: 0.029133098, ex_width_mm: 5.115356 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X93.057 Y84.902 E0.11741 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: 0.74900055, dz: 0.0, de: 0.11741, dt: 0.04993337, ex_width_mm: 5.115516 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X92.621 Y85.77 E0.13152 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: 0.8679962, dz: 0.0, de: 0.13152, dt: 0.057866413, ex_width_mm: 5.1156907 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X92.184 Y86.533 E0.11905 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: 0.7630005, dz: 0.0, de: 0.11905, dt: 0.0508667, ex_width_mm: 5.1154704 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X91.747 Y87.145 E0.10182 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.6119995, dz: 0.0, de: 0.10182, dt: 0.040799968, ex_width_mm: 5.11563 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X91.31 Y87.625 E0.08789 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: 0.48000336, dz: 0.0, de: 0.08789, dt: 0.032000225, ex_width_mm: 5.11553 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X90.874 Y88.005 E0.07831 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: 0.37999725, dz: 0.0, de: 0.07831, dt: 0.029066468, ex_width_mm: 5.1157665 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X90 Y88.563 E0.1404 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.5580063, dz: 0.0, de: 0.1404, dt: 0.058266703, ex_width_mm: 5.1156254 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X89.126 Y88.95 E0.12942 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.3869934, dz: 0.0, de: 0.12942, dt: 0.058266703, ex_width_mm: 5.1156354 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X88.253 Y89.218 E0.12364 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.26800537, dz: 0.0, de: 0.12364, dt: 0.058200072, ex_width_mm: 5.1153207 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
M73 P16 R9
G1 X87.379 Y89.331 E0.11932 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.11299896, dz: 0.0, de: 0.11932, dt: 0.058266703, ex_width_mm: 5.115495 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X86.943 Y89.236 E0.06042 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: -0.09500122, dz: 0.0, de: 0.06042, dt: 0.029066468, ex_width_mm: 5.115766 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X86.506 Y88.858 E0.07823 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: -0.37799835, dz: 0.0, de: 0.07823, dt: 0.029133607, ex_width_mm: 5.115405 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X86.069 Y88.109 E0.11741 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: -0.74900055, dz: 0.0, de: 0.11741, dt: 0.04993337, ex_width_mm: 5.1155386 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X85.632 Y87.242 E0.13146 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: -0.8670044, dz: 0.0, de: 0.13146, dt: 0.057800293, ex_width_mm: 5.115657 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X85.195 Y86.478 E0.11917 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: -0.76399994, dz: 0.0, de: 0.11917, dt: 0.05093333, ex_width_mm: 5.1155806 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X84.759 Y85.867 E0.10163 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: -0.61100006, dz: 0.0, de: 0.10163, dt: 0.040733337, ex_width_mm: 5.115568 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X84.322 Y85.387 E0.08789 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: -0.47999573, dz: 0.0, de: 0.08789, dt: 0.031999715, ex_width_mm: 5.115574 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X83.885 Y85.007 E0.07841 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: -0.37999725, dz: 0.0, de: 0.07841, dt: 0.029133098, ex_width_mm: 5.1156316 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X82.956 Y84.424 E0.1485 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.5830002, dz: 0.0, de: 0.1485, dt: 0.061933395, ex_width_mm: 5.1155443 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 Y82.956 E0.19876 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.4680023, dz: 0.0, de: 0.19876, dt: 0.09786682, ex_width_mm: 5.1155005 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
G1 X83.988 E0.13973 
; Some(Annotation { label: ExtrusionMove, dx: 1.0319977, dy: 0.0, dz: 0.0, de: 0.13973, dt: 0.068799846, ex_width_mm: 5.115603 })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 417, end_id: 490, z: 1.9 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X82.956 E-0.36765 
; Some(Annotation { label: Wipe, dx: -1.0319977, dy: 0.0, dz: 0.0, de: -0.36765, dt: 0.008599981, ex_width_mm: -13.459898 })
; None
G1 Y84.424 E-0.52298 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 1.4680023, dz: 0.0, de: -0.52298, dt: 0.012233352, ex_width_mm: -13.459974 })
; None
G1 X82.978 Y84.438 E-0.00937 
; Some(Annotation { label: Wipe, dx: 0.021995544, dy: 0.013999939, dz: 0.0, de: -0.00937, dt: 0.0001832962, ex_width_mm: -13.57795 })
; None
G1 X91.275795 Z2.1 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999993, de: 0.0, dt: 0.01666666, ex_width_mm: 0.0 })
; None
G1 X91.275795 Z2.3 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
G1 X91.275795 Z2.5 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.758003, dy: 13.2979965, dz: 0.0, de: 0.0, dt: 0.09838669, ex_width_mm: 0.0 })
; None
G1 X107.509605 Z2.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X107.509605 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X107.509605 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X90.4904 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X90.4904 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X107.509605 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X107.509605 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X108.40501 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
M204 P800
; LAYER END
G1 X108.40501 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X89.595 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X89.595 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X108.40501 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
M73 P17 R9
G1 X108.40501 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
M204 P1000
G1 X107.5547 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
; LAYER END
G1 X107.5547 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 X107.5547 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X105.6264 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z2.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
G1 X91.2516 Y94.107 F9000 
; Some(Annotation { label: TravelMove, dx: -13.068001, dy: -4.340996, dz: 0.0, de: 0.0, dt: 0.087120004, ex_width_mm: 0.0 })
; None
G1 X91.2516 Z2.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X91.2516 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
M204 P1500
G1 X91.2516 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X91.2516 Y91.607 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X92.273506 Y91.32 E0.13165 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.28700256, dz: 0.0, de: 0.13165, dt: 0.061933395, ex_width_mm: 5.115593 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X93.2349 Y91.226 E0.11902 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.09400177, dz: 0.0, de: 0.11902, dt: 0.058266703, ex_width_mm: 5.1156015 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X94.195206 Y91.392 E0.12032 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.16600037, dz: 0.0, de: 0.12032, dt: 0.058200072, ex_width_mm: 5.115596 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X94.6759 Y91.651 E0.06878 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.2590027, dz: 0.0, de: 0.06878, dt: 0.029133098, ex_width_mm: 5.115612 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X95.1566 Y92.076 E0.08253 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.42499542, dz: 0.0, de: 0.08253, dt: 0.029133098, ex_width_mm: 5.115257 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X96.1169 Y93.256 E0.19874 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 1.1800003, dz: 0.0, de: 0.19874, dt: 0.07866669, ex_width_mm: 5.1155787 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X97.0783 Y94.29 E0.18331 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 1.0340042, dz: 0.0, de: 0.18331, dt: 0.06893361, ex_width_mm: 5.115474 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X98.038605 Y94.975 E0.15024 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.68499756, dz: 0.0, de: 0.15024, dt: 0.058200072, ex_width_mm: 5.1154084 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X99 Y95.409 E0.13212 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.4339981, dz: 0.0, de: 0.13212, dt: 0.058266703, ex_width_mm: 5.1154428 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X99.9614 Y95.668 E0.12342 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.2590027, dz: 0.0, de: 0.12342, dt: 0.058266703, ex_width_mm: 5.115423 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X100.92171 Y95.762 E0.11888 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.09400177, dz: 0.0, de: 0.11888, dt: 0.058200072, ex_width_mm: 5.1153665 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X101.8831 Y95.597 E0.12043 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.16500092, dz: 0.0, de: 0.12043, dt: 0.058266703, ex_width_mm: 5.1156907 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X102.3627 Y95.338 E0.06866 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: -0.2590027, dz: 0.0, de: 0.06866, dt: 0.029066468, ex_width_mm: 5.1153417 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X102.84341 Y94.912 E0.08263 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: -0.42599487, dz: 0.0, de: 0.08263, dt: 0.029133607, ex_width_mm: 5.1155586 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X103.804794 Y93.733 E0.19871 
; Some(Annotation { label: ExtrusionMove, dx: 0.8739929, dy: -1.1790009, dz: 0.0, de: 0.19871, dt: 0.07860006, ex_width_mm: 5.115548 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X104.7651 Y92.699 E0.18322 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -1.0340042, dz: 0.0, de: 0.18322, dt: 0.06893361, ex_width_mm: 5.1153994 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X105.7265 Y92.013 E0.15043 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.685997, dz: 0.0, de: 0.15043, dt: 0.058266703, ex_width_mm: 5.1154075 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X106.7484 Y91.563 E0.13976 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.44999695, dz: 0.0, de: 0.13976, dt: 0.061933395, ex_width_mm: 5.1154513 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X106.7484 Y84.618 E0.94032 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -6.9450073, dz: 0.0, de: 0.94032, dt: 0.46300048, ex_width_mm: 5.1155095 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X105.7265 Y84.332 E0.13161 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.28599548, dz: 0.0, de: 0.13161, dt: 0.061933395, ex_width_mm: 5.1156 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X104.7651 Y84.238 E0.11902 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.09400177, dz: 0.0, de: 0.11902, dt: 0.058266703, ex_width_mm: 5.1156015 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X103.804794 Y84.403 E0.12029 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.16500092, dz: 0.0, de: 0.12029, dt: 0.058200072, ex_width_mm: 5.115392 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X103.324104 Y84.662 E0.06878 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.2590027, dz: 0.0, de: 0.06878, dt: 0.029133098, ex_width_mm: 5.115612 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X102.84341 Y85.088 E0.08263 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.42599487, dz: 0.0, de: 0.08263, dt: 0.029133098, ex_width_mm: 5.1156044 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X101.8831 Y86.267 E0.19863 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 1.1790009, dz: 0.0, de: 0.19863, dt: 0.07860006, ex_width_mm: 5.115547 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X100.92171 Y87.301 E0.18331 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 1.0340042, dz: 0.0, de: 0.18331, dt: 0.06893361, ex_width_mm: 5.115474 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X99.9614 Y87.987 E0.15033 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.685997, dz: 0.0, de: 0.15033, dt: 0.058200072, ex_width_mm: 5.115627 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X99 Y88.421 E0.13212 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.4339981, dz: 0.0, de: 0.13212, dt: 0.058266703, ex_width_mm: 5.1154428 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X98.038605 Y88.68 E0.12342 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.2590027, dz: 0.0, de: 0.12342, dt: 0.058266703, ex_width_mm: 5.115423 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X97.0783 Y88.774 E0.11888 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.09400177, dz: 0.0, de: 0.11888, dt: 0.058200072, ex_width_mm: 5.1153665 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X96.1169 Y88.608 E0.12045 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.16600037, dz: 0.0, de: 0.12045, dt: 0.058266703, ex_width_mm: 5.115471 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X95.63731 Y88.349 E0.06866 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: -0.2590027, dz: 0.0, de: 0.06866, dt: 0.029066468, ex_width_mm: 5.1153417 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X95.1566 Y87.924 E0.08253 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: -0.42499542, dz: 0.0, de: 0.08253, dt: 0.029133607, ex_width_mm: 5.115211 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X94.195206 Y86.744 E0.19882 
; Some(Annotation { label: ExtrusionMove, dx: -0.8739929, dy: -1.1800003, dz: 0.0, de: 0.19882, dt: 0.07866669, ex_width_mm: 5.115581 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X93.2349 Y85.71 E0.18322 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -1.0340042, dz: 0.0, de: 0.18322, dt: 0.06893361, ex_width_mm: 5.1153994 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X92.273506 Y85.025 E0.15035 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.68499756, dz: 0.0, de: 0.15035, dt: 0.058266703, ex_width_mm: 5.1155276 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X91.2516 Y84.574 E0.13982 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.45100403, dz: 0.0, de: 0.13982, dt: 0.061933395, ex_width_mm: 5.1154695 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
G1 X91.2516 Y82.956 E0.21907 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.6179962, dz: 0.0, de: 0.21907, dt: 0.107866414, ex_width_mm: 5.115538 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
M73 P18 R9
G1 X92.2218 E0.11942 
; Some(Annotation { label: ExtrusionMove, dx: 0.88199615, dy: 0.0, dz: 0.0, de: 0.11942, dt: 0.058799744, ex_width_mm: 5.115597 })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
M204 P1000
G92 E0
G1 X92.2218 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 500, end_id: 561, z: 2.3 })
; LAYER END
G1 X92.2218 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X91.2516 E-0.31421 
; Some(Annotation { label: Wipe, dx: -0.88199615, dy: 0.0, dz: 0.0, de: -0.31421, dt: 0.007349968, ex_width_mm: -13.459818 })
; None
G1 X91.2516 Y84.574 E-0.57641 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 1.6179962, dz: 0.0, de: -0.57641, dt: 0.013483302, ex_width_mm: -13.45984 })
; None
G1 X91.27801 Y84.585 E-0.00938 
; Some(Annotation { label: Wipe, dx: 0.024002075, dy: 0.011001587, dz: 0.0, de: -0.00938, dt: 0.0002000173, ex_width_mm: -13.422408 })
; None
G1 X91.27801 Z2.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
G1 X91.27801 Z2.7 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
G1 X91.27801 Z2.9 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.755997, dy: 13.151001, dz: 0.0, de: 0.0, dt: 0.09837331, ex_width_mm: 0.0 })
; None
G1 X107.509605 Z2.7 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X107.509605 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X107.509605 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X90.4904 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X90.4904 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X107.509605 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X107.509605 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X108.40501 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
M204 P800
; LAYER END
G1 X108.40501 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X89.595 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X89.595 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X108.40501 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
M73 P19 R9
G1 X108.40501 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
M204 P1000
G1 X107.5547 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
; LAYER END
G1 X107.5547 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 X107.5547 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X105.6264 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z2.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
G1 X91.2516 Y94.195 F9000 
; Some(Annotation { label: TravelMove, dx: -13.068001, dy: -4.2529984, dz: 0.0, de: 0.0, dt: 0.087120004, ex_width_mm: 0.0 })
; None
G1 X91.2516 Z2.7 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X91.2516 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
M204 P1500
G1 X91.2516 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X91.2516 Y91.695 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X92.273506 Y91.536 E0.12761 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.15899658, dz: 0.0, de: 0.12761, dt: 0.061933395, ex_width_mm: 5.1154666 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X93.2349 Y91.584 E0.11851 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.04799652, dz: 0.0, de: 0.11851, dt: 0.058266703, ex_width_mm: 5.11535 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X94.195206 Y91.909 E0.12613 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.32499695, dz: 0.0, de: 0.12613, dt: 0.058200072, ex_width_mm: 5.115711 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X94.6759 Y92.223 E0.07286 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.314003, dz: 0.0, de: 0.07286, dt: 0.029133098, ex_width_mm: 5.1156745 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X95.1566 Y92.644 E0.08216 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.42099762, dz: 0.0, de: 0.08216, dt: 0.029133098, ex_width_mm: 5.115659 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X96.1169 Y93.634 E0.17871 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.9900055, dz: 0.0, de: 0.17871, dt: 0.066000365, ex_width_mm: 5.1154113 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X97.0783 Y94.46 E0.16282 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.8259964, dz: 0.0, de: 0.16282, dt: 0.058266703, ex_width_mm: 5.1154923 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X98.038605 Y94.999 E0.13891 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.53900146, dz: 0.0, de: 0.13891, dt: 0.058200072, ex_width_mm: 5.115366 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X99 Y95.314 E0.12579 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.31500244, dz: 0.0, de: 0.12579, dt: 0.058266703, ex_width_mm: 5.1156473 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X99.9614 Y95.452 E0.1198 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.13800049, dz: 0.0, de: 0.1198, dt: 0.058266703, ex_width_mm: 5.115449 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X100.92171 Y95.404 E0.11838 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.04800415, dz: 0.0, de: 0.11838, dt: 0.058200072, ex_width_mm: 5.1155686 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X101.8831 Y95.079 E0.12625 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.32499695, dz: 0.0, de: 0.12625, dt: 0.058266703, ex_width_mm: 5.1154337 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X102.3627 Y94.766 E0.07267 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: -0.31300354, dz: 0.0, de: 0.07267, dt: 0.029066468, ex_width_mm: 5.1155944 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X102.84341 Y94.345 E0.08216 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: -0.42099762, dz: 0.0, de: 0.08216, dt: 0.029133607, ex_width_mm: 5.1156125 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X103.804794 Y93.354 E0.1789 
; Some(Annotation { label: ExtrusionMove, dx: 0.8739929, dy: -0.99100494, dz: 0.0, de: 0.1789, dt: 0.066066995, ex_width_mm: 5.115402 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X104.7651 Y92.528 E0.16272 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.8259964, dz: 0.0, de: 0.16272, dt: 0.058200072, ex_width_mm: 5.1154394 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X105.7265 Y91.989 E0.13903 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.53900146, dz: 0.0, de: 0.13903, dt: 0.058266703, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X106.7484 Y91.666 E0.13317 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.32299805, dz: 0.0, de: 0.13317, dt: 0.061933395, ex_width_mm: 5.1155925 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X106.7484 Y84.706 E0.94235 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -6.959999, dz: 0.0, de: 0.94235, dt: 0.46399996, ex_width_mm: 5.11551 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X105.7265 Y84.548 E0.12759 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.15800476, dz: 0.0, de: 0.12759, dt: 0.061933395, ex_width_mm: 5.115571 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X104.7651 Y84.596 E0.11851 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.04800415, dz: 0.0, de: 0.11851, dt: 0.058266703, ex_width_mm: 5.1153474 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X103.804794 Y84.921 E0.12613 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.32499695, dz: 0.0, de: 0.12613, dt: 0.058200072, ex_width_mm: 5.115711 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X103.324104 Y85.234 E0.07278 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.31300354, dz: 0.0, de: 0.07278, dt: 0.029133098, ex_width_mm: 5.115597 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X102.84341 Y85.655 E0.08216 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.42099762, dz: 0.0, de: 0.08216, dt: 0.029133098, ex_width_mm: 5.115659 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X101.8831 Y86.646 E0.17881 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.99100494, dz: 0.0, de: 0.17881, dt: 0.066066995, ex_width_mm: 5.1153684 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X100.92171 Y87.472 E0.16282 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.8259964, dz: 0.0, de: 0.16282, dt: 0.058266703, ex_width_mm: 5.1154923 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X99.9614 Y88.011 E0.13891 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.53900146, dz: 0.0, de: 0.13891, dt: 0.058200072, ex_width_mm: 5.115366 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X99 Y88.325 E0.12574 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.31399536, dz: 0.0, de: 0.12574, dt: 0.058266703, ex_width_mm: 5.115492 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X98.038605 Y88.464 E0.11982 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.13899994, dz: 0.0, de: 0.11982, dt: 0.058266703, ex_width_mm: 5.115398 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X97.0783 Y88.416 E0.11838 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.04799652, dz: 0.0, de: 0.11838, dt: 0.058200072, ex_width_mm: 5.115571 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X96.1169 Y88.091 E0.12625 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.32499695, dz: 0.0, de: 0.12625, dt: 0.058266703, ex_width_mm: 5.1154337 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X95.63731 Y87.777 E0.07275 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: -0.314003, dz: 0.0, de: 0.07275, dt: 0.029066468, ex_width_mm: 5.115665 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X95.1566 Y87.356 E0.08216 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: -0.42099762, dz: 0.0, de: 0.08216, dt: 0.029133607, ex_width_mm: 5.1156125 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X94.195206 Y86.366 E0.1788 
; Some(Annotation { label: ExtrusionMove, dx: -0.8739929, dy: -0.9900055, dz: 0.0, de: 0.1788, dt: 0.066000365, ex_width_mm: 5.1154447 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X93.2349 Y85.54 E0.16272 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.8259964, dz: 0.0, de: 0.16272, dt: 0.058200072, ex_width_mm: 5.1154394 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X92.273506 Y85.001 E0.13903 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.53900146, dz: 0.0, de: 0.13903, dt: 0.058266703, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X91.2516 Y84.678 E0.13317 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.32299805, dz: 0.0, de: 0.13317, dt: 0.061933395, ex_width_mm: 5.1155925 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X91.2516 Y82.956 E0.23315 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.7220001, dz: 0.0, de: 0.23315, dt: 0.114800006, ex_width_mm: 5.1155014 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
G1 X92.108505 E0.10547 
; Some(Annotation { label: ExtrusionMove, dx: 0.7789993, dy: 0.0, dz: 0.0, de: 0.10547, dt: 0.05193329, ex_width_mm: 5.1153784 })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
M204 P1000
G92 E0
G1 X92.108505 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 571, end_id: 632, z: 2.7 })
; LAYER END
G1 X92.108505 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X91.2516 E-0.27752 
; Some(Annotation { label: Wipe, dx: -0.7789993, dy: 0.0, dz: 0.0, de: -0.27752, dt: 0.006491661, ex_width_mm: -13.45994 })
; None
G1 X91.2516 Y84.678 E-0.61346 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 1.7220001, dz: 0.0, de: -0.61346, dt: 0.014350001, ex_width_mm: -13.459812 })
; None
G1 X91.27801 Y84.686 E-0.00902 
; Some(Annotation { label: Wipe, dx: 0.024002075, dy: 0.0079956055, dz: 0.0, de: -0.00902, dt: 0.0002000173, ex_width_mm: -13.470774 })
; None
G1 X91.27801 Z2.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
G1 Z3.1 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 Z3.3 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
G1 X97.736 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.755997, dy: 13.050003, dz: 0.0, de: 0.0, dt: 0.09837331, ex_width_mm: 0.0 })
; None
G1 Z3.1 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
M73 P20 R9
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
M204 P800
M73 P20 R8
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
M204 P1000
M73 P21 R8
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 Z3.3 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
G1 X82.956 Y94.242 F9000 
; Some(Annotation { label: TravelMove, dx: -13.068001, dy: -4.2060013, dz: 0.0, de: 0.0, dt: 0.087120004, ex_width_mm: 0.0 })
; None
G1 Z3.1 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 Y91.742 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X83.012 Y91.73 E0.00775 
; Some(Annotation { label: ExtrusionMove, dx: 0.055999756, dy: -0.011993408, dz: 0.0, de: 0.00775, dt: 0.0037333171, ex_width_mm: 5.1128488 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X83.885 Y91.706 E0.11824 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.024002075, dz: 0.0, de: 0.11824, dt: 0.058200072, ex_width_mm: 5.1153045 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X84.759 Y91.879 E0.12063 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.17299652, dz: 0.0, de: 0.12063, dt: 0.058266703, ex_width_mm: 5.1154566 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X85.632 Y92.325 E0.13273 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.44599915, dz: 0.0, de: 0.13273, dt: 0.058200072, ex_width_mm: 5.1154394 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X86.506 Y93.094 E0.15762 
; Some(Annotation { label: ExtrusionMove, dx: 0.8739929, dy: 0.7690048, dz: 0.0, de: 0.15762, dt: 0.058266196, ex_width_mm: 5.1155276 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X87.379 Y93.975 E0.16793 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.8809967, dz: 0.0, de: 0.16793, dt: 0.058733113, ex_width_mm: 5.1155896 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X88.253 Y94.651 E0.1496 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.6760025, dz: 0.0, de: 0.1496, dt: 0.058266703, ex_width_mm: 5.115466 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X89.126 Y95.06 E0.13053 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.40899658, dz: 0.0, de: 0.13053, dt: 0.058200072, ex_width_mm: 5.115555 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X90 Y95.259 E0.12136 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.19900513, dz: 0.0, de: 0.12136, dt: 0.058266703, ex_width_mm: 5.115333 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X90.874 Y95.282 E0.11838 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.022994995, dz: 0.0, de: 0.11838, dt: 0.058266703, ex_width_mm: 5.1156673 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X91.747 Y95.109 E0.1205 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.17299652, dz: 0.0, de: 0.1205, dt: 0.058200072, ex_width_mm: 5.115573 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X92.621 Y94.663 E0.13285 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.44599915, dz: 0.0, de: 0.13285, dt: 0.058266703, ex_width_mm: 5.115419 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X93.494 Y93.895 E0.15743 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.7680054, dz: 0.0, de: 0.15743, dt: 0.058200072, ex_width_mm: 5.115534 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X94.368 Y93.014 E0.16802 
; Some(Annotation { label: ExtrusionMove, dx: 0.8739929, dy: -0.8809967, dz: 0.0, de: 0.16802, dt: 0.058733113, ex_width_mm: 5.1154504 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X95.241 Y92.338 E0.14949 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.6760025, dz: 0.0, de: 0.14949, dt: 0.058200072, ex_width_mm: 5.115364 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X96.115 Y91.929 E0.13065 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.40899658, dz: 0.0, de: 0.13065, dt: 0.058266703, ex_width_mm: 5.115455 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X97.044 Y91.728 E0.12869 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.20100403, dz: 0.0, de: 0.12869, dt: 0.061933395, ex_width_mm: 5.115402 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 Y84.754 E0.94425 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -6.973999, dz: 0.0, de: 0.94425, dt: 0.46493328, ex_width_mm: 5.115535 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X96.115 Y84.718 E0.12588 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.035995483, dz: 0.0, de: 0.12588, dt: 0.061933395, ex_width_mm: 5.1156497 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X95.241 Y84.891 E0.12063 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.17299652, dz: 0.0, de: 0.12063, dt: 0.058266703, ex_width_mm: 5.1154566 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X94.368 Y85.337 E0.13273 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.44599915, dz: 0.0, de: 0.13273, dt: 0.058200072, ex_width_mm: 5.1154394 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X93.494 Y86.105 E0.15753 
; Some(Annotation { label: ExtrusionMove, dx: -0.8739929, dy: 0.7680054, dz: 0.0, de: 0.15753, dt: 0.058266196, ex_width_mm: 5.1155066 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X92.621 Y86.986 E0.16793 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.8809967, dz: 0.0, de: 0.16793, dt: 0.058733113, ex_width_mm: 5.1155896 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X91.747 Y87.662 E0.1496 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.6760025, dz: 0.0, de: 0.1496, dt: 0.058266703, ex_width_mm: 5.115466 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X90.874 Y88.071 E0.13053 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.40899658, dz: 0.0, de: 0.13053, dt: 0.058200072, ex_width_mm: 5.115555 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X90 Y88.27 E0.12136 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.1989975, dz: 0.0, de: 0.12136, dt: 0.058266703, ex_width_mm: 5.1153426 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X89.126 Y88.294 E0.11838 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.024002075, dz: 0.0, de: 0.11838, dt: 0.058266703, ex_width_mm: 5.115509 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X88.253 Y88.121 E0.1205 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.17299652, dz: 0.0, de: 0.1205, dt: 0.058200072, ex_width_mm: 5.115573 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X87.379 Y87.675 E0.13285 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.44599915, dz: 0.0, de: 0.13285, dt: 0.058266703, ex_width_mm: 5.115419 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X86.506 Y86.906 E0.15752 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.7690048, dz: 0.0, de: 0.15752, dt: 0.058200072, ex_width_mm: 5.1155524 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X85.632 Y86.025 E0.16802 
; Some(Annotation { label: ExtrusionMove, dx: -0.8739929, dy: -0.8809967, dz: 0.0, de: 0.16802, dt: 0.058733113, ex_width_mm: 5.1154504 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X84.759 Y85.349 E0.14949 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.6760025, dz: 0.0, de: 0.14949, dt: 0.058200072, ex_width_mm: 5.115364 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X83.885 Y84.94 E0.13065 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.40899658, dz: 0.0, de: 0.13065, dt: 0.058266703, ex_width_mm: 5.115455 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X82.956 Y84.74 E0.12866 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.20000458, dz: 0.0, de: 0.12866, dt: 0.061933395, ex_width_mm: 5.1153445 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 Y82.956 E0.24155 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.7839966, dz: 0.0, de: 0.24155, dt: 0.118933104, ex_width_mm: 5.115628 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
G1 X83.673 E0.09708 
; Some(Annotation { label: ExtrusionMove, dx: 0.71699524, dy: 0.0, dz: 0.0, de: 0.09708, dt: 0.04779968, ex_width_mm: 5.1156335 })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 642, end_id: 700, z: 3.1 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X82.956 E-0.25543 
; Some(Annotation { label: Wipe, dx: -0.71699524, dy: 0.0, dz: 0.0, de: -0.25543, dt: 0.00597496, ex_width_mm: -13.459892 })
; None
G1 Y84.74 E-0.63555 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 1.7839966, dz: 0.0, de: -0.63555, dt: 0.014866638, ex_width_mm: -13.459894 })
; None
G1 X82.981 Y84.745 E-0.00902 
; Some(Annotation { label: Wipe, dx: 0.025001526, dy: 0.005004883, dz: 0.0, de: -0.00902, dt: 0.00020834606, ex_width_mm: -13.365769 })
; None
G1 Z3.3 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
G1 Z3.5 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
G1 Z3.7 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
G1 X97.736 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.754997, dy: 12.990997, dz: 0.0, de: 0.0, dt: 0.09836665, ex_width_mm: 0.0 })
; None
G1 Z3.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
M73 P22 R8
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
M204 P800
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
M204 P1000
M73 P23 R8
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 Z3.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
G1 X97.044 Y94.253 F9000 
; Some(Annotation { label: TravelMove, dx: 1.0199966, dy: -4.1949997, dz: 0.0, de: 0.0, dt: 0.027966665, ex_width_mm: 0.0 })
; None
G1 Z3.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 Y91.753 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X96.115 Y91.833 E0.12625 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: 0.08000183, dz: 0.0, de: 0.12625, dt: 0.061933395, ex_width_mm: 5.115602 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X95.241 Y92.122 E0.12464 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.28900146, dz: 0.0, de: 0.12464, dt: 0.058266703, ex_width_mm: 5.1156335 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X94.368 Y92.676 E0.13999 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.55400085, dz: 0.0, de: 0.13999, dt: 0.058200072, ex_width_mm: 5.115456 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X92.621 Y94.302 E0.32314 
; Some(Annotation { label: ExtrusionMove, dx: -1.746994, dy: 1.6259995, dz: 0.0, de: 0.32314, dt: 0.11646627, ex_width_mm: 5.115604 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X91.747 Y94.86 E0.1404 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.55799866, dz: 0.0, de: 0.1404, dt: 0.058266703, ex_width_mm: 5.1156454 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X90.874 Y95.152 E0.12464 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.29199982, dz: 0.0, de: 0.12464, dt: 0.058200072, ex_width_mm: 5.1156454 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X90 Y95.241 E0.11895 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.08899689, dz: 0.0, de: 0.11895, dt: 0.058266703, ex_width_mm: 5.1156254 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X89.126 Y95.155 E0.11891 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.085998535, dz: 0.0, de: 0.11891, dt: 0.058266703, ex_width_mm: 5.1156435 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X88.253 Y94.867 E0.12447 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.288002, dz: 0.0, de: 0.12447, dt: 0.058200072, ex_width_mm: 5.115672 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X87.379 Y94.312 E0.14018 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.5550003, dz: 0.0, de: 0.14018, dt: 0.058266703, ex_width_mm: 5.1155744 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X85.632 Y92.686 E0.32314 
; Some(Annotation { label: ExtrusionMove, dx: -1.746994, dy: -1.6259995, dz: 0.0, de: 0.32314, dt: 0.11646627, ex_width_mm: 5.115604 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X84.759 Y92.128 E0.14028 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.55799866, dz: 0.0, de: 0.14028, dt: 0.058200072, ex_width_mm: 5.115428 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X83.885 Y91.837 E0.12472 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.29100037, dz: 0.0, de: 0.12472, dt: 0.058266703, ex_width_mm: 5.115419 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X82.956 Y91.753 E0.1263 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.083999634, dz: 0.0, de: 0.1263, dt: 0.061933395, ex_width_mm: 5.1157002 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 Y84.764 E0.94628 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -6.9889984, dz: 0.0, de: 0.94628, dt: 0.46593323, ex_width_mm: 5.11553 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X83.885 Y84.845 E0.12626 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: 0.08100128, dz: 0.0, de: 0.12626, dt: 0.061933395, ex_width_mm: 5.115534 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X84.759 Y85.133 E0.12459 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.288002, dz: 0.0, de: 0.12459, dt: 0.058266703, ex_width_mm: 5.1153226 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X85.632 Y85.688 E0.14006 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.5550003, dz: 0.0, de: 0.14006, dt: 0.058200072, ex_width_mm: 5.115363 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X87.379 Y87.314 E0.32314 
; Some(Annotation { label: ExtrusionMove, dx: 1.746994, dy: 1.6259995, dz: 0.0, de: 0.32314, dt: 0.11646627, ex_width_mm: 5.115604 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X88.253 Y87.872 E0.1404 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.55799866, dz: 0.0, de: 0.1404, dt: 0.058266703, ex_width_mm: 5.1156454 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X89.126 Y88.163 E0.12459 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.29100037, dz: 0.0, de: 0.12459, dt: 0.058200072, ex_width_mm: 5.1153526 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X90 Y88.253 E0.11896 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.08999634, dz: 0.0, de: 0.11896, dt: 0.058266703, ex_width_mm: 5.1154623 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X90.874 Y88.167 E0.11891 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.085998535, dz: 0.0, de: 0.11891, dt: 0.058266703, ex_width_mm: 5.1156435 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X91.747 Y87.878 E0.12451 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.28900146, dz: 0.0, de: 0.12451, dt: 0.058200072, ex_width_mm: 5.115571 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X92.621 Y87.324 E0.14011 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.55400085, dz: 0.0, de: 0.14011, dt: 0.058266703, ex_width_mm: 5.115666 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X94.368 Y85.698 E0.32314 
; Some(Annotation { label: ExtrusionMove, dx: 1.746994, dy: -1.6259995, dz: 0.0, de: 0.32314, dt: 0.11646627, ex_width_mm: 5.115604 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X95.241 Y85.14 E0.14028 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.55799866, dz: 0.0, de: 0.14028, dt: 0.058200072, ex_width_mm: 5.115428 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X96.115 Y84.848 E0.12477 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.29199982, dz: 0.0, de: 0.12477, dt: 0.058266703, ex_width_mm: 5.1157136 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X97.044 Y84.764 E0.1263 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.083999634, dz: 0.0, de: 0.1263, dt: 0.061933395, ex_width_mm: 5.1157002 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 Y82.956 E0.24479 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.8079987, dz: 0.0, de: 0.24479, dt: 0.12053325, ex_width_mm: 5.1154227 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
G1 X96.352 E0.09369 
; Some(Annotation { label: ExtrusionMove, dx: -0.69200134, dy: 0.0, dz: 0.0, de: 0.09369, dt: 0.04613342, ex_width_mm: 5.115313 })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 710, end_id: 763, z: 3.5 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X97.044 E-0.24652 
; Some(Annotation { label: Wipe, dx: 0.69200134, dy: 0.0, dz: 0.0, de: -0.24652, dt: 0.0057666777, ex_width_mm: -13.459568 })
; None
G1 Y84.764 E-0.6441 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 1.8079987, dz: 0.0, de: -0.6441, dt: 0.015066656, ex_width_mm: -13.459878 })
; None
G1 X97.018 Y84.766 E-0.00938 
; Some(Annotation { label: Wipe, dx: -0.026000977, dy: 0.0019989014, dz: 0.0, de: -0.00938, dt: 0.0002166748, ex_width_mm: -13.590001 })
; None
G1 Z3.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
G1 Z3.9 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000005, de: 0.0, dt: 0.016666671, ex_width_mm: 0.0 })
; None
G1 X106.7198 Z4.1 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 0.7180023, dy: 12.970001, dz: 0.0, de: 0.0, dt: 0.08646667, ex_width_mm: 0.0 })
; None
G1 Z3.9 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
M73 P24 R8
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
M204 P800
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
M204 P1000
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
M73 P25 R8
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z4.1 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X106.7484 Y94.241 F9000 
; Some(Annotation { label: TravelMove, dx: 1.0199966, dy: -4.2070007, dz: 0.0, de: 0.0, dt: 0.028046671, ex_width_mm: 0.0 })
; None
G1 Z3.9 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 Y91.741 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X96.988 Y91.728 E0.00778 
; Some(Annotation { label: ExtrusionMove, dx: -0.055999756, dy: -0.013000488, dz: 0.0, de: 0.00778, dt: 0.0037333171, ex_width_mm: 5.1130586 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X96.115 Y91.702 E0.11825 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.025993347, dz: 0.0, de: 0.11825, dt: 0.058200072, ex_width_mm: 5.1154027 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X95.241 Y91.871 E0.12053 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.16899872, dz: 0.0, de: 0.12053, dt: 0.058266703, ex_width_mm: 5.1156235 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X94.368 Y92.314 E0.13255 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.4430008, dz: 0.0, de: 0.13255, dt: 0.058200072, ex_width_mm: 5.1156006 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X93.494 Y93.081 E0.15744 
; Some(Annotation { label: ExtrusionMove, dx: -0.8739929, dy: 0.7669983, dz: 0.0, de: 0.15744, dt: 0.058266196, ex_width_mm: 5.115506 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X92.621 Y93.965 E0.16822 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.88399506, dz: 0.0, de: 0.16822, dt: 0.058933, ex_width_mm: 5.115631 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X91.747 Y94.645 E0.14993 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.6800003, dz: 0.0, de: 0.14993, dt: 0.058266703, ex_width_mm: 5.115406 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X90.874 Y95.057 E0.1307 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.41200256, dz: 0.0, de: 0.1307, dt: 0.058200072, ex_width_mm: 5.115431 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X90 Y95.26 E0.12149 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.20300293, dz: 0.0, de: 0.12149, dt: 0.058266703, ex_width_mm: 5.1156993 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X89.126 Y95.286 E0.11839 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.026000977, dz: 0.0, de: 0.11839, dt: 0.058266703, ex_width_mm: 5.115607 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X88.253 Y95.117 E0.12039 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.16900635, dz: 0.0, de: 0.12039, dt: 0.058200072, ex_width_mm: 5.1153116 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X87.379 Y94.675 E0.13261 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.4419937, dz: 0.0, de: 0.13261, dt: 0.058266703, ex_width_mm: 5.115635 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X86.506 Y93.907 E0.15743 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.7680054, dz: 0.0, de: 0.15743, dt: 0.058200072, ex_width_mm: 5.115534 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X85.632 Y93.023 E0.16831 
; Some(Annotation { label: ExtrusionMove, dx: -0.8739929, dy: -0.88399506, dz: 0.0, de: 0.16831, dt: 0.058933, ex_width_mm: 5.115498 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X84.759 Y92.344 E0.14974 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.67900085, dz: 0.0, de: 0.14974, dt: 0.058200072, ex_width_mm: 5.115402 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X83.885 Y91.931 E0.13088 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.413002, dz: 0.0, de: 0.13088, dt: 0.058266703, ex_width_mm: 5.115425 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X82.956 Y91.727 E0.12878 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.20400238, dz: 0.0, de: 0.12878, dt: 0.061933395, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 Y84.753 E0.94425 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -6.973999, dz: 0.0, de: 0.94425, dt: 0.46493328, ex_width_mm: 5.115535 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X83.885 Y84.714 E0.12589 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.039001465, dz: 0.0, de: 0.12589, dt: 0.061933395, ex_width_mm: 5.1153893 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X84.759 Y84.883 E0.12053 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.16900635, dz: 0.0, de: 0.12053, dt: 0.058266703, ex_width_mm: 5.115615 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X85.632 Y85.325 E0.13249 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.4419937, dz: 0.0, de: 0.13249, dt: 0.058200072, ex_width_mm: 5.115664 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X86.506 Y86.093 E0.15753 
; Some(Annotation { label: ExtrusionMove, dx: 0.8739929, dy: 0.7680054, dz: 0.0, de: 0.15753, dt: 0.058266196, ex_width_mm: 5.1155066 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X87.379 Y86.977 E0.16822 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.88399506, dz: 0.0, de: 0.16822, dt: 0.058933, ex_width_mm: 5.115631 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X88.253 Y87.656 E0.14985 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.67900085, dz: 0.0, de: 0.14985, dt: 0.058266703, ex_width_mm: 5.11551 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X89.126 Y88.069 E0.13076 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.413002, dz: 0.0, de: 0.13076, dt: 0.058200072, ex_width_mm: 5.115516 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X90 Y88.272 E0.12149 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.20300293, dz: 0.0, de: 0.12149, dt: 0.058266703, ex_width_mm: 5.1156993 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X90.874 Y88.298 E0.11839 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.025993347, dz: 0.0, de: 0.11839, dt: 0.058266703, ex_width_mm: 5.1156077 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X91.747 Y88.129 E0.12039 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.16899872, dz: 0.0, de: 0.12039, dt: 0.058200072, ex_width_mm: 5.1153193 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X92.621 Y87.686 E0.13267 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.4430008, dz: 0.0, de: 0.13267, dt: 0.058266703, ex_width_mm: 5.115574 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X93.494 Y86.919 E0.15734 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.7669983, dz: 0.0, de: 0.15734, dt: 0.058200072, ex_width_mm: 5.1155353 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X94.368 Y86.035 E0.16831 
; Some(Annotation { label: ExtrusionMove, dx: 0.8739929, dy: -0.88399506, dz: 0.0, de: 0.16831, dt: 0.058933, ex_width_mm: 5.115498 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X95.241 Y85.355 E0.14983 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.6800003, dz: 0.0, de: 0.14983, dt: 0.058200072, ex_width_mm: 5.115638 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X96.115 Y84.943 E0.13082 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.41200256, dz: 0.0, de: 0.13082, dt: 0.058266703, ex_width_mm: 5.1153374 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X97.044 Y84.738 E0.12881 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.20500183, dz: 0.0, de: 0.12881, dt: 0.061933395, ex_width_mm: 5.115579 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 Y82.956 E0.24127 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.7819977, dz: 0.0, de: 0.24127, dt: 0.11879984, ex_width_mm: 5.11543 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
G1 X96.326 E0.09721 
; Some(Annotation { label: ExtrusionMove, dx: -0.7180023, dy: 0.0, dz: 0.0, de: 0.09721, dt: 0.04786682, ex_width_mm: 5.1152987 })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 773, end_id: 831, z: 3.9 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X97.044 E-0.25579 
; Some(Annotation { label: Wipe, dx: 0.7180023, dy: 0.0, dz: 0.0, de: -0.25579, dt: 0.0059833527, ex_width_mm: -13.459955 })
; None
G1 Y84.738 E-0.63484 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 1.7819977, dz: 0.0, de: -0.63484, dt: 0.01484998, ex_width_mm: -13.459939 })
; None
G1 X97.018 Y84.744 E-0.00937 
; Some(Annotation { label: Wipe, dx: -0.026000977, dy: 0.0060043335, dz: 0.0, de: -0.00937, dt: 0.0002166748, ex_width_mm: -13.266432 })
; None
G1 X106.7198 Z4.1 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X106.7198 Z4.3 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
G1 X106.7198 Z4.5 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 0.7180023, dy: 12.991997, dz: 0.0, de: 0.0, dt: 0.08661331, ex_width_mm: 0.0 })
; None
G1 X107.509605 Z4.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X107.509605 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X107.509605 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X90.4904 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X90.4904 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X107.509605 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X107.509605 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
M73 P26 R8
G1 X108.40501 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
M204 P800
; LAYER END
G1 X108.40501 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X89.595 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X89.595 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X108.40501 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X108.40501 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
M204 P1000
G1 X107.5547 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
; LAYER END
G1 X107.5547 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 X107.5547 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X105.6264 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z4.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X106.7484 Y94.193 F9000 
; Some(Annotation { label: TravelMove, dx: 1.0199966, dy: -4.2549973, dz: 0.0, de: 0.0, dt: 0.028366648, ex_width_mm: 0.0 })
; None
M73 P27 R8
G1 X106.7484 Z4.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X106.7484 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
M204 P1500
G1 X106.7484 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X106.7484 Y91.693 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X105.7265 Y91.531 E0.12768 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.16200256, dz: 0.0, de: 0.12768, dt: 0.061933395, ex_width_mm: 5.1154957 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X104.7651 Y91.575 E0.11849 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.04399872, dz: 0.0, de: 0.11849, dt: 0.058266703, ex_width_mm: 5.1157146 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X103.804794 Y91.896 E0.12594 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.32100677, dz: 0.0, de: 0.12594, dt: 0.058200072, ex_width_mm: 5.1156077 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X103.324104 Y92.208 E0.0727 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.31199646, dz: 0.0, de: 0.0727, dt: 0.029133098, ex_width_mm: 5.115549 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X102.84341 Y92.63 E0.08225 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.42199707, dz: 0.0, de: 0.08225, dt: 0.029133098, ex_width_mm: 5.115413 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X101.8831 Y93.624 E0.17912 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.9940033, dz: 0.0, de: 0.17912, dt: 0.06626689, ex_width_mm: 5.1155167 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X100.92171 Y94.455 E0.16329 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.8310013, dz: 0.0, de: 0.16329, dt: 0.058266703, ex_width_mm: 5.1156116 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X99.9614 Y94.998 E0.1392 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.54299927, dz: 0.0, de: 0.1392, dt: 0.058200072, ex_width_mm: 5.1155457 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X99 Y95.316 E0.12592 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.3180008, dz: 0.0, de: 0.12592, dt: 0.058266703, ex_width_mm: 5.115313 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X98.038605 Y95.458 E0.11989 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.14199829, dz: 0.0, de: 0.11989, dt: 0.058266703, ex_width_mm: 5.115636 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X97.0783 Y95.414 E0.11835 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.04399872, dz: 0.0, de: 0.11835, dt: 0.058200072, ex_width_mm: 5.1155047 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X96.1169 Y95.092 E0.12611 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.3219986, dz: 0.0, de: 0.12611, dt: 0.058266703, ex_width_mm: 5.1154714 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X95.63731 Y94.78 E0.07259 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: -0.3120041, dz: 0.0, de: 0.07259, dt: 0.029066468, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X95.1566 Y94.359 E0.08216 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: -0.42099762, dz: 0.0, de: 0.08216, dt: 0.029133607, ex_width_mm: 5.1156125 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X94.195206 Y93.364 E0.17931 
; Some(Annotation { label: ExtrusionMove, dx: -0.8739929, dy: -0.99500275, dz: 0.0, de: 0.17931, dt: 0.06633352, ex_width_mm: 5.1155076 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X93.2349 Y92.533 E0.16319 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.8310013, dz: 0.0, de: 0.16319, dt: 0.058200072, ex_width_mm: 5.1155505 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X92.273506 Y91.99 E0.13931 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.54299927, dz: 0.0, de: 0.13931, dt: 0.058266703, ex_width_mm: 5.1153646 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X91.2516 Y91.664 E0.1333 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.3259964, dz: 0.0, de: 0.1333, dt: 0.061933395, ex_width_mm: 5.115444 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X91.2516 Y84.704 E0.94235 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -6.959999, dz: 0.0, de: 0.94235, dt: 0.46399996, ex_width_mm: 5.11551 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X92.273506 Y84.542 E0.12768 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.16200256, dz: 0.0, de: 0.12768, dt: 0.061933395, ex_width_mm: 5.1154957 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X93.2349 Y84.586 E0.11849 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.04399872, dz: 0.0, de: 0.11849, dt: 0.058266703, ex_width_mm: 5.1157146 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X94.195206 Y84.908 E0.12598 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.3219986, dz: 0.0, de: 0.12598, dt: 0.058200072, ex_width_mm: 5.115349 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X94.6759 Y85.22 E0.0727 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.3120041, dz: 0.0, de: 0.0727, dt: 0.029133098, ex_width_mm: 5.115506 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X95.1566 Y85.641 E0.08216 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.42099762, dz: 0.0, de: 0.08216, dt: 0.029133098, ex_width_mm: 5.115659 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X96.1169 Y86.636 E0.17922 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.99500275, dz: 0.0, de: 0.17922, dt: 0.06633352, ex_width_mm: 5.115468 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X97.0783 Y87.467 E0.16329 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.8310013, dz: 0.0, de: 0.16329, dt: 0.058266703, ex_width_mm: 5.1156116 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X98.038605 Y88.01 E0.1392 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.54299927, dz: 0.0, de: 0.1392, dt: 0.058200072, ex_width_mm: 5.1155457 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X99 Y88.327 E0.12588 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.31700134, dz: 0.0, de: 0.12588, dt: 0.058266703, ex_width_mm: 5.115565 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X99.9614 Y88.469 E0.11989 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.14199829, dz: 0.0, de: 0.11989, dt: 0.058266703, ex_width_mm: 5.115636 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X100.92171 Y88.425 E0.11835 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.04399872, dz: 0.0, de: 0.11835, dt: 0.058200072, ex_width_mm: 5.1155047 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X101.8831 Y88.104 E0.12606 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.32100677, dz: 0.0, de: 0.12606, dt: 0.058266703, ex_width_mm: 5.115323 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X102.3627 Y87.792 E0.07259 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: -0.31199646, dz: 0.0, de: 0.07259, dt: 0.029066468, ex_width_mm: 5.115555 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X102.84341 Y87.37 E0.08225 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: -0.42199707, dz: 0.0, de: 0.08225, dt: 0.029133607, ex_width_mm: 5.115367 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X103.804794 Y86.376 E0.17921 
; Some(Annotation { label: ExtrusionMove, dx: 0.8739929, dy: -0.9940033, dz: 0.0, de: 0.17921, dt: 0.06626689, ex_width_mm: 5.1155553 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X104.7651 Y85.545 E0.16319 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.8310013, dz: 0.0, de: 0.16319, dt: 0.058200072, ex_width_mm: 5.1155505 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X105.7265 Y85.002 E0.13931 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.54299927, dz: 0.0, de: 0.13931, dt: 0.058266703, ex_width_mm: 5.1153646 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X106.7484 Y84.675 E0.13335 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.32699585, dz: 0.0, de: 0.13335, dt: 0.061933395, ex_width_mm: 5.1156406 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X106.7484 Y82.956 E0.23274 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.7190018, dz: 0.0, de: 0.23274, dt: 0.11460012, ex_width_mm: 5.1154118 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
G1 X105.889305 E0.10574 
; Some(Annotation { label: ExtrusionMove, dx: -0.78099823, dy: 0.0, dz: 0.0, de: 0.10574, dt: 0.05206655, ex_width_mm: 5.115348 })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
M204 P1000
G92 E0
G1 X105.889305 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 841, end_id: 902, z: 4.3 })
; LAYER END
G1 X105.889305 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X106.7484 E-0.27823 
; Some(Annotation { label: Wipe, dx: 0.78099823, dy: 0.0, dz: 0.0, de: -0.27823, dt: 0.0065083187, ex_width_mm: -13.459839 })
; None
G1 X106.7484 Y84.675 E-0.61239 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 1.7190018, dz: 0.0, de: -0.61239, dt: 0.014325015, ex_width_mm: -13.45977 })
; None
G1 X106.7209 Y84.684 E-0.00938 
; Some(Annotation { label: Wipe, dx: -0.025001526, dy: 0.008995056, dz: 0.0, de: -0.00938, dt: 0.00020834606, ex_width_mm: -13.337988 })
; None
G1 X106.7209 Z4.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X106.7209 Z4.7 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X106.7209 Z4.9 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 0.71700287, dy: 13.052002, dz: 0.0, de: 0.0, dt: 0.08701335, ex_width_mm: 0.0 })
; None
G1 X107.509605 Z4.7 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X107.509605 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X107.509605 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X90.4904 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X90.4904 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X107.509605 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X107.509605 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
M73 P28 R8
G1 X108.40501 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
M204 P800
; LAYER END
G1 X108.40501 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X89.595 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X89.595 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X108.40501 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X108.40501 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
M204 P1000
G1 X107.5547 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
; LAYER END
G1 X107.5547 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 X107.5547 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X105.6264 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z4.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
G1 X106.7484 Y94.103 F9000 
; Some(Annotation { label: TravelMove, dx: 1.0199966, dy: -4.345001, dz: 0.0, de: 0.0, dt: 0.028966675, ex_width_mm: 0.0 })
; None
G1 X106.7484 Z4.7 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X106.7484 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
M204 P1500
G1 X106.7484 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X106.7484 Y91.603 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X105.7265 Y91.313 E0.13177 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.2899933, dz: 0.0, de: 0.13177, dt: 0.061933395, ex_width_mm: 5.1155896 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X104.7651 Y91.215 E0.11908 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.0980072, dz: 0.0, de: 0.11908, dt: 0.058266703, ex_width_mm: 5.115635 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X103.804794 Y91.374 E0.12014 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.15900421, dz: 0.0, de: 0.12014, dt: 0.058200072, ex_width_mm: 5.115313 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X103.324104 Y91.631 E0.06864 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.25699615, dz: 0.0, de: 0.06864, dt: 0.029133098, ex_width_mm: 5.115472 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X102.84341 Y92.057 E0.08263 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.4260025, dz: 0.0, de: 0.08263, dt: 0.029133098, ex_width_mm: 5.1155596 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X101.8831 Y93.243 E0.19939 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 1.185997, dz: 0.0, de: 0.19939, dt: 0.07906646, ex_width_mm: 5.1154933 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X100.92171 Y94.285 E0.18414 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 1.0420074, dz: 0.0, de: 0.18414, dt: 0.06946716, ex_width_mm: 5.1155047 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
M73 P29 R8
G1 X99.9614 Y94.975 E0.15066 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.6899948, dz: 0.0, de: 0.15066, dt: 0.058200072, ex_width_mm: 5.115455 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X99 Y95.413 E0.13236 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.43800354, dz: 0.0, de: 0.13236, dt: 0.058266703, ex_width_mm: 5.115362 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X98.038605 Y95.675 E0.12354 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.26200104, dz: 0.0, de: 0.12354, dt: 0.058266703, ex_width_mm: 5.1155906 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X97.0783 Y95.774 E0.11896 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.09899902, dz: 0.0, de: 0.11896, dt: 0.058200072, ex_width_mm: 5.11561 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X96.1169 Y95.614 E0.1203 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.16000366, dz: 0.0, de: 0.1203, dt: 0.058266703, ex_width_mm: 5.1154227 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X95.63731 Y95.358 E0.06846 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: -0.2559967, dz: 0.0, de: 0.06846, dt: 0.029066468, ex_width_mm: 5.1158624 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X95.1566 Y94.932 E0.08263 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: -0.4260025, dz: 0.0, de: 0.08263, dt: 0.029133607, ex_width_mm: 5.115514 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X94.195206 Y93.745 E0.19958 
; Some(Annotation { label: ExtrusionMove, dx: -0.8739929, dy: -1.1869965, dz: 0.0, de: 0.19958, dt: 0.0791331, ex_width_mm: 5.11553 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X93.2349 Y92.704 E0.18395 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -1.0410004, dz: 0.0, de: 0.18395, dt: 0.06940003, ex_width_mm: 5.115545 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X92.273506 Y92.013 E0.15085 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.6910019, dz: 0.0, de: 0.15085, dt: 0.058266703, ex_width_mm: 5.1154313 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X91.2516 Y91.559 E0.14 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.45400238, dz: 0.0, de: 0.14, dt: 0.061933395, ex_width_mm: 5.1155515 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X91.2516 Y84.615 E0.94018 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -6.9440002, dz: 0.0, de: 0.94018, dt: 0.46293336, ex_width_mm: 5.1154895 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X92.273506 Y84.325 E0.13177 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.29000092, dz: 0.0, de: 0.13177, dt: 0.061933395, ex_width_mm: 5.1155777 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X93.2349 Y84.226 E0.11909 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.09899902, dz: 0.0, de: 0.11909, dt: 0.058266703, ex_width_mm: 5.1154184 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X94.195206 Y84.386 E0.12017 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.16000366, dz: 0.0, de: 0.12017, dt: 0.058200072, ex_width_mm: 5.1155543 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X94.6759 Y84.642 E0.06857 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.2559967, dz: 0.0, de: 0.06857, dt: 0.029133098, ex_width_mm: 5.11536 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X95.1566 Y85.068 E0.08263 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.4260025, dz: 0.0, de: 0.08263, dt: 0.029133098, ex_width_mm: 5.1155596 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X96.1169 Y86.255 E0.1995 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 1.1869965, dz: 0.0, de: 0.1995, dt: 0.0791331, ex_width_mm: 5.115519 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X97.0783 Y87.296 E0.18404 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 1.0410004, dz: 0.0, de: 0.18404, dt: 0.06940003, ex_width_mm: 5.1156282 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X98.038605 Y87.987 E0.15075 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.6910019, dz: 0.0, de: 0.15075, dt: 0.058200072, ex_width_mm: 5.1156397 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X99 Y88.424 E0.1323 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.4370041, dz: 0.0, de: 0.1323, dt: 0.058266703, ex_width_mm: 5.115385 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X99.9614 Y88.687 E0.12358 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.26299286, dz: 0.0, de: 0.12358, dt: 0.058266703, ex_width_mm: 5.115648 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X100.92171 Y88.785 E0.11894 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.0980072, dz: 0.0, de: 0.11894, dt: 0.058200072, ex_width_mm: 5.1153975 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X101.8831 Y88.626 E0.12028 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.15900421, dz: 0.0, de: 0.12028, dt: 0.058266703, ex_width_mm: 5.115605 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X102.3627 Y88.369 E0.06852 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: -0.25699615, dz: 0.0, de: 0.06852, dt: 0.029066468, ex_width_mm: 5.1152186 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X102.84341 Y87.943 E0.08263 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: -0.4260025, dz: 0.0, de: 0.08263, dt: 0.029133607, ex_width_mm: 5.115514 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X103.804794 Y86.757 E0.19947 
; Some(Annotation { label: ExtrusionMove, dx: 0.8739929, dy: -1.185997, dz: 0.0, de: 0.19947, dt: 0.07906646, ex_width_mm: 5.115503 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X104.7651 Y85.715 E0.18405 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -1.0420074, dz: 0.0, de: 0.18405, dt: 0.06946716, ex_width_mm: 5.1154194 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
M73 P29 R7
G1 X105.7265 Y85.025 E0.15077 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.6899948, dz: 0.0, de: 0.15077, dt: 0.058266703, ex_width_mm: 5.115585 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X106.7484 Y84.571 E0.14 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.45400238, dz: 0.0, de: 0.14, dt: 0.061933395, ex_width_mm: 5.1155515 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X106.7484 Y82.956 E0.21866 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.6149979, dz: 0.0, de: 0.21866, dt: 0.10766652, ex_width_mm: 5.115444 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
G1 X105.773796 E0.11996 
; Some(Annotation { label: ExtrusionMove, dx: -0.8860016, dy: 0.0, dz: 0.0, de: 0.11996, dt: 0.059066776, ex_width_mm: 5.1154976 })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
M204 P1000
G92 E0
G1 X105.773796 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 912, end_id: 973, z: 4.7 })
; LAYER END
G1 X105.773796 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X106.7484 E-0.31564 
; Some(Annotation { label: Wipe, dx: 0.8860016, dy: 0.0, dz: 0.0, de: -0.31564, dt: 0.007383347, ex_width_mm: -13.45995 })
; None
G1 X106.7484 Y84.571 E-0.57534 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 1.6149979, dz: 0.0, de: -0.57534, dt: 0.013458315, ex_width_mm: -13.459798 })
; None
G1 X106.72311 Y84.582 E-0.00902 
; Some(Annotation { label: Wipe, dx: -0.022994995, dy: 0.011001587, dz: 0.0, de: -0.00902, dt: 0.00019162496, ex_width_mm: -13.369064 })
; None
G1 X106.72311 Z4.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
G1 Z5.1 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 Z5.3 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
G1 X97.736 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 0.71499634, dy: 13.153999, dz: 0.0, de: 0.0, dt: 0.087693326, ex_width_mm: 0.0 })
; None
G1 Z5.1 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
M204 P800
M73 P30 R7
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
M204 P1000
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 Z5.3 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
G1 X97.044 Y93.968 F9000 
; Some(Annotation { label: TravelMove, dx: 1.0199966, dy: -4.4799957, dz: 0.0, de: 0.0, dt: 0.029866638, ex_width_mm: 0.0 })
; None
G1 Z5.1 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 Y91.468 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X96.115 Y91.041 E0.13843 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.42700195, dz: 0.0, de: 0.13843, dt: 0.061933395, ex_width_mm: 5.11541 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X95.241 Y90.767 E0.12401 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.27400208, dz: 0.0, de: 0.12401, dt: 0.058266703, ex_width_mm: 5.1153283 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X94.368 Y90.642 E0.11941 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.125, dz: 0.0, de: 0.11941, dt: 0.058200072, ex_width_mm: 5.1156983 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X93.931 Y90.728 E0.0603 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.085998535, dz: 0.0, de: 0.0603, dt: 0.029133098, ex_width_mm: 5.1153383 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X93.494 Y91.099 E0.07761 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.3710022, dz: 0.0, de: 0.07761, dt: 0.029133098, ex_width_mm: 5.1152186 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X93.057 Y91.859 E0.1187 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: 0.76000214, dz: 0.0, de: 0.1187, dt: 0.05066681, ex_width_mm: 5.115561 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X92.621 Y92.74 E0.13309 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: 0.8809967, dz: 0.0, de: 0.13309, dt: 0.058733113, ex_width_mm: 5.115486 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X92.184 Y93.512 E0.12011 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: 0.7720032, dz: 0.0, de: 0.12011, dt: 0.05146688, ex_width_mm: 5.115503 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X91.747 Y94.129 E0.10237 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.61699677, dz: 0.0, de: 0.10237, dt: 0.041133117, ex_width_mm: 5.1155596 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X91.31 Y94.612 E0.08819 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: 0.4830017, dz: 0.0, de: 0.08819, dt: 0.032200113, ex_width_mm: 5.1154933 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X90.874 Y94.995 E0.07857 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: 0.38300323, dz: 0.0, de: 0.07857, dt: 0.029066468, ex_width_mm: 5.1152444 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X90 Y95.556 E0.14062 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.560997, dz: 0.0, de: 0.14062, dt: 0.058266703, ex_width_mm: 5.115686 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X89.126 Y95.947 E0.12964 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.39099884, dz: 0.0, de: 0.12964, dt: 0.058266703, ex_width_mm: 5.1156144 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X88.253 Y96.221 E0.12389 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.27400208, dz: 0.0, de: 0.12389, dt: 0.058200072, ex_width_mm: 5.115705 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X87.379 Y96.346 E0.11954 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.125, dz: 0.0, de: 0.11954, dt: 0.058266703, ex_width_mm: 5.115529 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X86.943 Y96.261 E0.06014 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: -0.084999084, dz: 0.0, de: 0.06014, dt: 0.029066468, ex_width_mm: 5.1152368 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X86.506 Y95.889 E0.0777 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: -0.37200165, dz: 0.0, de: 0.0777, dt: 0.029133607, ex_width_mm: 5.1153216 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X86.069 Y95.129 E0.1187 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: -0.76000214, dz: 0.0, de: 0.1187, dt: 0.05066681, ex_width_mm: 5.1155834 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X85.632 Y94.248 E0.13315 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: -0.8809967, dz: 0.0, de: 0.13315, dt: 0.058733113, ex_width_mm: 5.1154833 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X85.195 Y93.476 E0.12011 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: -0.7720032, dz: 0.0, de: 0.12011, dt: 0.05146688, ex_width_mm: 5.115503 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
M73 P31 R7
G1 X84.759 Y92.859 E0.10229 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: -0.61699677, dz: 0.0, de: 0.10229, dt: 0.041133117, ex_width_mm: 5.115467 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X84.322 Y92.376 E0.08819 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: -0.4830017, dz: 0.0, de: 0.08819, dt: 0.032200113, ex_width_mm: 5.1154933 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X83.885 Y91.994 E0.07859 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: -0.38199615, dz: 0.0, de: 0.07859, dt: 0.029133098, ex_width_mm: 5.115771 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X82.956 Y91.407 E0.14879 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.5870056, dz: 0.0, de: 0.14879, dt: 0.061933395, ex_width_mm: 5.115579 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 Y84.479 E0.93802 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -6.9280014, dz: 0.0, de: 0.93802, dt: 0.46186677, ex_width_mm: 5.1155233 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X83.885 Y84.053 E0.13838 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.42599487, dz: 0.0, de: 0.13838, dt: 0.061933395, ex_width_mm: 5.115665 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X84.759 Y83.779 E0.12401 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.27400208, dz: 0.0, de: 0.12401, dt: 0.058266703, ex_width_mm: 5.1153283 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X85.632 Y83.654 E0.11941 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.125, dz: 0.0, de: 0.11941, dt: 0.058200072, ex_width_mm: 5.1156983 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X86.069 Y83.739 E0.06028 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.084999084, dz: 0.0, de: 0.06028, dt: 0.029133098, ex_width_mm: 5.1158457 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X86.506 Y84.111 E0.0777 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.37200165, dz: 0.0, de: 0.0777, dt: 0.029133098, ex_width_mm: 5.1153736 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X86.943 Y84.871 E0.1187 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: 0.76000214, dz: 0.0, de: 0.1187, dt: 0.05066681, ex_width_mm: 5.115561 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X87.379 Y85.752 E0.13309 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: 0.8809967, dz: 0.0, de: 0.13309, dt: 0.058733113, ex_width_mm: 5.115486 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X87.816 Y86.524 E0.12011 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: 0.7720032, dz: 0.0, de: 0.12011, dt: 0.05146688, ex_width_mm: 5.115503 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X88.253 Y87.141 E0.10237 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.61699677, dz: 0.0, de: 0.10237, dt: 0.041133117, ex_width_mm: 5.1155596 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X88.69 Y87.624 E0.08819 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: 0.4830017, dz: 0.0, de: 0.08819, dt: 0.032200113, ex_width_mm: 5.1154933 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X89.126 Y88.006 E0.07848 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: 0.38199615, dz: 0.0, de: 0.07848, dt: 0.029066468, ex_width_mm: 5.115239 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X90 Y88.568 E0.14069 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.5620041, dz: 0.0, de: 0.14069, dt: 0.058266703, ex_width_mm: 5.1155515 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X90.874 Y88.959 E0.12964 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.39099884, dz: 0.0, de: 0.12964, dt: 0.058266703, ex_width_mm: 5.1156144 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X91.747 Y89.233 E0.12389 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.27400208, dz: 0.0, de: 0.12389, dt: 0.058200072, ex_width_mm: 5.115705 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X92.621 Y89.358 E0.11954 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.125, dz: 0.0, de: 0.11954, dt: 0.058266703, ex_width_mm: 5.115529 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X93.057 Y89.272 E0.06017 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: -0.085998535, dz: 0.0, de: 0.06017, dt: 0.029066468, ex_width_mm: 5.1155734 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X93.494 Y88.901 E0.07761 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: -0.3710022, dz: 0.0, de: 0.07761, dt: 0.029133607, ex_width_mm: 5.1151667 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X93.931 Y88.141 E0.1187 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: -0.76000214, dz: 0.0, de: 0.1187, dt: 0.05066681, ex_width_mm: 5.1155834 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X94.368 Y87.26 E0.13315 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: -0.8809967, dz: 0.0, de: 0.13315, dt: 0.058733113, ex_width_mm: 5.1154833 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X94.805 Y86.488 E0.12011 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: -0.7720032, dz: 0.0, de: 0.12011, dt: 0.05146688, ex_width_mm: 5.115503 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X95.241 Y85.871 E0.10229 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: -0.61699677, dz: 0.0, de: 0.10229, dt: 0.041133117, ex_width_mm: 5.115467 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X95.678 Y85.388 E0.08819 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: -0.4830017, dz: 0.0, de: 0.08819, dt: 0.032200113, ex_width_mm: 5.1154933 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X96.115 Y85.005 E0.07868 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: -0.38300323, dz: 0.0, de: 0.07868, dt: 0.029133098, ex_width_mm: 5.1157837 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X97.044 Y84.419 E0.14872 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.58599854, dz: 0.0, de: 0.14872, dt: 0.061933395, ex_width_mm: 5.1156745 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 Y82.956 E0.19808 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.4629974, dz: 0.0, de: 0.19808, dt: 0.09753316, ex_width_mm: 5.11544 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
G1 X96.007 E0.1404 
; Some(Annotation { label: ExtrusionMove, dx: -1.0369949, dy: 0.0, dz: 0.0, de: 0.1404, dt: 0.06913299, ex_width_mm: 5.115362 })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 983, end_id: 1056, z: 5.1 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X97.044 E-0.36943 
; Some(Annotation { label: Wipe, dx: 1.0369949, dy: 0.0, dz: 0.0, de: -0.36943, dt: 0.008641624, ex_width_mm: -13.4598875 })
; None
G1 Y84.419 E-0.52119 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 1.4629974, dz: 0.0, de: -0.52119, dt: 0.012191645, ex_width_mm: -13.459794 })
; None
G1 X97.022 Y84.433 E-0.00938 
; Some(Annotation { label: Wipe, dx: -0.021995544, dy: 0.013999939, dz: 0.0, de: -0.00938, dt: 0.0001832962, ex_width_mm: -13.592441 })
; None
G1 Z5.3 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
G1 Z5.5 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 Z5.7 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X97.736 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 0.7139969, dy: 13.303001, dz: 0.0, de: 0.0, dt: 0.088686675, ex_width_mm: 0.0 })
; None
G1 Z5.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
M204 P800
M73 P32 R7
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
M204 P1000
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 Z5.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X97.044 Y93.775 F9000 
; Some(Annotation { label: TravelMove, dx: 1.0199966, dy: -4.6729965, dz: 0.0, de: 0.0, dt: 0.03115331, ex_width_mm: 0.0 })
; None
G1 Z5.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 Y91.275 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X96.405 Y90.874 E0.10214 
; Some(Annotation { label: ExtrusionMove, dx: -0.63899994, dy: -0.40100098, dz: 0.0, de: 0.10214, dt: 0.042599995, ex_width_mm: 5.115391 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X95.635 Y90.437 E0.11987 
; Some(Annotation { label: ExtrusionMove, dx: -0.76999664, dy: -0.4370041, dz: 0.0, de: 0.11987, dt: 0.051333107, ex_width_mm: 5.1153474 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X94.959 Y90 E0.10899 
; Some(Annotation { label: ExtrusionMove, dx: -0.6760025, dy: -0.43699646, dz: 0.0, de: 0.10899, dt: 0.045066833, ex_width_mm: 5.1156807 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X94.551 Y89.563 E0.08095 
; Some(Annotation { label: ExtrusionMove, dx: -0.40799713, dy: -0.43699646, dz: 0.0, de: 0.08095, dt: 0.029133098, ex_width_mm: 5.115743 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X94.385 Y89.126 E0.06329 
; Some(Annotation { label: ExtrusionMove, dx: -0.16600037, dy: -0.4370041, dz: 0.0, de: 0.06329, dt: 0.029133607, ex_width_mm: 5.115249 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X94.404 Y88.253 E0.11823 
; Some(Annotation { label: ExtrusionMove, dx: 0.018997192, dy: -0.8730011, dz: 0.0, de: 0.11823, dt: 0.058200072, ex_width_mm: 5.1155934 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X94.622 Y87.379 E0.12196 
; Some(Annotation { label: ExtrusionMove, dx: 0.21800232, dy: -0.87400055, dz: 0.0, de: 0.12196, dt: 0.058266703, ex_width_mm: 5.115467 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X94.974 Y86.506 E0.12745 
; Some(Annotation { label: ExtrusionMove, dx: 0.35199738, dy: -0.8730011, dz: 0.0, de: 0.12745, dt: 0.058200072, ex_width_mm: 5.1156497 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X95.499 Y85.632 E0.13804 
; Some(Annotation { label: ExtrusionMove, dx: 0.5250015, dy: -0.8739929, dz: 0.0, de: 0.13804, dt: 0.058266196, ex_width_mm: 5.115413 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X95.858 Y85.195 E0.07657 
; Some(Annotation { label: ExtrusionMove, dx: 0.35900116, dy: -0.4370041, dz: 0.0, de: 0.07657, dt: 0.029133607, ex_width_mm: 5.1152678 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X96.309 Y84.759 E0.08493 
; Some(Annotation { label: ExtrusionMove, dx: 0.4509964, dy: -0.435997, dz: 0.0, de: 0.08493, dt: 0.030066429, ex_width_mm: 5.1154 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X96.877 Y84.322 E0.09703 
; Some(Annotation { label: ExtrusionMove, dx: 0.5680008, dy: -0.4370041, dz: 0.0, de: 0.09703, dt: 0.03786672, ex_width_mm: 5.115411 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X97.044 Y84.217 E0.02671 
; Some(Annotation { label: ExtrusionMove, dx: 0.16699982, dy: -0.10499573, dz: 0.0, de: 0.02671, dt: 0.011133322, ex_width_mm: 5.115784 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 Y82.956 E0.17073 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.2610016, dz: 0.0, de: 0.17073, dt: 0.08406677, ex_width_mm: 5.115406 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X95.805 E0.16775 
; Some(Annotation { label: ExtrusionMove, dx: -1.2389984, dy: 0.0, dz: 0.0, de: 0.16775, dt: 0.08259989, ex_width_mm: 5.115378 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
M204 P1000
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X97.044 E-0.44139 
; Some(Annotation { label: Wipe, dx: 1.2389984, dy: 0.0, dz: 0.0, de: -0.44139, dt: 0.010324987, ex_width_mm: -13.45977 })
; None
G1 Y84.217 E-0.44923 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 1.2610016, dz: 0.0, de: -0.44923, dt: 0.010508346, ex_width_mm: -13.459813 })
; None
G1 X97.022 Y84.231 E-0.00938 
; Some(Annotation { label: Wipe, dx: -0.021995544, dy: 0.013999939, dz: 0.0, de: -0.00938, dt: 0.0001832962, ex_width_mm: -13.592441 })
; None
G1 Z5.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X82.956 Y86.787 F9000 
; Some(Annotation { label: TravelMove, dx: -14.066002, dy: 2.5559998, dz: 0.0, de: 0.0, dt: 0.09377334, ex_width_mm: 0.0 })
; None
G1 Z5.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 Y84.287 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X83.595 Y83.885 E0.10221 
; Some(Annotation { label: ExtrusionMove, dx: 0.63899994, dy: -0.40200043, dz: 0.0, de: 0.10221, dt: 0.042599995, ex_width_mm: 5.1152906 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
M73 P33 R7
G1 X84.365 Y83.448 E0.11987 
; Some(Annotation { label: ExtrusionMove, dx: 0.76999664, dy: -0.4370041, dz: 0.0, de: 0.11987, dt: 0.051333107, ex_width_mm: 5.1153474 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X85.041 Y83.012 E0.10891 
; Some(Annotation { label: ExtrusionMove, dx: 0.6760025, dy: -0.435997, dz: 0.0, de: 0.10891, dt: 0.045066833, ex_width_mm: 5.1153708 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X85.092 Y82.956 E0.01026 
; Some(Annotation { label: ExtrusionMove, dx: 0.051002502, dy: -0.055999756, dz: 0.0, de: 0.01026, dt: 0.0037333171, ex_width_mm: 5.117787 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X88.057 E0.40145 
; Some(Annotation { label: ExtrusionMove, dx: 2.9649963, dy: 0.0, dz: 0.0, de: 0.40145, dt: 0.19766642, ex_width_mm: 5.11556 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X87.971 Y83.012 E0.0139 
; Some(Annotation { label: ExtrusionMove, dx: -0.085998535, dy: 0.055999756, dz: 0.0, de: 0.0139, dt: 0.0057332357, ex_width_mm: 5.1174197 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X87.562 Y83.448 E0.08094 
; Some(Annotation { label: ExtrusionMove, dx: -0.4090042, dy: 0.435997, dz: 0.0, de: 0.08094, dt: 0.029066468, ex_width_mm: 5.115467 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X87.397 Y83.885 E0.06324 
; Some(Annotation { label: ExtrusionMove, dx: -0.16499329, dy: 0.4370041, dz: 0.0, de: 0.06324, dt: 0.029133607, ex_width_mm: 5.115111 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X87.415 Y84.759 E0.11836 
; Some(Annotation { label: ExtrusionMove, dx: 0.017997742, dy: 0.87400055, dz: 0.0, de: 0.11836, dt: 0.058266703, ex_width_mm: 5.115488 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X87.633 Y85.632 E0.12183 
; Some(Annotation { label: ExtrusionMove, dx: 0.21800232, dy: 0.8730011, dz: 0.0, de: 0.12183, dt: 0.058200072, ex_width_mm: 5.1155214 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X87.985 Y86.506 E0.12757 
; Some(Annotation { label: ExtrusionMove, dx: 0.35199738, dy: 0.8739929, dz: 0.0, de: 0.12757, dt: 0.058266196, ex_width_mm: 5.115467 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X88.51 Y87.379 E0.13793 
; Some(Annotation { label: ExtrusionMove, dx: 0.5250015, dy: 0.8730011, dz: 0.0, de: 0.13793, dt: 0.058200072, ex_width_mm: 5.1156015 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X88.869 Y87.816 E0.07657 
; Some(Annotation { label: ExtrusionMove, dx: 0.35900116, dy: 0.4370041, dz: 0.0, de: 0.07657, dt: 0.029133607, ex_width_mm: 5.1152678 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X89.321 Y88.253 E0.08512 
; Some(Annotation { label: ExtrusionMove, dx: 0.45199585, dy: 0.43699646, dz: 0.0, de: 0.08512, dt: 0.030133057, ex_width_mm: 5.1153183 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X89.889 Y88.69 E0.09703 
; Some(Annotation { label: ExtrusionMove, dx: 0.5680008, dy: 0.4370041, dz: 0.0, de: 0.09703, dt: 0.03786672, ex_width_mm: 5.115411 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X90.584 Y89.126 E0.11108 
; Some(Annotation { label: ExtrusionMove, dx: 0.6949997, dy: 0.435997, dz: 0.0, de: 0.11108, dt: 0.046333313, ex_width_mm: 5.11536 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X91.353 Y89.563 E0.11976 
; Some(Annotation { label: ExtrusionMove, dx: 0.7689972, dy: 0.4370041, dz: 0.0, de: 0.11976, dt: 0.05126648, ex_width_mm: 5.1156745 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X92.029 Y90 E0.10899 
; Some(Annotation { label: ExtrusionMove, dx: 0.6760025, dy: 0.43699646, dz: 0.0, de: 0.10899, dt: 0.045066833, ex_width_mm: 5.1156807 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X92.438 Y90.437 E0.08104 
; Some(Annotation { label: ExtrusionMove, dx: 0.4090042, dy: 0.43699646, dz: 0.0, de: 0.08104, dt: 0.029133098, ex_width_mm: 5.1155467 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X92.603 Y90.874 E0.06324 
; Some(Annotation { label: ExtrusionMove, dx: 0.16499329, dy: 0.4370041, dz: 0.0, de: 0.06324, dt: 0.029133607, ex_width_mm: 5.115111 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X92.585 Y91.747 E0.11823 
; Some(Annotation { label: ExtrusionMove, dx: -0.017997742, dy: 0.8730011, dz: 0.0, de: 0.11823, dt: 0.058200072, ex_width_mm: 5.1157174 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X92.367 Y92.621 E0.12196 
; Some(Annotation { label: ExtrusionMove, dx: -0.21800232, dy: 0.87400055, dz: 0.0, de: 0.12196, dt: 0.058266703, ex_width_mm: 5.115467 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X92.015 Y93.494 E0.12745 
; Some(Annotation { label: ExtrusionMove, dx: -0.35199738, dy: 0.8730011, dz: 0.0, de: 0.12745, dt: 0.058200072, ex_width_mm: 5.1156497 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X91.49 Y94.368 E0.13804 
; Some(Annotation { label: ExtrusionMove, dx: -0.5250015, dy: 0.8739929, dz: 0.0, de: 0.13804, dt: 0.058266196, ex_width_mm: 5.115413 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X91.131 Y94.805 E0.07657 
; Some(Annotation { label: ExtrusionMove, dx: -0.35900116, dy: 0.4370041, dz: 0.0, de: 0.07657, dt: 0.029133607, ex_width_mm: 5.1152678 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X90.679 Y95.241 E0.08503 
; Some(Annotation { label: ExtrusionMove, dx: -0.45199585, dy: 0.435997, dz: 0.0, de: 0.08503, dt: 0.030133057, ex_width_mm: 5.115559 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X90.111 Y95.678 E0.09703 
; Some(Annotation { label: ExtrusionMove, dx: -0.5680008, dy: 0.4370041, dz: 0.0, de: 0.09703, dt: 0.03786672, ex_width_mm: 5.115411 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X89.416 Y96.115 E0.11116 
; Some(Annotation { label: ExtrusionMove, dx: -0.6949997, dy: 0.43699646, dz: 0.0, de: 0.11116, dt: 0.046333313, ex_width_mm: 5.1157293 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X88.647 Y96.552 E0.11976 
; Some(Annotation { label: ExtrusionMove, dx: -0.7689972, dy: 0.4370041, dz: 0.0, de: 0.11976, dt: 0.05126648, ex_width_mm: 5.1156745 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X87.971 Y96.988 E0.10891 
; Some(Annotation { label: ExtrusionMove, dx: -0.6760025, dy: 0.435997, dz: 0.0, de: 0.10891, dt: 0.045066833, ex_width_mm: 5.1153708 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X87.919 Y97.044 E0.01035 
; Some(Annotation { label: ExtrusionMove, dx: -0.052001953, dy: 0.055999756, dz: 0.0, de: 0.01035, dt: 0.0037333171, ex_width_mm: 5.1169753 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X84.955 E0.40131 
; Some(Annotation { label: ExtrusionMove, dx: -2.963997, dy: 0.0, dz: 0.0, de: 0.40131, dt: 0.1975998, ex_width_mm: 5.1155005 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X85.041 Y96.988 E0.0139 
; Some(Annotation { label: ExtrusionMove, dx: 0.085998535, dy: -0.055999756, dz: 0.0, de: 0.0139, dt: 0.0057332357, ex_width_mm: 5.1174197 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X85.449 Y96.552 E0.08085 
; Some(Annotation { label: ExtrusionMove, dx: 0.40799713, dy: -0.435997, dz: 0.0, de: 0.08085, dt: 0.029066468, ex_width_mm: 5.115671 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X85.615 Y96.115 E0.06329 
; Some(Annotation { label: ExtrusionMove, dx: 0.16600037, dy: -0.4370041, dz: 0.0, de: 0.06329, dt: 0.029133607, ex_width_mm: 5.115249 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X85.596 Y95.241 E0.11836 
; Some(Annotation { label: ExtrusionMove, dx: -0.018997192, dy: -0.87400055, dz: 0.0, de: 0.11836, dt: 0.058266703, ex_width_mm: 5.115364 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X85.378 Y94.368 E0.12183 
; Some(Annotation { label: ExtrusionMove, dx: -0.21800232, dy: -0.8730011, dz: 0.0, de: 0.12183, dt: 0.058200072, ex_width_mm: 5.1155214 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X85.026 Y93.494 E0.12757 
; Some(Annotation { label: ExtrusionMove, dx: -0.35199738, dy: -0.8739929, dz: 0.0, de: 0.12757, dt: 0.058266196, ex_width_mm: 5.115467 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X84.501 Y92.621 E0.13793 
; Some(Annotation { label: ExtrusionMove, dx: -0.5250015, dy: -0.8730011, dz: 0.0, de: 0.13793, dt: 0.058200072, ex_width_mm: 5.1156015 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X84.142 Y92.184 E0.07657 
; Some(Annotation { label: ExtrusionMove, dx: -0.35900116, dy: -0.4370041, dz: 0.0, de: 0.07657, dt: 0.029133607, ex_width_mm: 5.1152678 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X83.691 Y91.747 E0.08503 
; Some(Annotation { label: ExtrusionMove, dx: -0.4509964, dy: -0.43699646, dz: 0.0, de: 0.08503, dt: 0.030066429, ex_width_mm: 5.115753 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X83.123 Y91.31 E0.09703 
; Some(Annotation { label: ExtrusionMove, dx: -0.5680008, dy: -0.4370041, dz: 0.0, de: 0.09703, dt: 0.03786672, ex_width_mm: 5.115411 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 X82.956 Y91.206 E0.02664 
; Some(Annotation { label: ExtrusionMove, dx: -0.16699982, dy: -0.10399628, dz: 0.0, de: 0.02664, dt: 0.011133322, ex_width_mm: 5.1161265 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
G1 Y93.706 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 1066, end_id: 1158, z: 5.5 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 Y91.206 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: -2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X82.978 Y91.22 E-0.00937 
; Some(Annotation { label: Wipe, dx: 0.021995544, dy: 0.013999939, dz: 0.0, de: -0.00937, dt: 0.0001832962, ex_width_mm: -13.57795 })
; None
G1 Z5.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 Z5.9 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
G1 X91.275795 Z6.1 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.758003, dy: 6.515999, dz: 0.0, de: 0.0, dt: 0.09838669, ex_width_mm: 0.0 })
; None
G1 Z5.9 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
M204 P800
M73 P34 R7
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
M204 P1000
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z6.1 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X106.7484 Y93.542 F9000 
; Some(Annotation { label: TravelMove, dx: 1.0199966, dy: -4.905998, dz: 0.0, de: 0.0, dt: 0.032706656, ex_width_mm: 0.0 })
; None
G1 Z5.9 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 Y91.042 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X96.857 Y90.874 E0.03404 
; Some(Annotation { label: ExtrusionMove, dx: -0.18699646, dy: -0.16799927, dz: 0.0, de: 0.03404, dt: 0.012466431, ex_width_mm: 5.116187 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X95.739 Y90 E0.19214 
; Some(Annotation { label: ExtrusionMove, dx: -1.1180038, dy: -0.87400055, dz: 0.0, de: 0.19214, dt: 0.07453359, ex_width_mm: 5.1155753 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X95.314 Y89.563 E0.08253 
; Some(Annotation { label: ExtrusionMove, dx: -0.42499542, dy: -0.43699646, dz: 0.0, de: 0.08253, dt: 0.029133098, ex_width_mm: 5.115257 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X95.037 Y89.126 E0.07005 
; Some(Annotation { label: ExtrusionMove, dx: -0.27700043, dy: -0.4370041, dz: 0.0, de: 0.07005, dt: 0.029133607, ex_width_mm: 5.115268 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X94.823 Y88.253 E0.1217 
; Some(Annotation { label: ExtrusionMove, dx: -0.21400452, dy: -0.8730011, dz: 0.0, de: 0.1217, dt: 0.058200072, ex_width_mm: 5.1155214 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X94.876 Y87.379 E0.11855 
; Some(Annotation { label: ExtrusionMove, dx: 0.053001404, dy: -0.87400055, dz: 0.0, de: 0.11855, dt: 0.058266703, ex_width_mm: 5.1153884 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X95.103 Y86.506 E0.12213 
; Some(Annotation { label: ExtrusionMove, dx: 0.22699738, dy: -0.8730011, dz: 0.0, de: 0.12213, dt: 0.058200072, ex_width_mm: 5.1154885 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X95.505 Y85.632 E0.13025 
; Some(Annotation { label: ExtrusionMove, dx: 0.40200043, dy: -0.8739929, dz: 0.0, de: 0.13025, dt: 0.058266196, ex_width_mm: 5.11544 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X96.149 Y84.759 E0.14688 
; Some(Annotation { label: ExtrusionMove, dx: 0.6440048, dy: -0.8730011, dz: 0.0, de: 0.14688, dt: 0.058200072, ex_width_mm: 5.1154494 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X97.044 Y83.954 E0.16298 
; Some(Annotation { label: ExtrusionMove, dx: 0.89499664, dy: -0.8050003, dz: 0.0, de: 0.16298, dt: 0.059666444, ex_width_mm: 5.1153975 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 Y82.956 E0.13512 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -0.9980011, dz: 0.0, de: 0.13512, dt: 0.06653341, ex_width_mm: 5.1153407 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X95.541 E0.2035 
; Some(Annotation { label: ExtrusionMove, dx: -1.5029984, dy: 0.0, dz: 0.0, de: 0.2035, dt: 0.10019989, ex_width_mm: 5.1155443 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
M204 P1000
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X97.044 E-0.53544 
; Some(Annotation { label: Wipe, dx: 1.5029984, dy: 0.0, dz: 0.0, de: -0.53544, dt: 0.012524987, ex_width_mm: -13.459788 })
; None
G1 Y83.954 E-0.35554 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 0.9980011, dz: 0.0, de: -0.35554, dt: 0.008316676, ex_width_mm: -13.459949 })
; None
G1 X97.025 Y83.971 E-0.00902 
; Some(Annotation { label: Wipe, dx: -0.018997192, dy: 0.016998291, dz: 0.0, de: -0.00902, dt: 0.00015830994, ex_width_mm: -13.368751 })
; None
G1 X106.7275 Z6.1 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.2516 Y86.553 F9000 
; Some(Annotation { label: TravelMove, dx: -14.069, dy: 2.5820007, dz: 0.0, de: 0.0, dt: 0.09379333, ex_width_mm: 0.0 })
; None
G1 Z5.9 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
M73 P35 R7
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 Y84.053 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X83.143 Y83.885 E0.03404 
; Some(Annotation { label: ExtrusionMove, dx: 0.18699646, dy: -0.16799927, dz: 0.0, de: 0.03404, dt: 0.012466431, ex_width_mm: 5.116187 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X84.315 Y82.956 E0.20249 
; Some(Annotation { label: ExtrusionMove, dx: 1.1720047, dy: -0.92900085, dz: 0.0, de: 0.20249, dt: 0.07813365, ex_width_mm: 5.1155424 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X88.822 E0.61023 
; Some(Annotation { label: ExtrusionMove, dx: 4.506996, dy: 0.0, dz: 0.0, de: 0.61023, dt: 0.30046642, ex_width_mm: 5.1155496 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X88.326 Y83.448 E0.09459 
; Some(Annotation { label: ExtrusionMove, dx: -0.4960022, dy: 0.49199677, dz: 0.0, de: 0.09459, dt: 0.033066813, ex_width_mm: 5.115476 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X88.048 Y83.885 E0.07013 
; Some(Annotation { label: ExtrusionMove, dx: -0.27799988, dy: 0.4370041, dz: 0.0, de: 0.07013, dt: 0.029133607, ex_width_mm: 5.115812 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X87.834 Y84.759 E0.12183 
; Some(Annotation { label: ExtrusionMove, dx: -0.21399689, dy: 0.87400055, dz: 0.0, de: 0.12183, dt: 0.058266703, ex_width_mm: 5.1154714 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X87.888 Y85.632 E0.11843 
; Some(Annotation { label: ExtrusionMove, dx: 0.054000854, dy: 0.8730011, dz: 0.0, de: 0.11843, dt: 0.058200072, ex_width_mm: 5.1156826 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X88.114 Y86.506 E0.12223 
; Some(Annotation { label: ExtrusionMove, dx: 0.22599792, dy: 0.8739929, dz: 0.0, de: 0.12223, dt: 0.058266196, ex_width_mm: 5.1156554 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X88.516 Y87.379 E0.13013 
; Some(Annotation { label: ExtrusionMove, dx: 0.40200043, dy: 0.8730011, dz: 0.0, de: 0.13013, dt: 0.058200072, ex_width_mm: 5.115517 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X89.161 Y88.253 E0.14707 
; Some(Annotation { label: ExtrusionMove, dx: 0.6450043, dy: 0.87400055, dz: 0.0, de: 0.14707, dt: 0.058266703, ex_width_mm: 5.1154757 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X90.132 Y89.126 E0.17679 
; Some(Annotation { label: ExtrusionMove, dx: 0.9710007, dy: 0.8730011, dz: 0.0, de: 0.17679, dt: 0.06473338, ex_width_mm: 5.115462 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X91.249 Y90 E0.19203 
; Some(Annotation { label: ExtrusionMove, dx: 1.1169968, dy: 0.87400055, dz: 0.0, de: 0.19203, dt: 0.07446645, ex_width_mm: 5.1155066 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X91.674 Y90.437 E0.08253 
; Some(Annotation { label: ExtrusionMove, dx: 0.42500305, dy: 0.43699646, dz: 0.0, de: 0.08253, dt: 0.029133098, ex_width_mm: 5.115213 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X91.952 Y90.874 E0.07013 
; Some(Annotation { label: ExtrusionMove, dx: 0.27799988, dy: 0.4370041, dz: 0.0, de: 0.07013, dt: 0.029133607, ex_width_mm: 5.115812 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X92.166 Y91.747 E0.1217 
; Some(Annotation { label: ExtrusionMove, dx: 0.21399689, dy: 0.8730011, dz: 0.0, de: 0.1217, dt: 0.058200072, ex_width_mm: 5.1155324 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X92.112 Y92.621 E0.11856 
; Some(Annotation { label: ExtrusionMove, dx: -0.054000854, dy: 0.87400055, dz: 0.0, de: 0.11856, dt: 0.058266703, ex_width_mm: 5.1154637 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X91.886 Y93.494 E0.1221 
; Some(Annotation { label: ExtrusionMove, dx: -0.22599792, dy: 0.8730011, dz: 0.0, de: 0.1221, dt: 0.058200072, ex_width_mm: 5.1156554 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X91.484 Y94.368 E0.13025 
; Some(Annotation { label: ExtrusionMove, dx: -0.40200043, dy: 0.8739929, dz: 0.0, de: 0.13025, dt: 0.058266196, ex_width_mm: 5.11544 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X90.839 Y95.241 E0.14696 
; Some(Annotation { label: ExtrusionMove, dx: -0.6450043, dy: 0.8730011, dz: 0.0, de: 0.14696, dt: 0.058200072, ex_width_mm: 5.115436 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X89.868 Y96.115 E0.17688 
; Some(Annotation { label: ExtrusionMove, dx: -0.9710007, dy: 0.87400055, dz: 0.0, de: 0.17688, dt: 0.06473338, ex_width_mm: 5.115447 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X88.697 Y97.044 E0.20238 
; Some(Annotation { label: ExtrusionMove, dx: -1.1709976, dy: 0.92900085, dz: 0.0, de: 0.20238, dt: 0.07806651, ex_width_mm: 5.1154623 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X84.19 E0.61023 
; Some(Annotation { label: ExtrusionMove, dx: -4.506996, dy: 0.0, dz: 0.0, de: 0.61023, dt: 0.30046642, ex_width_mm: 5.1155496 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X84.686 Y96.552 E0.09459 
; Some(Annotation { label: ExtrusionMove, dx: 0.49599457, dy: -0.49199677, dz: 0.0, de: 0.09459, dt: 0.033066303, ex_width_mm: 5.115516 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X84.963 Y96.115 E0.07005 
; Some(Annotation { label: ExtrusionMove, dx: 0.27700043, dy: -0.4370041, dz: 0.0, de: 0.07005, dt: 0.029133607, ex_width_mm: 5.115268 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X85.177 Y95.241 E0.12183 
; Some(Annotation { label: ExtrusionMove, dx: 0.21400452, dy: -0.87400055, dz: 0.0, de: 0.12183, dt: 0.058266703, ex_width_mm: 5.1154613 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X85.124 Y94.368 E0.11842 
; Some(Annotation { label: ExtrusionMove, dx: -0.053001404, dy: -0.8730011, dz: 0.0, de: 0.11842, dt: 0.058200072, ex_width_mm: 5.1156077 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X84.897 Y93.494 E0.12226 
; Some(Annotation { label: ExtrusionMove, dx: -0.22699738, dy: -0.8739929, dz: 0.0, de: 0.12226, dt: 0.058266196, ex_width_mm: 5.11549 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X84.495 Y92.621 E0.13013 
; Some(Annotation { label: ExtrusionMove, dx: -0.40200043, dy: -0.8730011, dz: 0.0, de: 0.13013, dt: 0.058200072, ex_width_mm: 5.115517 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X83.851 Y91.747 E0.14699 
; Some(Annotation { label: ExtrusionMove, dx: -0.6440048, dy: -0.87400055, dz: 0.0, de: 0.14699, dt: 0.058266703, ex_width_mm: 5.115487 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 X82.956 Y90.942 E0.16298 
; Some(Annotation { label: ExtrusionMove, dx: -0.89499664, dy: -0.8050003, dz: 0.0, de: 0.16298, dt: 0.059666444, ex_width_mm: 5.1153975 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
G1 Y93.442 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 1167, end_id: 1243, z: 5.9 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 Y90.942 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: -2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X82.976 Y90.96 E-0.00937 
; Some(Annotation { label: Wipe, dx: 0.019996643, dy: 0.017997742, dz: 0.0, de: -0.00937, dt: 0.00016663868, ex_width_mm: -13.15894 })
; None
G1 X91.2736 Z6.1 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.2736 Z6.3 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
G1 X91.2736 Z6.5 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.760002, dy: 6.776001, dz: 0.0, de: 0.0, dt: 0.09840002, ex_width_mm: 0.0 })
; None
G1 X107.509605 Z6.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X107.509605 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X107.509605 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X90.4904 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X90.4904 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X107.509605 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X107.509605 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X108.40501 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
M204 P800
M73 P36 R7
; LAYER END
G1 X108.40501 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X89.595 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X89.595 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X108.40501 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X108.40501 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
M204 P1000
G1 X107.5547 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
; LAYER END
G1 X107.5547 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 X107.5547 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X105.6264 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z6.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X106.7484 Y93.212 F9000 
; Some(Annotation { label: TravelMove, dx: 1.0199966, dy: -5.236, dz: 0.0, de: 0.0, dt: 0.034906667, ex_width_mm: 0.0 })
; None
G1 X106.7484 Z6.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X106.7484 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
M204 P1500
G1 X106.7484 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X106.7484 Y90.712 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X105.8904 Y90 E0.14299 
; Some(Annotation { label: ExtrusionMove, dx: -0.7799988, dy: -0.711998, dz: 0.0, de: 0.14299, dt: 0.05199992, ex_width_mm: 5.1155 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X105.428406 Y89.563 E0.08206 
; Some(Annotation { label: ExtrusionMove, dx: -0.41999817, dy: -0.43699646, dz: 0.0, de: 0.08206, dt: 0.029133098, ex_width_mm: 5.115275 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X105.073105 Y89.126 E0.07358 
; Some(Annotation { label: ExtrusionMove, dx: -0.32299805, dy: -0.4370041, dz: 0.0, de: 0.07358, dt: 0.029133607, ex_width_mm: 5.115802 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X104.67821 Y88.253 E0.1278 
; Some(Annotation { label: ExtrusionMove, dx: -0.35900116, dy: -0.8730011, dz: 0.0, de: 0.1278, dt: 0.058200072, ex_width_mm: 5.115344 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X104.588005 Y87.379 E0.11886 
; Some(Annotation { label: ExtrusionMove, dx: -0.08200073, dy: -0.87400055, dz: 0.0, de: 0.11886, dt: 0.058266703, ex_width_mm: 5.1157207 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X104.705696 Y86.506 E0.11908 
; Some(Annotation { label: ExtrusionMove, dx: 0.10699463, dy: -0.8730011, dz: 0.0, de: 0.11908, dt: 0.058200072, ex_width_mm: 5.115316 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X105.018105 Y85.632 E0.12443 
; Some(Annotation { label: ExtrusionMove, dx: 0.2840042, dy: -0.8739929, dz: 0.0, de: 0.12443, dt: 0.058266196, ex_width_mm: 5.115705 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X105.5714 Y84.759 E0.13642 
; Some(Annotation { label: ExtrusionMove, dx: 0.50299835, dy: -0.8730011, dz: 0.0, de: 0.13642, dt: 0.058200072, ex_width_mm: 5.1156564 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X106.4316 Y83.885 E0.15879 
; Some(Annotation { label: ExtrusionMove, dx: 0.7819977, dy: -0.87400055, dz: 0.0, de: 0.15879, dt: 0.058266703, ex_width_mm: 5.115581 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X106.7484 Y83.622 E0.05281 
; Some(Annotation { label: ExtrusionMove, dx: 0.288002, dy: -0.2630005, dz: 0.0, de: 0.05281, dt: 0.019200133, ex_width_mm: 5.115839 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X106.7484 Y82.956 E0.09017 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -0.66600037, dz: 0.0, de: 0.09017, dt: 0.044400025, ex_width_mm: 5.1153283 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X104.731 E0.24831 
; Some(Annotation { label: ExtrusionMove, dx: -1.8339996, dy: 0.0, dz: 0.0, de: 0.24831, dt: 0.12226664, ex_width_mm: 5.1154156 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
M204 P1000
G1 X104.731 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
M73 P37 R7
; LAYER END
G1 X104.731 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X106.7484 E-0.65336 
; Some(Annotation { label: Wipe, dx: 1.8339996, dy: 0.0, dz: 0.0, de: -0.65336, dt: 0.01528333, ex_width_mm: -13.45982 })
; None
G1 X106.7484 Y83.622 E-0.23726 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 0.66600037, dz: 0.0, de: -0.23726, dt: 0.005550003, ex_width_mm: -13.459718 })
; None
G1 X106.7275 Y83.64 E-0.00938 
; Some(Annotation { label: Wipe, dx: -0.018997192, dy: 0.017997742, dz: 0.0, de: -0.00938, dt: 0.00015830994, ex_width_mm: -13.542632 })
; None
G1 X106.7275 Z6.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.2516 Y86.224 F9000 
; Some(Annotation { label: TravelMove, dx: -14.069, dy: 2.5839996, dz: 0.0, de: 0.0, dt: 0.09379333, ex_width_mm: 0.0 })
; None
G1 X91.2516 Z6.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X91.2516 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
M204 P1500
G1 X91.2516 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X91.2516 Y83.724 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X92.1679 Y82.956 E0.1534 
; Some(Annotation { label: ExtrusionMove, dx: 0.8330002, dy: -0.76799774, dz: 0.0, de: 0.1534, dt: 0.055533346, ex_width_mm: 5.11538 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X98.2707 E0.75117 
; Some(Annotation { label: ExtrusionMove, dx: 5.5479965, dy: 0.0, dz: 0.0, de: 0.75117, dt: 0.36986643, ex_width_mm: 5.115498 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X97.74161 Y83.448 E0.09316 
; Some(Annotation { label: ExtrusionMove, dx: -0.48099518, dy: 0.49199677, dz: 0.0, de: 0.09316, dt: 0.032799784, ex_width_mm: 5.1155624 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X97.3863 Y83.885 E0.07358 
; Some(Annotation { label: ExtrusionMove, dx: -0.32300568, dy: 0.4370041, dz: 0.0, de: 0.07358, dt: 0.029133607, ex_width_mm: 5.1157594 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X96.990295 Y84.759 E0.12798 
; Some(Annotation { label: ExtrusionMove, dx: -0.3600006, dy: 0.87400055, dz: 0.0, de: 0.12798, dt: 0.058266703, ex_width_mm: 5.115478 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X96.90011 Y85.632 E0.11872 
; Some(Annotation { label: ExtrusionMove, dx: -0.0819931, dy: 0.8730011, dz: 0.0, de: 0.11872, dt: 0.058200072, ex_width_mm: 5.115498 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X97.0189 Y86.506 E0.11924 
; Some(Annotation { label: ExtrusionMove, dx: 0.10799408, dy: 0.8739929, dz: 0.0, de: 0.11924, dt: 0.058266196, ex_width_mm: 5.115753 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X97.33021 Y87.379 E0.12426 
; Some(Annotation { label: ExtrusionMove, dx: 0.28300476, dy: 0.8730011, dz: 0.0, de: 0.12426, dt: 0.058200072, ex_width_mm: 5.1156855 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X97.884605 Y88.253 E0.1366 
; Some(Annotation { label: ExtrusionMove, dx: 0.5039978, dy: 0.87400055, dz: 0.0, de: 0.1366, dt: 0.058266703, ex_width_mm: 5.115476 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X98.7448 Y89.126 E0.15869 
; Some(Annotation { label: ExtrusionMove, dx: 0.7819977, dy: 0.8730011, dz: 0.0, de: 0.15869, dt: 0.058200072, ex_width_mm: 5.1156087 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X99.7964 Y90 E0.17538 
; Some(Annotation { label: ExtrusionMove, dx: 0.9560013, dy: 0.87400055, dz: 0.0, de: 0.17538, dt: 0.06373342, ex_width_mm: 5.1155686 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X100.2584 Y90.437 E0.08206 
; Some(Annotation { label: ExtrusionMove, dx: 0.41999817, dy: 0.43699646, dz: 0.0, de: 0.08206, dt: 0.029133098, ex_width_mm: 5.115275 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X100.61371 Y90.874 E0.07358 
; Some(Annotation { label: ExtrusionMove, dx: 0.32300568, dy: 0.4370041, dz: 0.0, de: 0.07358, dt: 0.029133607, ex_width_mm: 5.1157594 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X101.009705 Y91.747 E0.12786 
; Some(Annotation { label: ExtrusionMove, dx: 0.3600006, dy: 0.8730011, dz: 0.0, de: 0.12786, dt: 0.058200072, ex_width_mm: 5.1156826 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X101.0999 Y92.621 E0.11886 
; Some(Annotation { label: ExtrusionMove, dx: 0.0819931, dy: 0.87400055, dz: 0.0, de: 0.11886, dt: 0.058266703, ex_width_mm: 5.1157246 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X100.9811 Y93.494 E0.1191 
; Some(Annotation { label: ExtrusionMove, dx: -0.10799408, dy: 0.8730011, dz: 0.0, de: 0.1191, dt: 0.058200072, ex_width_mm: 5.115464 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X100.6698 Y94.368 E0.12438 
; Some(Annotation { label: ExtrusionMove, dx: -0.28300476, dy: 0.8739929, dz: 0.0, de: 0.12438, dt: 0.058266196, ex_width_mm: 5.1153665 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X100.1154 Y95.241 E0.13648 
; Some(Annotation { label: ExtrusionMove, dx: -0.5039978, dy: 0.8730011, dz: 0.0, de: 0.13648, dt: 0.058200072, ex_width_mm: 5.115371 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X99.2552 Y96.115 E0.15879 
; Some(Annotation { label: ExtrusionMove, dx: -0.7819977, dy: 0.87400055, dz: 0.0, de: 0.15879, dt: 0.058266703, ex_width_mm: 5.115581 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X98.1453 Y97.044 E0.1857 
; Some(Annotation { label: ExtrusionMove, dx: -1.0090027, dy: 0.92900085, dz: 0.0, de: 0.1857, dt: 0.067266844, ex_width_mm: 5.1155047 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X92.0425 E0.75117 
; Some(Annotation { label: ExtrusionMove, dx: -5.5479965, dy: 0.0, dz: 0.0, de: 0.75117, dt: 0.36986643, ex_width_mm: 5.115498 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X92.5716 Y96.552 E0.09316 
; Some(Annotation { label: ExtrusionMove, dx: 0.48099518, dy: -0.49199677, dz: 0.0, de: 0.09316, dt: 0.032799784, ex_width_mm: 5.1155624 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X92.926895 Y96.115 E0.07358 
; Some(Annotation { label: ExtrusionMove, dx: 0.32299805, dy: -0.4370041, dz: 0.0, de: 0.07358, dt: 0.029133607, ex_width_mm: 5.115802 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X93.3218 Y95.241 E0.12793 
; Some(Annotation { label: ExtrusionMove, dx: 0.35900116, dy: -0.87400055, dz: 0.0, de: 0.12793, dt: 0.058266703, ex_width_mm: 5.115537 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X93.412 Y94.368 E0.11872 
; Some(Annotation { label: ExtrusionMove, dx: 0.08200073, dy: -0.8730011, dz: 0.0, de: 0.11872, dt: 0.058200072, ex_width_mm: 5.1154943 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X93.294304 Y93.494 E0.11922 
; Some(Annotation { label: ExtrusionMove, dx: -0.10699463, dy: -0.8739929, dz: 0.0, de: 0.11922, dt: 0.058266196, ex_width_mm: 5.1156044 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X92.9819 Y92.621 E0.1243 
; Some(Annotation { label: ExtrusionMove, dx: -0.2840042, dy: -0.8730011, dz: 0.0, de: 0.1243, dt: 0.058200072, ex_width_mm: 5.1156116 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X92.428604 Y91.747 E0.13653 
; Some(Annotation { label: ExtrusionMove, dx: -0.50299835, dy: -0.87400055, dz: 0.0, de: 0.13653, dt: 0.058266703, ex_width_mm: 5.1153836 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X91.568405 Y90.874 E0.15869 
; Some(Annotation { label: ExtrusionMove, dx: -0.7819977, dy: -0.8730011, dz: 0.0, de: 0.15869, dt: 0.058200072, ex_width_mm: 5.1156087 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X91.2516 Y90.611 E0.05281 
; Some(Annotation { label: ExtrusionMove, dx: -0.288002, dy: -0.2630005, dz: 0.0, de: 0.05281, dt: 0.019200133, ex_width_mm: 5.115839 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
G1 X91.2516 Y93.111 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
M204 P1000
G92 E0
G1 X91.2516 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 1252, end_id: 1328, z: 6.3 })
; LAYER END
G1 X91.2516 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X91.2516 Y90.611 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: -2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X91.2725 Y90.629 E-0.00937 
; Some(Annotation { label: Wipe, dx: 0.018997192, dy: 0.017997742, dz: 0.0, de: -0.00937, dt: 0.00015830994, ex_width_mm: -13.528194 })
; None
G1 X91.2725 Z6.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.2725 Z6.7 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.2725 Z6.9 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.761002, dy: 7.1070023, dz: 0.0, de: 0.0, dt: 0.09840668, ex_width_mm: 0.0 })
; None
G1 X107.509605 Z6.7 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X107.509605 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X107.509605 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X90.4904 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X90.4904 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X107.509605 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X107.509605 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
M73 P38 R7
G1 X108.40501 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
M204 P800
M73 P38 R6
; LAYER END
G1 X108.40501 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X89.595 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X89.595 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X108.40501 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X108.40501 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
M204 P1000
G1 X107.5547 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
; LAYER END
G1 X107.5547 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 X107.5547 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X105.6264 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z6.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
G1 X106.7484 Y92.852 F9000 
; Some(Annotation { label: TravelMove, dx: 1.0199966, dy: -5.5960007, dz: 0.0, de: 0.0, dt: 0.03730667, ex_width_mm: 0.0 })
; None
G1 X106.7484 Z6.7 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X106.7484 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
M204 P1500
G1 X106.7484 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X106.7484 Y90.352 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X106.3678 Y90 E0.06683 
; Some(Annotation { label: ExtrusionMove, dx: -0.34600067, dy: -0.35199738, dz: 0.0, de: 0.06683, dt: 0.023466492, ex_width_mm: 5.115666 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X105.5109 Y89.126 E0.15852 
; Some(Annotation { label: ExtrusionMove, dx: -0.7789993, dy: -0.87400055, dz: 0.0, de: 0.15852, dt: 0.058266703, ex_width_mm: 5.1155944 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X104.987305 Y88.253 E0.13463 
; Some(Annotation { label: ExtrusionMove, dx: -0.47599792, dy: -0.8730011, dz: 0.0, de: 0.13463, dt: 0.058200072, ex_width_mm: 5.1155744 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X104.7629 Y87.379 E0.12152 
; Some(Annotation { label: ExtrusionMove, dx: -0.20400238, dy: -0.87400055, dz: 0.0, de: 0.12152, dt: 0.058266703, ex_width_mm: 5.1156697 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X104.7552 Y86.506 E0.1182 
; Some(Annotation { label: ExtrusionMove, dx: -0.006996155, dy: -0.8730011, dz: 0.0, de: 0.1182, dt: 0.058200072, ex_width_mm: 5.1153417 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X104.9411 Y85.632 E0.12053 
; Some(Annotation { label: ExtrusionMove, dx: 0.16899872, dy: -0.8739929, dz: 0.0, de: 0.12053, dt: 0.058266196, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
M73 P39 R6
G1 X105.355804 Y84.759 E0.12875 
; Some(Annotation { label: ExtrusionMove, dx: 0.3769989, dy: -0.8730011, dz: 0.0, de: 0.12875, dt: 0.058200072, ex_width_mm: 5.1154833 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X106.062004 Y83.885 E0.14683 
; Some(Annotation { label: ExtrusionMove, dx: 0.6419983, dy: -0.87400055, dz: 0.0, de: 0.14683, dt: 0.058266703, ex_width_mm: 5.1155214 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X106.7484 Y83.251 E0.12044 
; Some(Annotation { label: ExtrusionMove, dx: 0.62400055, dy: -0.6340027, dz: 0.0, de: 0.12044, dt: 0.042266846, ex_width_mm: 5.1153593 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X106.7484 Y82.956 E0.03994 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -0.29499817, dz: 0.0, de: 0.03994, dt: 0.019666545, ex_width_mm: 5.1153417 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X98.7404 E0.98568 
; Some(Annotation { label: ExtrusionMove, dx: -7.279999, dy: 0.0, dz: 0.0, de: 0.98568, dt: 0.48533326, ex_width_mm: 5.1155286 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X97.823006 Y83.885 E0.16903 
; Some(Annotation { label: ExtrusionMove, dx: -0.83399963, dy: 0.92900085, dz: 0.0, de: 0.16903, dt: 0.061933395, ex_width_mm: 5.1154356 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X97.30051 Y84.759 E0.13468 
; Some(Annotation { label: ExtrusionMove, dx: -0.47499847, dy: 0.87400055, dz: 0.0, de: 0.13468, dt: 0.058266703, ex_width_mm: 5.1154165 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X97.075005 Y85.632 E0.12142 
; Some(Annotation { label: ExtrusionMove, dx: -0.20500183, dy: 0.8730011, dz: 0.0, de: 0.12142, dt: 0.058200072, ex_width_mm: 5.1157093 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X97.068405 Y86.506 E0.11834 
; Some(Annotation { label: ExtrusionMove, dx: -0.005996704, dy: 0.8739929, dz: 0.0, de: 0.11834, dt: 0.058266196, ex_width_mm: 5.1156325 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X97.2543 Y87.379 E0.12039 
; Some(Annotation { label: ExtrusionMove, dx: 0.16899872, dy: 0.8730011, dz: 0.0, de: 0.12039, dt: 0.058200072, ex_width_mm: 5.1153193 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X97.6679 Y88.253 E0.12882 
; Some(Annotation { label: ExtrusionMove, dx: 0.37599945, dy: 0.87400055, dz: 0.0, de: 0.12882, dt: 0.058266703, ex_width_mm: 5.115456 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X98.3741 Y89.126 E0.14672 
; Some(Annotation { label: ExtrusionMove, dx: 0.6419983, dy: 0.8730011, dz: 0.0, de: 0.14672, dt: 0.058200072, ex_width_mm: 5.115488 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X99.3201 Y90 E0.16602 
; Some(Annotation { label: ExtrusionMove, dx: 0.8600006, dy: 0.87400055, dz: 0.0, de: 0.16602, dt: 0.058266703, ex_width_mm: 5.115614 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X100.177 Y90.874 E0.15852 
; Some(Annotation { label: ExtrusionMove, dx: 0.7789993, dy: 0.87400055, dz: 0.0, de: 0.15852, dt: 0.058266703, ex_width_mm: 5.1155944 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X100.6995 Y91.747 E0.13456 
; Some(Annotation { label: ExtrusionMove, dx: 0.47499847, dy: 0.8730011, dz: 0.0, de: 0.13456, dt: 0.058200072, ex_width_mm: 5.1153736 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X100.925 Y92.621 E0.12155 
; Some(Annotation { label: ExtrusionMove, dx: 0.20500183, dy: 0.87400055, dz: 0.0, de: 0.12155, dt: 0.058266703, ex_width_mm: 5.1156354 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X100.931595 Y93.494 E0.1182 
; Some(Annotation { label: ExtrusionMove, dx: 0.005996704, dy: 0.8730011, dz: 0.0, de: 0.1182, dt: 0.058200072, ex_width_mm: 5.1153855 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X100.7457 Y94.368 E0.12053 
; Some(Annotation { label: ExtrusionMove, dx: -0.16899872, dy: 0.8739929, dz: 0.0, de: 0.12053, dt: 0.058266196, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X100.3321 Y95.241 E0.1287 
; Some(Annotation { label: ExtrusionMove, dx: -0.37599945, dy: 0.8730011, dz: 0.0, de: 0.1287, dt: 0.058200072, ex_width_mm: 5.1156263 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X99.6259 Y96.115 E0.14683 
; Some(Annotation { label: ExtrusionMove, dx: -0.6419983, dy: 0.87400055, dz: 0.0, de: 0.14683, dt: 0.058266703, ex_width_mm: 5.1155214 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X98.62601 Y97.044 E0.17598 
; Some(Annotation { label: ExtrusionMove, dx: -0.9089966, dy: 0.92900085, dz: 0.0, de: 0.17598, dt: 0.061933395, ex_width_mm: 5.115565 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X91.5728 E0.86815 
; Some(Annotation { label: ExtrusionMove, dx: -6.4120026, dy: 0.0, dz: 0.0, de: 0.86815, dt: 0.42746684, ex_width_mm: 5.115487 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X92.489105 Y96.115 E0.16894 
; Some(Annotation { label: ExtrusionMove, dx: 0.8330002, dy: -0.92900085, dz: 0.0, de: 0.16894, dt: 0.061933395, ex_width_mm: 5.115447 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X93.0127 Y95.241 E0.13475 
; Some(Annotation { label: ExtrusionMove, dx: 0.47599792, dy: -0.87400055, dz: 0.0, de: 0.13475, dt: 0.058266703, ex_width_mm: 5.1156187 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X93.23711 Y94.368 E0.12138 
; Some(Annotation { label: ExtrusionMove, dx: 0.20400238, dy: -0.8730011, dz: 0.0, de: 0.12138, dt: 0.058200072, ex_width_mm: 5.1153235 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X93.2448 Y93.494 E0.11834 
; Some(Annotation { label: ExtrusionMove, dx: 0.006996155, dy: -0.8739929, dz: 0.0, de: 0.11834, dt: 0.058266196, ex_width_mm: 5.1155887 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X93.0589 Y92.621 E0.12039 
; Some(Annotation { label: ExtrusionMove, dx: -0.16899872, dy: -0.8730011, dz: 0.0, de: 0.12039, dt: 0.058200072, ex_width_mm: 5.1153193 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X92.6442 Y91.747 E0.12888 
; Some(Annotation { label: ExtrusionMove, dx: -0.3769989, dy: -0.87400055, dz: 0.0, de: 0.12888, dt: 0.058266703, ex_width_mm: 5.115712 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X91.938 Y90.874 E0.14672 
; Some(Annotation { label: ExtrusionMove, dx: -0.6419983, dy: -0.8730011, dz: 0.0, de: 0.14672, dt: 0.058200072, ex_width_mm: 5.115488 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X91.2516 Y90.239 E0.12054 
; Some(Annotation { label: ExtrusionMove, dx: -0.62400055, dy: -0.63500214, dz: 0.0, de: 0.12054, dt: 0.042333476, ex_width_mm: 5.115509 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
G1 X91.2516 Y87.739 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
M204 P1000
G92 E0
G1 X91.2516 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 1337, end_id: 1396, z: 6.7 })
; LAYER END
G1 X91.2516 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X91.2516 Y90.239 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X91.2714 Y90.258 E-0.00937 
; Some(Annotation { label: Wipe, dx: 0.017997742, dy: 0.019004822, dz: 0.0, de: -0.00937, dt: 0.00015837351, ex_width_mm: -13.525331 })
; None
G1 X91.2714 Z6.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
G1 Z7.1 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 Z7.3 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
G1 X97.736 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.762001, dy: 7.477997, dz: 0.0, de: 0.0, dt: 0.09841334, ex_width_mm: 0.0 })
; None
G1 Z7.1 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
M204 P800
M73 P40 R6
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
M204 P1000
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 Z7.3 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
G1 X97.044 Y92.441 F9000 
; Some(Annotation { label: TravelMove, dx: 1.0199966, dy: -6.006996, dz: 0.0, de: 0.0, dt: 0.04004664, ex_width_mm: 0.0 })
; None
G1 Z7.1 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 Y89.941 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X96.271 Y89.126 E0.15209 
; Some(Annotation { label: ExtrusionMove, dx: -0.772995, dy: -0.81500244, dz: 0.0, de: 0.15209, dt: 0.054333497, ex_width_mm: 5.1156383 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X95.682 Y88.253 E0.14259 
; Some(Annotation { label: ExtrusionMove, dx: -0.5890045, dy: -0.8730011, dz: 0.0, de: 0.14259, dt: 0.058200072, ex_width_mm: 5.115617 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X95.359 Y87.379 E0.12616 
; Some(Annotation { label: ExtrusionMove, dx: -0.32299805, dy: -0.87400055, dz: 0.0, de: 0.12616, dt: 0.058266703, ex_width_mm: 5.115599 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X95.24 Y86.506 E0.11929 
; Some(Annotation { label: ExtrusionMove, dx: -0.119003296, dy: -0.8730011, dz: 0.0, de: 0.11929, dt: 0.058200072, ex_width_mm: 5.1153717 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X95.297 Y85.632 E0.11859 
; Some(Annotation { label: ExtrusionMove, dx: 0.056999207, dy: -0.8739929, dz: 0.0, de: 0.11859, dt: 0.058266196, ex_width_mm: 5.1156926 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X95.554 Y84.759 E0.12322 
; Some(Annotation { label: ExtrusionMove, dx: 0.25700378, dy: -0.8730011, dz: 0.0, de: 0.12322, dt: 0.058200072, ex_width_mm: 5.11569 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X96.078 Y83.885 E0.13797 
; Some(Annotation { label: ExtrusionMove, dx: 0.5240021, dy: -0.87400055, dz: 0.0, de: 0.13797, dt: 0.058266703, ex_width_mm: 5.1153665 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X96.929 Y82.956 E0.17058 
; Some(Annotation { label: ExtrusionMove, dx: 0.8509979, dy: -0.92900085, dz: 0.0, de: 0.17058, dt: 0.061933395, ex_width_mm: 5.1155543 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X90.162 E0.91622 
; Some(Annotation { label: ExtrusionMove, dx: -6.7669983, dy: 0.0, dz: 0.0, de: 0.91622, dt: 0.45113322, ex_width_mm: 5.115518 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X89.282 Y83.885 E0.17326 
; Some(Annotation { label: ExtrusionMove, dx: -0.8800049, dy: 0.92900085, dz: 0.0, de: 0.17326, dt: 0.061933395, ex_width_mm: 5.1156406 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
M73 P41 R6
G1 X88.694 Y84.759 E0.14262 
; Some(Annotation { label: ExtrusionMove, dx: -0.58799744, dy: 0.87400055, dz: 0.0, de: 0.14262, dt: 0.058266703, ex_width_mm: 5.1154 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X88.371 Y85.632 E0.12603 
; Some(Annotation { label: ExtrusionMove, dx: -0.32299805, dy: 0.8730011, dz: 0.0, de: 0.12603, dt: 0.058200072, ex_width_mm: 5.115474 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X88.252 Y86.506 E0.11943 
; Some(Annotation { label: ExtrusionMove, dx: -0.119003296, dy: 0.8739929, dz: 0.0, de: 0.11943, dt: 0.058266196, ex_width_mm: 5.115669 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X88.308 Y87.379 E0.11844 
; Some(Annotation { label: ExtrusionMove, dx: 0.055999756, dy: 0.8730011, dz: 0.0, de: 0.11844, dt: 0.058200072, ex_width_mm: 5.11538 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X88.565 Y88.253 E0.12335 
; Some(Annotation { label: ExtrusionMove, dx: 0.25700378, dy: 0.87400055, dz: 0.0, de: 0.12335, dt: 0.058266703, ex_width_mm: 5.1156974 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X89.09 Y89.126 E0.13793 
; Some(Annotation { label: ExtrusionMove, dx: 0.5249939, dy: 0.8730011, dz: 0.0, de: 0.13793, dt: 0.058200072, ex_width_mm: 5.1156216 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X90.718 Y90.874 E0.32342 
; Some(Annotation { label: ExtrusionMove, dx: 1.628006, dy: 1.7480011, dz: 0.0, de: 0.32342, dt: 0.116533406, ex_width_mm: 5.1155257 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X91.306 Y91.747 E0.14251 
; Some(Annotation { label: ExtrusionMove, dx: 0.58799744, dy: 0.8730011, dz: 0.0, de: 0.14251, dt: 0.058200072, ex_width_mm: 5.115481 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X91.629 Y92.621 E0.12616 
; Some(Annotation { label: ExtrusionMove, dx: 0.32299805, dy: 0.87400055, dz: 0.0, de: 0.12616, dt: 0.058266703, ex_width_mm: 5.115599 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X91.749 Y93.494 E0.11931 
; Some(Annotation { label: ExtrusionMove, dx: 0.12000275, dy: 0.8730011, dz: 0.0, de: 0.11931, dt: 0.058200072, ex_width_mm: 5.1154423 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X91.692 Y94.368 E0.11859 
; Some(Annotation { label: ExtrusionMove, dx: -0.056999207, dy: 0.8739929, dz: 0.0, de: 0.11859, dt: 0.058266196, ex_width_mm: 5.1156926 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X91.435 Y95.241 E0.12322 
; Some(Annotation { label: ExtrusionMove, dx: -0.25700378, dy: 0.8730011, dz: 0.0, de: 0.12322, dt: 0.058200072, ex_width_mm: 5.11569 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X90.91 Y96.115 E0.13804 
; Some(Annotation { label: ExtrusionMove, dx: -0.5249939, dy: 0.87400055, dz: 0.0, de: 0.13804, dt: 0.058266703, ex_width_mm: 5.1154 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X90.059 Y97.044 E0.17058 
; Some(Annotation { label: ExtrusionMove, dx: -0.85100555, dy: 0.92900085, dz: 0.0, de: 0.17058, dt: 0.061933395, ex_width_mm: 5.1155334 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X82.956 E0.96171 
; Some(Annotation { label: ExtrusionMove, dx: -7.102997, dy: 0.0, dz: 0.0, de: 0.96171, dt: 0.4735331, ex_width_mm: 5.1155043 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 Y96.929 E0.01557 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -0.114997864, dz: 0.0, de: 0.01557, dt: 0.0076665245, ex_width_mm: 5.115461 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X83.729 Y96.115 E0.15199 
; Some(Annotation { label: ExtrusionMove, dx: 0.772995, dy: -0.814003, dz: 0.0, de: 0.15199, dt: 0.054266866, ex_width_mm: 5.1155767 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X84.318 Y95.241 E0.1427 
; Some(Annotation { label: ExtrusionMove, dx: 0.5890045, dy: -0.87400055, dz: 0.0, de: 0.1427, dt: 0.058266703, ex_width_mm: 5.1155376 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X84.641 Y94.368 E0.12603 
; Some(Annotation { label: ExtrusionMove, dx: 0.32299805, dy: -0.8730011, dz: 0.0, de: 0.12603, dt: 0.058200072, ex_width_mm: 5.115474 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X84.76 Y93.494 E0.11943 
; Some(Annotation { label: ExtrusionMove, dx: 0.119003296, dy: -0.8739929, dz: 0.0, de: 0.11943, dt: 0.058266196, ex_width_mm: 5.115669 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X84.704 Y92.621 E0.11844 
; Some(Annotation { label: ExtrusionMove, dx: -0.055999756, dy: -0.8730011, dz: 0.0, de: 0.11844, dt: 0.058200072, ex_width_mm: 5.11538 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X84.447 Y91.747 E0.12335 
; Some(Annotation { label: ExtrusionMove, dx: -0.25700378, dy: -0.87400055, dz: 0.0, de: 0.12335, dt: 0.058266703, ex_width_mm: 5.1156974 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X83.922 Y90.874 E0.13793 
; Some(Annotation { label: ExtrusionMove, dx: -0.5250015, dy: -0.8730011, dz: 0.0, de: 0.13793, dt: 0.058200072, ex_width_mm: 5.1156015 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 X82.956 Y89.824 E0.19318 
; Some(Annotation { label: ExtrusionMove, dx: -0.9659958, dy: -1.050003, dz: 0.0, de: 0.19318, dt: 0.0700002, ex_width_mm: 5.1155944 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
G1 Y87.324 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 1405, end_id: 1462, z: 7.1 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 Y89.824 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X82.974 Y89.843 E-0.00937 
; Some(Annotation { label: Wipe, dx: 0.017997742, dy: 0.019004822, dz: 0.0, de: -0.00937, dt: 0.00015837351, ex_width_mm: -13.525331 })
; None
G1 Z7.3 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
G1 Z7.5 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 Z7.7 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X97.736 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.762001, dy: 7.8929977, dz: 0.0, de: 0.0, dt: 0.09841334, ex_width_mm: 0.0 })
; None
G1 Z7.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
M204 P800
M73 P42 R6
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
M204 P1000
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 Z7.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X97.044 Y93.929 F9000 
; Some(Annotation { label: TravelMove, dx: 1.0199966, dy: -4.518997, dz: 0.0, de: 0.0, dt: 0.030126648, ex_width_mm: 0.0 })
; None
G1 Z7.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 Y96.429 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X96.415 Y97.044 E0.11911 
; Some(Annotation { label: ExtrusionMove, dx: -0.6289978, dy: 0.61499786, dz: 0.0, de: 0.11911, dt: 0.041933186, ex_width_mm: 5.1156735 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X90.468 E0.8052 
; Some(Annotation { label: ExtrusionMove, dx: -5.9469986, dy: 0.0, dz: 0.0, de: 0.8052, dt: 0.39646655, ex_width_mm: 5.1155443 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X91.284 Y96.115 E0.16741 
; Some(Annotation { label: ExtrusionMove, dx: 0.81599426, dy: -0.92900085, dz: 0.0, de: 0.16741, dt: 0.061933395, ex_width_mm: 5.1153965 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X91.696 Y95.241 E0.13082 
; Some(Annotation { label: ExtrusionMove, dx: 0.41200256, dy: -0.87400055, dz: 0.0, de: 0.13082, dt: 0.058266703, ex_width_mm: 5.1153374 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X91.833 Y94.368 E0.11965 
; Some(Annotation { label: ExtrusionMove, dx: 0.13700104, dy: -0.8730011, dz: 0.0, de: 0.11965, dt: 0.058200072, ex_width_mm: 5.11565 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X91.777 Y93.494 E0.11858 
; Some(Annotation { label: ExtrusionMove, dx: -0.055999756, dy: -0.8739929, dz: 0.0, de: 0.11858, dt: 0.058266196, ex_width_mm: 5.115638 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X91.544 Y92.621 E0.12234 
; Some(Annotation { label: ExtrusionMove, dx: -0.23300171, dy: -0.8730011, dz: 0.0, de: 0.12234, dt: 0.058200072, ex_width_mm: 5.1156096 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X91.098 Y91.747 E0.13285 
; Some(Annotation { label: ExtrusionMove, dx: -0.44599915, dy: -0.87400055, dz: 0.0, de: 0.13285, dt: 0.058266703, ex_width_mm: 5.115419 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X90.382 Y90.874 E0.15287 
; Some(Annotation { label: ExtrusionMove, dx: -0.7159958, dy: -0.8730011, dz: 0.0, de: 0.15287, dt: 0.058200072, ex_width_mm: 5.1155276 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X89.474 Y90 E0.17064 
; Some(Annotation { label: ExtrusionMove, dx: -0.90800476, dy: -0.87400055, dz: 0.0, de: 0.17064, dt: 0.06053365, ex_width_mm: 5.1155663 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X88.716 Y89.126 E0.15664 
; Some(Annotation { label: ExtrusionMove, dx: -0.7579956, dy: -0.87400055, dz: 0.0, de: 0.15664, dt: 0.058266703, ex_width_mm: 5.1155233 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
M73 P43 R6
G1 X88.304 Y88.253 E0.1307 
; Some(Annotation { label: ExtrusionMove, dx: -0.41200256, dy: -0.8730011, dz: 0.0, de: 0.1307, dt: 0.058200072, ex_width_mm: 5.115431 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X88.167 Y87.379 E0.11978 
; Some(Annotation { label: ExtrusionMove, dx: -0.13700104, dy: -0.87400055, dz: 0.0, de: 0.11978, dt: 0.058266703, ex_width_mm: 5.115493 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X88.223 Y86.506 E0.11844 
; Some(Annotation { label: ExtrusionMove, dx: 0.055999756, dy: -0.8730011, dz: 0.0, de: 0.11844, dt: 0.058200072, ex_width_mm: 5.11538 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X88.456 Y85.632 E0.12247 
; Some(Annotation { label: ExtrusionMove, dx: 0.23300171, dy: -0.8739929, dz: 0.0, de: 0.12247, dt: 0.058266196, ex_width_mm: 5.115619 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X88.902 Y84.759 E0.13273 
; Some(Annotation { label: ExtrusionMove, dx: 0.44599915, dy: -0.8730011, dz: 0.0, de: 0.13273, dt: 0.058200072, ex_width_mm: 5.1154394 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X89.618 Y83.885 E0.15297 
; Some(Annotation { label: ExtrusionMove, dx: 0.7159958, dy: -0.87400055, dz: 0.0, de: 0.15297, dt: 0.058266703, ex_width_mm: 5.1153717 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X90.574 Y82.956 E0.18049 
; Some(Annotation { label: ExtrusionMove, dx: 0.9560013, dy: -0.92900085, dz: 0.0, de: 0.18049, dt: 0.06373342, ex_width_mm: 5.1156125 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X96.52 E0.80506 
; Some(Annotation { label: ExtrusionMove, dx: 5.945999, dy: 0.0, dz: 0.0, de: 0.80506, dt: 0.39639995, ex_width_mm: 5.1155148 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X95.704 Y83.885 E0.16741 
; Some(Annotation { label: ExtrusionMove, dx: -0.81599426, dy: 0.92900085, dz: 0.0, de: 0.16741, dt: 0.061933395, ex_width_mm: 5.1153965 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X95.292 Y84.759 E0.13082 
; Some(Annotation { label: ExtrusionMove, dx: -0.41200256, dy: 0.87400055, dz: 0.0, de: 0.13082, dt: 0.058266703, ex_width_mm: 5.1153374 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X95.155 Y85.632 E0.11965 
; Some(Annotation { label: ExtrusionMove, dx: -0.13700104, dy: 0.8730011, dz: 0.0, de: 0.11965, dt: 0.058200072, ex_width_mm: 5.11565 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X95.212 Y86.506 E0.11859 
; Some(Annotation { label: ExtrusionMove, dx: 0.056999207, dy: 0.8739929, dz: 0.0, de: 0.11859, dt: 0.058266196, ex_width_mm: 5.1156926 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X95.444 Y87.379 E0.1223 
; Some(Annotation { label: ExtrusionMove, dx: 0.23200226, dy: 0.8730011, dz: 0.0, de: 0.1223, dt: 0.058200072, ex_width_mm: 5.115393 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X95.89 Y88.253 E0.13285 
; Some(Annotation { label: ExtrusionMove, dx: 0.44599915, dy: 0.87400055, dz: 0.0, de: 0.13285, dt: 0.058266703, ex_width_mm: 5.115419 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X96.606 Y89.126 E0.15287 
; Some(Annotation { label: ExtrusionMove, dx: 0.7160034, dy: 0.8730011, dz: 0.0, de: 0.15287, dt: 0.058200072, ex_width_mm: 5.115505 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X97.044 Y89.547 E0.08226 
; Some(Annotation { label: ExtrusionMove, dx: 0.4379959, dy: 0.42099762, dz: 0.0, de: 0.08226, dt: 0.029199727, ex_width_mm: 5.1158137 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 Y87.047 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
M204 P1000
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 Y89.547 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X97.025 Y89.529 E-0.00937 
; Some(Annotation { label: Wipe, dx: -0.018997192, dy: -0.017997742, dz: 0.0, de: -0.00937, dt: 0.00015830994, ex_width_mm: -13.528194 })
; None
G1 Z7.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X82.956 Y86.941 F9000 
; Some(Annotation { label: TravelMove, dx: -14.069, dy: -2.5879974, dz: 0.0, de: 0.0, dt: 0.09379333, ex_width_mm: 0.0 })
; None
G1 Z7.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 Y89.441 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X83.537 Y90 E0.10916 
; Some(Annotation { label: ExtrusionMove, dx: 0.5810013, dy: 0.5589981, dz: 0.0, de: 0.10916, dt: 0.038733415, ex_width_mm: 5.1153927 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X84.296 Y90.874 E0.15673 
; Some(Annotation { label: ExtrusionMove, dx: 0.75899506, dy: 0.87400055, dz: 0.0, de: 0.15673, dt: 0.058266703, ex_width_mm: 5.1155663 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X84.708 Y91.747 E0.1307 
; Some(Annotation { label: ExtrusionMove, dx: 0.41200256, dy: 0.8730011, dz: 0.0, de: 0.1307, dt: 0.058200072, ex_width_mm: 5.115431 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X84.845 Y92.621 E0.11978 
; Some(Annotation { label: ExtrusionMove, dx: 0.13700104, dy: 0.87400055, dz: 0.0, de: 0.11978, dt: 0.058266703, ex_width_mm: 5.115493 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X84.788 Y93.494 E0.11845 
; Some(Annotation { label: ExtrusionMove, dx: -0.056999207, dy: 0.8730011, dz: 0.0, de: 0.11845, dt: 0.058200072, ex_width_mm: 5.1154337 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X84.556 Y94.368 E0.12243 
; Some(Annotation { label: ExtrusionMove, dx: -0.23200226, dy: 0.8739929, dz: 0.0, de: 0.12243, dt: 0.058266196, ex_width_mm: 5.115402 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X84.11 Y95.241 E0.13273 
; Some(Annotation { label: ExtrusionMove, dx: -0.44599915, dy: 0.8730011, dz: 0.0, de: 0.13273, dt: 0.058200072, ex_width_mm: 5.1154394 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X83.394 Y96.115 E0.15297 
; Some(Annotation { label: ExtrusionMove, dx: -0.7160034, dy: 0.87400055, dz: 0.0, de: 0.15297, dt: 0.058266703, ex_width_mm: 5.11535 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X82.956 Y96.536 E0.08226 
; Some(Annotation { label: ExtrusionMove, dx: -0.4379959, dy: 0.42100525, dz: 0.0, de: 0.08226, dt: 0.029199727, ex_width_mm: 5.115769 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 Y97.044 E0.06878 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.5079956, dz: 0.0, de: 0.06878, dt: 0.033866376, ex_width_mm: 5.1155 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
G1 X84.948 E0.26971 
; Some(Annotation { label: ExtrusionMove, dx: 1.9919968, dy: 0.0, dz: 0.0, de: 0.26971, dt: 0.13279979, ex_width_mm: 5.115574 })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 1471, end_id: 1542, z: 7.5 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X82.956 E-0.70965 
; Some(Annotation { label: Wipe, dx: -1.9919968, dy: 0.0, dz: 0.0, de: -0.70965, dt: 0.016599974, ex_width_mm: -13.459888 })
; None
G1 Y96.536 E-0.18097 
; Some(Annotation { label: Wipe, dx: 0.0, dy: -0.5079956, dz: 0.0, de: -0.18097, dt: 0.004233297, ex_width_mm: -13.459612 })
; None
G1 X82.975 Y96.518 E-0.00938 
; Some(Annotation { label: Wipe, dx: 0.018997192, dy: -0.018005371, dz: 0.0, de: -0.00938, dt: 0.00015830994, ex_width_mm: -13.539916 })
; None
G1 Z7.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 Z7.9 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
G1 X91.2725 Z8.1 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.761002, dy: 1.2180023, dz: 0.0, de: 0.0, dt: 0.09840668, ex_width_mm: 0.0 })
; None
G1 Z7.9 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
M204 P800
M73 P44 R6
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
M204 P1000
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z8.1 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
G1 X106.7484 Y93.595 F9000 
; Some(Annotation { label: TravelMove, dx: 1.0199966, dy: -4.852997, dz: 0.0, de: 0.0, dt: 0.03235331, ex_width_mm: 0.0 })
; None
G1 Z7.9 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 Y96.095 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X95.935 Y97.044 E0.19763 
; Some(Annotation { label: ExtrusionMove, dx: -1.1090012, dy: 0.9489975, dz: 0.0, de: 0.19763, dt: 0.07393341, ex_width_mm: 5.115641 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X90.934 E0.67711 
; Some(Annotation { label: ExtrusionMove, dx: -5.0009995, dy: 0.0, dz: 0.0, de: 0.67711, dt: 0.33339995, ex_width_mm: 5.115503 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X91.422 Y96.552 E0.09382 
; Some(Annotation { label: ExtrusionMove, dx: 0.48799896, dy: -0.49199677, dz: 0.0, de: 0.09382, dt: 0.032799784, ex_width_mm: 5.115269 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X91.723 Y96.115 E0.07185 
; Some(Annotation { label: ExtrusionMove, dx: 0.3010025, dy: -0.4370041, dz: 0.0, de: 0.07185, dt: 0.029133607, ex_width_mm: 5.1158237 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X92.008 Y95.241 E0.12447 
; Some(Annotation { label: ExtrusionMove, dx: 0.28500366, dy: -0.87400055, dz: 0.0, de: 0.12447, dt: 0.058266703, ex_width_mm: 5.1155877 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X92.016 Y94.368 E0.11821 
; Some(Annotation { label: ExtrusionMove, dx: 0.0079956055, dy: -0.8730011, dz: 0.0, de: 0.11821, dt: 0.058200072, ex_width_mm: 5.115724 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
M73 P45 R6
G1 X91.843 Y93.494 E0.12063 
; Some(Annotation { label: ExtrusionMove, dx: -0.17299652, dy: -0.8739929, dz: 0.0, de: 0.12063, dt: 0.058266196, ex_width_mm: 5.1154995 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X91.494 Y92.621 E0.1273 
; Some(Annotation { label: ExtrusionMove, dx: -0.34899902, dy: -0.8730011, dz: 0.0, de: 0.1273, dt: 0.058200072, ex_width_mm: 5.1157 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X90.914 Y91.747 E0.14202 
; Some(Annotation { label: ExtrusionMove, dx: -0.58000183, dy: -0.87400055, dz: 0.0, de: 0.14202, dt: 0.058266703, ex_width_mm: 5.115452 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X90.035 Y90.874 E0.16774 
; Some(Annotation { label: ExtrusionMove, dx: -0.8789978, dy: -0.8730011, dz: 0.0, de: 0.16774, dt: 0.058599856, ex_width_mm: 5.115654 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X89 Y90 E0.18341 
; Some(Annotation { label: ExtrusionMove, dx: -1.0350037, dy: -0.87400055, dz: 0.0, de: 0.18341, dt: 0.069000244, ex_width_mm: 5.1153803 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X88.578 Y89.563 E0.08225 
; Some(Annotation { label: ExtrusionMove, dx: -0.42199707, dy: -0.43699646, dz: 0.0, de: 0.08225, dt: 0.029133098, ex_width_mm: 5.115413 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X88.277 Y89.126 E0.07185 
; Some(Annotation { label: ExtrusionMove, dx: -0.3010025, dy: -0.4370041, dz: 0.0, de: 0.07185, dt: 0.029133607, ex_width_mm: 5.1158237 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X87.992 Y88.253 E0.12434 
; Some(Annotation { label: ExtrusionMove, dx: -0.28500366, dy: -0.8730011, dz: 0.0, de: 0.12434, dt: 0.058200072, ex_width_mm: 5.1155324 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X87.984 Y87.379 E0.11834 
; Some(Annotation { label: ExtrusionMove, dx: -0.0079956055, dy: -0.87400055, dz: 0.0, de: 0.11834, dt: 0.058266703, ex_width_mm: 5.1154943 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X88.157 Y86.506 E0.1205 
; Some(Annotation { label: ExtrusionMove, dx: 0.17299652, dy: -0.8730011, dz: 0.0, de: 0.1205, dt: 0.058200072, ex_width_mm: 5.115573 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X88.506 Y85.632 E0.12742 
; Some(Annotation { label: ExtrusionMove, dx: 0.34899902, dy: -0.8739929, dz: 0.0, de: 0.12742, dt: 0.058266196, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X89.086 Y84.759 E0.14191 
; Some(Annotation { label: ExtrusionMove, dx: 0.58000183, dy: -0.8730011, dz: 0.0, de: 0.14191, dt: 0.058200072, ex_width_mm: 5.11555 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X89.965 Y83.885 E0.16783 
; Some(Annotation { label: ExtrusionMove, dx: 0.8789978, dy: -0.87400055, dz: 0.0, de: 0.16783, dt: 0.058599856, ex_width_mm: 5.11549 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X91.053 Y82.956 E0.1937 
; Some(Annotation { label: ExtrusionMove, dx: 1.0880051, dy: -0.92900085, dz: 0.0, de: 0.1937, dt: 0.072533675, ex_width_mm: 5.115382 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X96.054 E0.67711 
; Some(Annotation { label: ExtrusionMove, dx: 5.0009995, dy: 0.0, dz: 0.0, de: 0.67711, dt: 0.33339995, ex_width_mm: 5.115503 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X95.566 Y83.448 E0.09382 
; Some(Annotation { label: ExtrusionMove, dx: -0.48799896, dy: 0.49199677, dz: 0.0, de: 0.09382, dt: 0.032799784, ex_width_mm: 5.115269 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X95.265 Y83.885 E0.07185 
; Some(Annotation { label: ExtrusionMove, dx: -0.3010025, dy: 0.4370041, dz: 0.0, de: 0.07185, dt: 0.029133607, ex_width_mm: 5.1158237 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X94.981 Y84.759 E0.12443 
; Some(Annotation { label: ExtrusionMove, dx: -0.28399658, dy: 0.87400055, dz: 0.0, de: 0.12443, dt: 0.058266703, ex_width_mm: 5.1156783 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X94.972 Y85.632 E0.11821 
; Some(Annotation { label: ExtrusionMove, dx: -0.009002686, dy: 0.8730011, dz: 0.0, de: 0.11821, dt: 0.058200072, ex_width_mm: 5.115667 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X95.145 Y86.506 E0.12063 
; Some(Annotation { label: ExtrusionMove, dx: 0.17299652, dy: 0.8739929, dz: 0.0, de: 0.12063, dt: 0.058266196, ex_width_mm: 5.1154995 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X95.494 Y87.379 E0.1273 
; Some(Annotation { label: ExtrusionMove, dx: 0.34900665, dy: 0.8730011, dz: 0.0, de: 0.1273, dt: 0.058200072, ex_width_mm: 5.115684 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X96.074 Y88.253 E0.14202 
; Some(Annotation { label: ExtrusionMove, dx: 0.5799942, dy: 0.87400055, dz: 0.0, de: 0.14202, dt: 0.058266703, ex_width_mm: 5.115472 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X97.044 Y89.203 E0.18383 
; Some(Annotation { label: ExtrusionMove, dx: 0.9700012, dy: 0.9500046, dz: 0.0, de: 0.18383, dt: 0.06466675, ex_width_mm: 5.115537 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 Y86.703 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
M204 P1000
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 Y89.203 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X97.025 Y89.185 E-0.00937 
; Some(Annotation { label: Wipe, dx: -0.018997192, dy: -0.018005371, dz: 0.0, de: -0.00937, dt: 0.00015830994, ex_width_mm: -13.525481 })
; None
G1 X106.7275 Z8.1 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
G1 X91.2516 Y86.606 F9000 
; Some(Annotation { label: TravelMove, dx: -14.069, dy: -2.5789948, dz: 0.0, de: 0.0, dt: 0.09379333, ex_width_mm: 0.0 })
; None
G1 Z7.9 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 Y89.106 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X84.011 Y90 E0.18723 
; Some(Annotation { label: ExtrusionMove, dx: 1.0550003, dy: 0.8939972, dz: 0.0, de: 0.18723, dt: 0.070333354, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X84.434 Y90.437 E0.08235 
; Some(Annotation { label: ExtrusionMove, dx: 0.42299652, dy: 0.43699646, dz: 0.0, de: 0.08235, dt: 0.029133098, ex_width_mm: 5.1157827 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X84.735 Y90.874 E0.07185 
; Some(Annotation { label: ExtrusionMove, dx: 0.3010025, dy: 0.4370041, dz: 0.0, de: 0.07185, dt: 0.029133607, ex_width_mm: 5.1158237 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X85.019 Y91.747 E0.1243 
; Some(Annotation { label: ExtrusionMove, dx: 0.28399658, dy: 0.8730011, dz: 0.0, de: 0.1243, dt: 0.058200072, ex_width_mm: 5.115624 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X85.028 Y92.621 E0.11834 
; Some(Annotation { label: ExtrusionMove, dx: 0.009002686, dy: 0.87400055, dz: 0.0, de: 0.11834, dt: 0.058266703, ex_width_mm: 5.115437 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X84.855 Y93.494 E0.1205 
; Some(Annotation { label: ExtrusionMove, dx: -0.17299652, dy: 0.8730011, dz: 0.0, de: 0.1205, dt: 0.058200072, ex_width_mm: 5.115573 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X84.506 Y94.368 E0.12742 
; Some(Annotation { label: ExtrusionMove, dx: -0.34900665, dy: 0.8739929, dz: 0.0, de: 0.12742, dt: 0.058266196, ex_width_mm: 5.115495 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X83.926 Y95.241 E0.14191 
; Some(Annotation { label: ExtrusionMove, dx: -0.5799942, dy: 0.8730011, dz: 0.0, de: 0.14191, dt: 0.058200072, ex_width_mm: 5.1155715 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X82.956 Y96.191 E0.18383 
; Some(Annotation { label: ExtrusionMove, dx: -0.9700012, dy: 0.9500046, dz: 0.0, de: 0.18383, dt: 0.06466675, ex_width_mm: 5.115537 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 Y97.044 E0.11549 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.8529968, dz: 0.0, de: 0.11549, dt: 0.056866456, ex_width_mm: 5.1154385 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
G1 X84.604 E0.22313 
; Some(Annotation { label: ExtrusionMove, dx: 1.647995, dy: 0.0, dz: 0.0, de: 0.22313, dt: 0.109866336, ex_width_mm: 5.115499 })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 1552, end_id: 1625, z: 7.9 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X82.956 E-0.5871 
; Some(Annotation { label: Wipe, dx: -1.647995, dy: 0.0, dz: 0.0, de: -0.5871, dt: 0.013733292, ex_width_mm: -13.45991 })
; None
G1 Y96.191 E-0.30388 
; Some(Annotation { label: Wipe, dx: 0.0, dy: -0.8529968, dz: 0.0, de: -0.30388, dt: 0.007108307, ex_width_mm: -13.459864 })
; None
G1 X82.974 Y96.173 E-0.00902 
; Some(Annotation { label: Wipe, dx: 0.017997742, dy: -0.018005371, dz: 0.0, de: -0.00902, dt: 0.00015004475, ex_width_mm: -13.386511 })
; None
G1 X91.2714 Z8.1 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000029, de: 0.0, dt: 0.01666669, ex_width_mm: 0.0 })
; None
G1 X91.2714 Z8.3 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.2714 Z8.5 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.762001, dy: 1.5630035, dz: 0.0, de: 0.0, dt: 0.09841334, ex_width_mm: 0.0 })
; None
G1 X107.509605 Z8.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X107.509605 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X107.509605 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X90.4904 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X90.4904 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X107.509605 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X107.509605 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
M73 P46 R6
G1 X108.40501 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
M204 P800
; LAYER END
G1 X108.40501 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X89.595 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X89.595 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X108.40501 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X108.40501 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
M204 P1000
G1 X107.5547 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
; LAYER END
G1 X107.5547 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 X107.5547 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X105.6264 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z8.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X106.7484 Y93.312 F9000 
; Some(Annotation { label: TravelMove, dx: 1.0199966, dy: -5.1360016, dz: 0.0, de: 0.0, dt: 0.03424001, ex_width_mm: 0.0 })
; None
G1 X106.7484 Z8.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X106.7484 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
M204 P1500
G1 X106.7484 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X106.7484 Y95.812 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X104.89381 Y96.988 E0.27832 
; Some(Annotation { label: ExtrusionMove, dx: -1.685997, dy: 1.1760025, dz: 0.0, de: 0.27832, dt: 0.1123998, ex_width_mm: 5.1154966 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X104.834404 Y97.044 E0.01053 
; Some(Annotation { label: ExtrusionMove, dx: -0.054000854, dy: 0.055999756, dz: 0.0, de: 0.01053, dt: 0.0037333171, ex_width_mm: 5.1140213 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X100.705 E0.50827 
; Some(Annotation { label: ExtrusionMove, dx: -3.7539978, dy: 0.0, dz: 0.0, de: 0.50827, dt: 0.25026652, ex_width_mm: 5.11548 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
M73 P47 R6
G1 X100.793 Y96.988 E0.01322 
; Some(Annotation { label: ExtrusionMove, dx: 0.0799942, dy: -0.055999756, dz: 0.0, de: 0.01322, dt: 0.005332947, ex_width_mm: 5.1151223 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
M73 P47 R5
G1 X101.2594 Y96.552 E0.08234 
; Some(Annotation { label: ExtrusionMove, dx: 0.4240036, dy: -0.435997, dz: 0.0, de: 0.08234, dt: 0.029066468, ex_width_mm: 5.1152964 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X101.5146 Y96.115 E0.06699 
; Some(Annotation { label: ExtrusionMove, dx: 0.23200226, dy: -0.4370041, dz: 0.0, de: 0.06699, dt: 0.029133607, ex_width_mm: 5.11555 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X101.6268 Y95.241 E0.11914 
; Some(Annotation { label: ExtrusionMove, dx: 0.101997375, dy: -0.87400055, dz: 0.0, de: 0.11914, dt: 0.058266703, ex_width_mm: 5.115574 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X101.4717 Y94.368 E0.11973 
; Some(Annotation { label: ExtrusionMove, dx: -0.14099884, dy: -0.8730011, dz: 0.0, de: 0.11973, dt: 0.058200072, ex_width_mm: 5.1154323 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X101.14721 Y93.494 E0.12489 
; Some(Annotation { label: ExtrusionMove, dx: -0.29499817, dy: -0.8739929, dz: 0.0, de: 0.12489, dt: 0.058266196, ex_width_mm: 5.1153755 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X100.6302 Y92.621 E0.13424 
; Some(Annotation { label: ExtrusionMove, dx: -0.47000122, dy: -0.8730011, dz: 0.0, de: 0.13424, dt: 0.058200072, ex_width_mm: 5.115452 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X99.8228 Y91.747 E0.15453 
; Some(Annotation { label: ExtrusionMove, dx: -0.73400116, dy: -0.87400055, dz: 0.0, de: 0.15453, dt: 0.058266703, ex_width_mm: 5.115492 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X99.2651 Y91.31 E0.09063 
; Some(Annotation { label: ExtrusionMove, dx: -0.5070038, dy: -0.4370041, dz: 0.0, de: 0.09063, dt: 0.03380025, ex_width_mm: 5.1157184 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X97.20701 Y90 E0.30925 
; Some(Annotation { label: ExtrusionMove, dx: -1.8709946, dy: -1.3099976, dz: 0.0, de: 0.30925, dt: 0.12473297, ex_width_mm: 5.1156063 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X96.7406 Y89.563 E0.08244 
; Some(Annotation { label: ExtrusionMove, dx: -0.4240036, dy: -0.43699646, dz: 0.0, de: 0.08244, dt: 0.029133098, ex_width_mm: 5.1154785 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X96.4854 Y89.126 E0.06699 
; Some(Annotation { label: ExtrusionMove, dx: -0.23200226, dy: -0.4370041, dz: 0.0, de: 0.06699, dt: 0.029133607, ex_width_mm: 5.11555 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X96.3732 Y88.253 E0.119 
; Some(Annotation { label: ExtrusionMove, dx: -0.101997375, dy: -0.8730011, dz: 0.0, de: 0.119, dt: 0.058200072, ex_width_mm: 5.1153345 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X96.5283 Y87.379 E0.11987 
; Some(Annotation { label: ExtrusionMove, dx: 0.14099884, dy: -0.87400055, dz: 0.0, de: 0.11987, dt: 0.058266703, ex_width_mm: 5.1157055 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X96.8528 Y86.506 E0.12477 
; Some(Annotation { label: ExtrusionMove, dx: 0.29499817, dy: -0.8730011, dz: 0.0, de: 0.12477, dt: 0.058200072, ex_width_mm: 5.1156716 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X97.3698 Y85.632 E0.13436 
; Some(Annotation { label: ExtrusionMove, dx: 0.47000122, dy: -0.8739929, dz: 0.0, de: 0.13436, dt: 0.058266196, ex_width_mm: 5.115519 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X98.1772 Y84.759 E0.15443 
; Some(Annotation { label: ExtrusionMove, dx: 0.73400116, dy: -0.8730011, dz: 0.0, de: 0.15443, dt: 0.058200072, ex_width_mm: 5.1156116 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X98.7349 Y84.322 E0.09063 
; Some(Annotation { label: ExtrusionMove, dx: 0.5070038, dy: -0.4370041, dz: 0.0, de: 0.09063, dt: 0.03380025, ex_width_mm: 5.1157184 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X100.793 Y83.012 E0.30925 
; Some(Annotation { label: ExtrusionMove, dx: 1.8709946, dy: -1.3099976, dz: 0.0, de: 0.30925, dt: 0.12473297, ex_width_mm: 5.1156063 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X100.8524 Y82.956 E0.01053 
; Some(Annotation { label: ExtrusionMove, dx: 0.054000854, dy: -0.055999756, dz: 0.0, de: 0.01053, dt: 0.0037333171, ex_width_mm: 5.1140213 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X104.981804 E0.50827 
; Some(Annotation { label: ExtrusionMove, dx: 3.7540054, dy: 0.0, dz: 0.0, de: 0.50827, dt: 0.25026703, ex_width_mm: 5.1154695 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X104.89381 Y83.012 E0.01322 
; Some(Annotation { label: ExtrusionMove, dx: -0.08000183, dy: 0.055999756, dz: 0.0, de: 0.01322, dt: 0.0053334553, ex_width_mm: 5.1147947 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X104.4274 Y83.448 E0.08234 
; Some(Annotation { label: ExtrusionMove, dx: -0.4240036, dy: 0.435997, dz: 0.0, de: 0.08234, dt: 0.029066468, ex_width_mm: 5.1152964 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X104.1733 Y83.885 E0.06693 
; Some(Annotation { label: ExtrusionMove, dx: -0.23099518, dy: 0.4370041, dz: 0.0, de: 0.06693, dt: 0.029133607, ex_width_mm: 5.115843 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X104.06 Y84.759 E0.11915 
; Some(Annotation { label: ExtrusionMove, dx: -0.103004456, dy: 0.87400055, dz: 0.0, de: 0.11915, dt: 0.058266703, ex_width_mm: 5.115321 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X104.215096 Y85.632 E0.11973 
; Some(Annotation { label: ExtrusionMove, dx: 0.14099884, dy: 0.8730011, dz: 0.0, de: 0.11973, dt: 0.058200072, ex_width_mm: 5.1154323 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X104.5407 Y86.506 E0.12494 
; Some(Annotation { label: ExtrusionMove, dx: 0.29600525, dy: 0.8739929, dz: 0.0, de: 0.12494, dt: 0.058266196, ex_width_mm: 5.115635 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X105.05771 Y87.379 E0.13424 
; Some(Annotation { label: ExtrusionMove, dx: 0.47000122, dy: 0.8730011, dz: 0.0, de: 0.13424, dt: 0.058200072, ex_width_mm: 5.115452 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X105.864 Y88.253 E0.15444 
; Some(Annotation { label: ExtrusionMove, dx: 0.7329941, dy: 0.87400055, dz: 0.0, de: 0.15444, dt: 0.058266703, ex_width_mm: 5.115414 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X106.42171 Y88.69 E0.09063 
; Some(Annotation { label: ExtrusionMove, dx: 0.5070038, dy: 0.4370041, dz: 0.0, de: 0.09063, dt: 0.03380025, ex_width_mm: 5.1157184 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X106.7484 Y88.903 E0.04948 
; Some(Annotation { label: ExtrusionMove, dx: 0.29699707, dy: 0.21299744, dz: 0.0, de: 0.04948, dt: 0.019799804, ex_width_mm: 5.115083 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X106.7484 Y86.403 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
M204 P1000
G1 X106.7484 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
; LAYER END
G1 X106.7484 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X106.7484 Y88.903 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X106.7253 Y88.888 E-0.00937 
; Some(Annotation { label: Wipe, dx: -0.020996094, dy: -0.01499939, dz: 0.0, de: -0.00937, dt: 0.00017496746, ex_width_mm: -13.719802 })
; None
G1 X106.7253 Z8.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.2516 Y86.323 F9000 
; Some(Annotation { label: TravelMove, dx: -14.067001, dy: -2.5650024, dz: 0.0, de: 0.0, dt: 0.09378001, ex_width_mm: 0.0 })
; None
G1 X91.2516 Z8.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X91.2516 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
M204 P1500
G1 X91.2516 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X91.2516 Y88.823 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X93.1062 Y90 E0.2784 
; Some(Annotation { label: ExtrusionMove, dx: 1.685997, dy: 1.177002, dz: 0.0, de: 0.2784, dt: 0.1123998, ex_width_mm: 5.1155443 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X93.5726 Y90.437 E0.08244 
; Some(Annotation { label: ExtrusionMove, dx: 0.4240036, dy: 0.43699646, dz: 0.0, de: 0.08244, dt: 0.029133098, ex_width_mm: 5.1154785 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X93.8267 Y90.874 E0.06693 
; Some(Annotation { label: ExtrusionMove, dx: 0.23099518, dy: 0.4370041, dz: 0.0, de: 0.06693, dt: 0.029133607, ex_width_mm: 5.115843 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X93.94 Y91.747 E0.11902 
; Some(Annotation { label: ExtrusionMove, dx: 0.103004456, dy: 0.8730011, dz: 0.0, de: 0.11902, dt: 0.058200072, ex_width_mm: 5.11551 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X93.784904 Y92.621 E0.11987 
; Some(Annotation { label: ExtrusionMove, dx: -0.14099884, dy: 0.87400055, dz: 0.0, de: 0.11987, dt: 0.058266703, ex_width_mm: 5.1157055 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X93.4593 Y93.494 E0.12481 
; Some(Annotation { label: ExtrusionMove, dx: -0.29600525, dy: 0.8730011, dz: 0.0, de: 0.12481, dt: 0.058200072, ex_width_mm: 5.115519 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X92.9423 Y94.368 E0.13436 
; Some(Annotation { label: ExtrusionMove, dx: -0.47000122, dy: 0.8739929, dz: 0.0, de: 0.13436, dt: 0.058266196, ex_width_mm: 5.115519 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X92.136 Y95.241 E0.15434 
; Some(Annotation { label: ExtrusionMove, dx: -0.7329941, dy: 0.8730011, dz: 0.0, de: 0.15434, dt: 0.058200072, ex_width_mm: 5.1155353 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X91.5783 Y95.678 E0.09063 
; Some(Annotation { label: ExtrusionMove, dx: -0.5070038, dy: 0.4370041, dz: 0.0, de: 0.09063, dt: 0.03380025, ex_width_mm: 5.1157184 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X91.2516 Y95.891 E0.04948 
; Some(Annotation { label: ExtrusionMove, dx: -0.29699707, dy: 0.21299744, dz: 0.0, de: 0.04948, dt: 0.019799804, ex_width_mm: 5.115083 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X91.2516 Y97.044 E0.15611 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.1529999, dz: 0.0, de: 0.15611, dt: 0.07686666, ex_width_mm: 5.115492 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
G1 X92.734406 E0.18251 
; Some(Annotation { label: ExtrusionMove, dx: 1.3479996, dy: 0.0, dz: 0.0, de: 0.18251, dt: 0.08986664, ex_width_mm: 5.115438 })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
M204 P1000
G92 E0
G1 X92.734406 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 1635, end_id: 1714, z: 8.3 })
; LAYER END
G1 X92.734406 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X91.2516 E-0.48022 
; Some(Annotation { label: Wipe, dx: -1.3479996, dy: 0.0, dz: 0.0, de: -0.48022, dt: 0.01123333, ex_width_mm: -13.459731 })
; None
G1 X91.2516 Y95.891 E-0.41076 
; Some(Annotation { label: Wipe, dx: 0.0, dy: -1.1529999, dz: 0.0, de: -0.41076, dt: 0.009608332, ex_width_mm: -13.459991 })
; None
G1 X91.2747 Y95.876 E-0.00902 
; Some(Annotation { label: Wipe, dx: 0.020996094, dy: -0.01499939, dz: 0.0, de: -0.00902, dt: 0.00017496746, ex_width_mm: -13.207322 })
; None
G1 X91.2747 Z8.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.2747 Z8.7 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.2747 Z8.9 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.759003, dy: 1.8600006, dz: 0.0, de: 0.0, dt: 0.09839335, ex_width_mm: 0.0 })
; None
G1 X107.509605 Z8.7 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X107.509605 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X107.509605 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X90.4904 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X90.4904 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X107.509605 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X107.509605 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
M73 P48 R5
G1 X108.40501 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
M204 P800
; LAYER END
G1 X108.40501 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X89.595 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X89.595 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X108.40501 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X108.40501 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
M204 P1000
G1 X107.5547 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
; LAYER END
G1 X107.5547 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 X107.5547 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X105.6264 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z8.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X106.7484 Y93.095 F9000 
; Some(Annotation { label: TravelMove, dx: 1.0199966, dy: -5.352997, dz: 0.0, de: 0.0, dt: 0.035686646, ex_width_mm: 0.0 })
; None
G1 X106.7484 Z8.7 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X106.7484 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
M204 P1500
G1 X106.7484 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
M73 P49 R5
G1 X106.7484 Y95.595 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X106.6087 Y95.678 E0.02054 
; Some(Annotation { label: ExtrusionMove, dx: -0.1269989, dy: 0.08300018, dz: 0.0, de: 0.02054, dt: 0.008466594, ex_width_mm: 5.115109 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X105.6572 Y96.115 E0.13121 
; Some(Annotation { label: ExtrusionMove, dx: -0.86499786, dy: 0.43699646, dz: 0.0, de: 0.13121, dt: 0.05766652, ex_width_mm: 5.115367 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X104.4978 Y96.552 E0.15449 
; Some(Annotation { label: ExtrusionMove, dx: -1.0540009, dy: 0.4370041, dz: 0.0, de: 0.15449, dt: 0.07026672, ex_width_mm: 5.115629 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X103.458305 Y96.988 E0.14091 
; Some(Annotation { label: ExtrusionMove, dx: -0.9449997, dy: 0.435997, dz: 0.0, de: 0.14091, dt: 0.06299998, ex_width_mm: 5.115521 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X103.42641 Y97.044 E0.00854 
; Some(Annotation { label: ExtrusionMove, dx: -0.028999329, dy: 0.055999756, dz: 0.0, de: 0.00854, dt: 0.0037333171, ex_width_mm: 5.1164603 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X102.096504 E0.16369 
; Some(Annotation { label: ExtrusionMove, dx: -1.2089996, dy: 0.0, dz: 0.0, de: 0.16369, dt: 0.08059998, ex_width_mm: 5.1154265 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X102.2285 Y96.988 E0.01793 
; Some(Annotation { label: ExtrusionMove, dx: 0.11999512, dy: -0.055999756, dz: 0.0, de: 0.01793, dt: 0.007999674, ex_width_mm: 5.1158257 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X102.487 Y96.552 E0.06706 
; Some(Annotation { label: ExtrusionMove, dx: 0.23500061, dy: -0.435997, dz: 0.0, de: 0.06706, dt: 0.029066468, ex_width_mm: 5.115454 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X102.4254 Y96.115 E0.05965 
; Some(Annotation { label: ExtrusionMove, dx: -0.055999756, dy: -0.4370041, dz: 0.0, de: 0.05965, dt: 0.029133607, ex_width_mm: 5.1153345 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X102.1504 Y95.241 E0.12308 
; Some(Annotation { label: ExtrusionMove, dx: -0.25, dy: -0.87400055, dz: 0.0, de: 0.12308, dt: 0.058266703, ex_width_mm: 5.115455 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X101.788506 Y94.368 E0.12632 
; Some(Annotation { label: ExtrusionMove, dx: -0.32899475, dy: -0.8730011, dz: 0.0, de: 0.12632, dt: 0.058200072, ex_width_mm: 5.1157165 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X101.3199 Y93.494 E0.13164 
; Some(Annotation { label: ExtrusionMove, dx: -0.4260025, dy: -0.8739929, dz: 0.0, de: 0.13164, dt: 0.058266196, ex_width_mm: 5.1153975 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X100.665405 Y92.621 E0.14304 
; Some(Annotation { label: ExtrusionMove, dx: -0.5950012, dy: -0.8730011, dz: 0.0, de: 0.14304, dt: 0.058200072, ex_width_mm: 5.115413 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X100.221 Y92.184 E0.08058 
; Some(Annotation { label: ExtrusionMove, dx: -0.40399933, dy: -0.4370041, dz: 0.0, de: 0.08058, dt: 0.029133607, ex_width_mm: 5.115597 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X99.6545 Y91.747 E0.09145 
; Some(Annotation { label: ExtrusionMove, dx: -0.5149994, dy: -0.43699646, dz: 0.0, de: 0.09145, dt: 0.034333292, ex_width_mm: 5.1156 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X98.92081 Y91.31 E0.10797 
; Some(Annotation { label: ExtrusionMove, dx: -0.6669998, dy: -0.4370041, dz: 0.0, de: 0.10797, dt: 0.044466652, ex_width_mm: 5.1157327 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X97.970406 Y90.874 E0.13103 
; Some(Annotation { label: ExtrusionMove, dx: -0.8639984, dy: -0.435997, dz: 0.0, de: 0.13103, dt: 0.057599895, ex_width_mm: 5.1154356 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X96.811005 Y90.437 E0.15449 
; Some(Annotation { label: ExtrusionMove, dx: -1.0540009, dy: -0.4370041, dz: 0.0, de: 0.15449, dt: 0.07026672, ex_width_mm: 5.115629 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X95.77151 Y90 E0.14097 
; Some(Annotation { label: ExtrusionMove, dx: -0.9449997, dy: -0.43699646, dz: 0.0, de: 0.14097, dt: 0.06299998, ex_width_mm: 5.1156397 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X95.513 Y89.563 E0.06718 
; Some(Annotation { label: ExtrusionMove, dx: -0.23500061, dy: -0.43699646, dz: 0.0, de: 0.06718, dt: 0.029133098, ex_width_mm: 5.115519 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X95.5746 Y89.126 E0.05965 
; Some(Annotation { label: ExtrusionMove, dx: 0.055999756, dy: -0.4370041, dz: 0.0, de: 0.05965, dt: 0.029133607, ex_width_mm: 5.1153345 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X95.8496 Y88.253 E0.12295 
; Some(Annotation { label: ExtrusionMove, dx: 0.25, dy: -0.8730011, dz: 0.0, de: 0.12295, dt: 0.058200072, ex_width_mm: 5.1154594 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X96.211494 Y87.379 E0.12644 
; Some(Annotation { label: ExtrusionMove, dx: 0.32899475, dy: -0.87400055, dz: 0.0, de: 0.12644, dt: 0.058266703, ex_width_mm: 5.1154475 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X96.6801 Y86.506 E0.13152 
; Some(Annotation { label: ExtrusionMove, dx: 0.4260025, dy: -0.8730011, dz: 0.0, de: 0.13152, dt: 0.058200072, ex_width_mm: 5.115424 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X97.3346 Y85.632 E0.14315 
; Some(Annotation { label: ExtrusionMove, dx: 0.5950012, dy: -0.8739929, dz: 0.0, de: 0.14315, dt: 0.058266196, ex_width_mm: 5.1153784 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X97.779 Y85.195 E0.08058 
; Some(Annotation { label: ExtrusionMove, dx: 0.40399933, dy: -0.4370041, dz: 0.0, de: 0.08058, dt: 0.029133607, ex_width_mm: 5.115597 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X98.3455 Y84.759 E0.09136 
; Some(Annotation { label: ExtrusionMove, dx: 0.5149994, dy: -0.435997, dz: 0.0, de: 0.09136, dt: 0.034333292, ex_width_mm: 5.115461 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X99.0792 Y84.322 E0.10797 
; Some(Annotation { label: ExtrusionMove, dx: 0.6669998, dy: -0.4370041, dz: 0.0, de: 0.10797, dt: 0.044466652, ex_width_mm: 5.1157327 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X100.0296 Y83.885 E0.13109 
; Some(Annotation { label: ExtrusionMove, dx: 0.8639984, dy: -0.43699646, dz: 0.0, de: 0.13109, dt: 0.057599895, ex_width_mm: 5.1153965 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X101.189 Y83.448 E0.15449 
; Some(Annotation { label: ExtrusionMove, dx: 1.0540009, dy: -0.4370041, dz: 0.0, de: 0.15449, dt: 0.07026672, ex_width_mm: 5.115629 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X102.2285 Y83.012 E0.14091 
; Some(Annotation { label: ExtrusionMove, dx: 0.9449997, dy: -0.435997, dz: 0.0, de: 0.14091, dt: 0.06299998, ex_width_mm: 5.115521 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X102.2615 Y82.956 E0.0086 
; Some(Annotation { label: ExtrusionMove, dx: 0.02999878, dy: -0.055999756, dz: 0.0, de: 0.0086, dt: 0.0037333171, ex_width_mm: 5.1146297 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X103.5903 E0.16356 
; Some(Annotation { label: ExtrusionMove, dx: 1.2080002, dy: 0.0, dz: 0.0, de: 0.16356, dt: 0.08053335, ex_width_mm: 5.1155934 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X103.458305 Y83.012 E0.01793 
; Some(Annotation { label: ExtrusionMove, dx: -0.11999512, dy: 0.055999756, dz: 0.0, de: 0.01793, dt: 0.007999674, ex_width_mm: 5.1158257 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X103.19981 Y83.448 E0.06706 
; Some(Annotation { label: ExtrusionMove, dx: -0.23500061, dy: 0.435997, dz: 0.0, de: 0.06706, dt: 0.029066468, ex_width_mm: 5.115454 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X103.261406 Y83.885 E0.05965 
; Some(Annotation { label: ExtrusionMove, dx: 0.055999756, dy: 0.4370041, dz: 0.0, de: 0.05965, dt: 0.029133607, ex_width_mm: 5.1153345 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X103.5375 Y84.759 E0.12312 
; Some(Annotation { label: ExtrusionMove, dx: 0.25099945, dy: 0.87400055, dz: 0.0, de: 0.12312, dt: 0.058266703, ex_width_mm: 5.115568 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X103.89941 Y85.632 E0.12632 
; Some(Annotation { label: ExtrusionMove, dx: 0.32900238, dy: 0.8730011, dz: 0.0, de: 0.12632, dt: 0.058200072, ex_width_mm: 5.1157017 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X104.368 Y86.506 E0.13164 
; Some(Annotation { label: ExtrusionMove, dx: 0.42599487, dy: 0.8739929, dz: 0.0, de: 0.13164, dt: 0.058266196, ex_width_mm: 5.1154146 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X105.0225 Y87.379 E0.14304 
; Some(Annotation { label: ExtrusionMove, dx: 0.5950012, dy: 0.8730011, dz: 0.0, de: 0.14304, dt: 0.058200072, ex_width_mm: 5.115413 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X105.466896 Y87.816 E0.08058 
; Some(Annotation { label: ExtrusionMove, dx: 0.40399933, dy: 0.4370041, dz: 0.0, de: 0.08058, dt: 0.029133607, ex_width_mm: 5.115597 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X106.0323 Y88.253 E0.09135 
; Some(Annotation { label: ExtrusionMove, dx: 0.51399994, dy: 0.43699646, dz: 0.0, de: 0.09135, dt: 0.03426666, ex_width_mm: 5.1157756 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X106.7484 Y88.679 E0.10534 
; Some(Annotation { label: ExtrusionMove, dx: 0.651001, dy: 0.4260025, dz: 0.0, de: 0.10534, dt: 0.043400068, ex_width_mm: 5.1156507 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X106.7484 Y86.179 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
M204 P1000
G1 X106.7484 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
; LAYER END
G1 X106.7484 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X106.7484 Y88.679 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X106.724205 Y88.665 E-0.00937 
; Some(Annotation { label: Wipe, dx: -0.021995544, dy: -0.013999939, dz: 0.0, de: -0.00937, dt: 0.0001832962, ex_width_mm: -13.57795 })
; None
G1 X106.724205 Z8.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.2516 Y86.106 F9000 
; Some(Annotation { label: TravelMove, dx: -14.066002, dy: -2.558998, dz: 0.0, de: 0.0, dt: 0.09377334, ex_width_mm: 0.0 })
; None
G1 X91.2516 Z8.7 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X91.2516 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
M204 P1500
G1 X91.2516 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X91.2516 Y88.606 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X91.391304 Y88.69 E0.02062 
; Some(Annotation { label: ExtrusionMove, dx: 0.1269989, dy: 0.083999634, dz: 0.0, de: 0.02062, dt: 0.008466594, ex_width_mm: 5.1165147 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X92.3428 Y89.126 E0.13115 
; Some(Annotation { label: ExtrusionMove, dx: 0.86499786, dy: 0.435997, dz: 0.0, de: 0.13115, dt: 0.05766652, ex_width_mm: 5.1154046 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X93.5022 Y89.563 E0.15449 
; Some(Annotation { label: ExtrusionMove, dx: 1.0540009, dy: 0.4370041, dz: 0.0, de: 0.15449, dt: 0.07026672, ex_width_mm: 5.115629 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X94.5417 Y90 E0.14097 
; Some(Annotation { label: ExtrusionMove, dx: 0.9449997, dy: 0.43699646, dz: 0.0, de: 0.14097, dt: 0.06299998, ex_width_mm: 5.1156397 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X94.8002 Y90.437 E0.06718 
; Some(Annotation { label: ExtrusionMove, dx: 0.23500061, dy: 0.43699646, dz: 0.0, de: 0.06718, dt: 0.029133098, ex_width_mm: 5.115519 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X94.7386 Y90.874 E0.05965 
; Some(Annotation { label: ExtrusionMove, dx: -0.055999756, dy: 0.4370041, dz: 0.0, de: 0.05965, dt: 0.029133607, ex_width_mm: 5.1153345 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X94.4625 Y91.747 E0.12299 
; Some(Annotation { label: ExtrusionMove, dx: -0.25099945, dy: 0.8730011, dz: 0.0, de: 0.12299, dt: 0.058200072, ex_width_mm: 5.115571 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X94.1006 Y92.621 E0.12644 
; Some(Annotation { label: ExtrusionMove, dx: -0.32900238, dy: 0.87400055, dz: 0.0, de: 0.12644, dt: 0.058266703, ex_width_mm: 5.1154327 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X93.632 Y93.494 E0.13152 
; Some(Annotation { label: ExtrusionMove, dx: -0.42599487, dy: 0.8730011, dz: 0.0, de: 0.13152, dt: 0.058200072, ex_width_mm: 5.1154423 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X92.9775 Y94.368 E0.14315 
; Some(Annotation { label: ExtrusionMove, dx: -0.5950012, dy: 0.8739929, dz: 0.0, de: 0.14315, dt: 0.058266196, ex_width_mm: 5.1153784 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X92.533104 Y94.805 E0.08058 
; Some(Annotation { label: ExtrusionMove, dx: -0.40399933, dy: 0.4370041, dz: 0.0, de: 0.08058, dt: 0.029133607, ex_width_mm: 5.115597 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X91.967705 Y95.241 E0.09126 
; Some(Annotation { label: ExtrusionMove, dx: -0.51399994, dy: 0.435997, dz: 0.0, de: 0.09126, dt: 0.03426666, ex_width_mm: 5.115641 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X91.2516 Y95.667 E0.10534 
; Some(Annotation { label: ExtrusionMove, dx: -0.651001, dy: 0.4260025, dz: 0.0, de: 0.10534, dt: 0.043400068, ex_width_mm: 5.1156507 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X91.2516 Y97.044 E0.18644 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.3769989, dz: 0.0, de: 0.18644, dt: 0.09179992, ex_width_mm: 5.1155396 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
G1 X92.48801 E0.15218 
; Some(Annotation { label: ExtrusionMove, dx: 1.1240005, dy: 0.0, dz: 0.0, de: 0.15218, dt: 0.07493337, ex_width_mm: 5.1153693 })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
M204 P1000
G92 E0
G1 X92.48801 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 1724, end_id: 1815, z: 8.7 })
; LAYER END
G1 X92.48801 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X91.2516 E-0.40042 
; Some(Annotation { label: Wipe, dx: -1.1240005, dy: 0.0, dz: 0.0, de: -0.40042, dt: 0.009366672, ex_width_mm: -13.459693 })
; None
G1 X91.2516 Y95.667 E-0.49056 
; Some(Annotation { label: Wipe, dx: 0.0, dy: -1.3769989, dz: 0.0, de: -0.49056, dt: 0.01147499, ex_width_mm: -13.45998 })
; None
G1 X91.2747 Y95.653 E-0.00902 
; Some(Annotation { label: Wipe, dx: 0.020996094, dy: -0.013999939, dz: 0.0, de: -0.00902, dt: 0.00017496746, ex_width_mm: -13.504523 })
; None
G1 X91.2747 Z8.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 Z9.1 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 Z9.3 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X97.736 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.759003, dy: 2.0830002, dz: 0.0, de: 0.0, dt: 0.09839335, ex_width_mm: 0.0 })
; None
G1 Z9.1 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
M73 P50 R5
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
M204 P800
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
M204 P1000
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 Z9.3 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
M73 P51 R5
G1 X83.903 Y97.044 F9000 
; Some(Annotation { label: TravelMove, dx: -12.121002, dy: -1.4039993, dz: 0.0, de: 0.0, dt: 0.08080668, ex_width_mm: 0.0 })
; None
G1 Z9.1 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X82.956 E0.12822 
; Some(Annotation { label: ExtrusionMove, dx: -0.9469986, dy: 0.0, dz: 0.0, de: 0.12822, dt: 0.06313324, ex_width_mm: 5.11555 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 Y95.49 E0.2104 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.5540009, dz: 0.0, de: 0.2104, dt: 0.103600055, ex_width_mm: 5.1154094 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X83.885 Y94.978 E0.14362 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.51200104, dz: 0.0, de: 0.14362, dt: 0.061933395, ex_width_mm: 5.115504 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X84.759 Y94.214 E0.15717 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.76399994, dz: 0.0, de: 0.15717, dt: 0.058266703, ex_width_mm: 5.115398 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X85.195 Y93.684 E0.09292 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: -0.5299988, dz: 0.0, de: 0.09292, dt: 0.035333253, ex_width_mm: 5.1155024 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X86.506 Y91.718 E0.31994 
; Some(Annotation { label: ExtrusionMove, dx: 1.310997, dy: -1.9659958, dz: 0.0, de: 0.31994, dt: 0.13106638, ex_width_mm: 5.115493 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X86.943 Y91.298 E0.08206 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: -0.4200058, dz: 0.0, de: 0.08206, dt: 0.029133607, ex_width_mm: 5.115183 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X87.379 Y91.088 E0.06552 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: -0.20999908, dz: 0.0, de: 0.06552, dt: 0.029066468, ex_width_mm: 5.1153207 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X88.253 Y91.03 E0.1186 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.057998657, dz: 0.0, de: 0.1186, dt: 0.058266703, ex_width_mm: 5.115696 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X89.126 Y91.2 E0.12042 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.16999817, dz: 0.0, de: 0.12042, dt: 0.058200072, ex_width_mm: 5.115499 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X90 Y91.518 E0.12592 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.3180008, dz: 0.0, de: 0.12592, dt: 0.058266703, ex_width_mm: 5.115313 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X90.874 Y92.01 E0.1358 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.4920044, dz: 0.0, de: 0.1358, dt: 0.058266703, ex_width_mm: 5.115622 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X91.747 Y92.774 E0.15707 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.76399994, dz: 0.0, de: 0.15707, dt: 0.058200072, ex_width_mm: 5.1154585 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X92.184 Y93.304 E0.09301 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.5299988, dz: 0.0, de: 0.09301, dt: 0.035333253, ex_width_mm: 5.1157207 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X93.494 Y95.27 E0.31987 
; Some(Annotation { label: ExtrusionMove, dx: 1.3100052, dy: 1.9659958, dz: 0.0, de: 0.31987, dt: 0.13106638, ex_width_mm: 5.1155643 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X93.931 Y95.691 E0.08216 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.42100525, dz: 0.0, de: 0.08216, dt: 0.029133098, ex_width_mm: 5.1156144 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X94.368 Y95.901 E0.06564 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.20999908, dz: 0.0, de: 0.06564, dt: 0.029133098, ex_width_mm: 5.11517 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X95.241 Y95.959 E0.11846 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.057998657, dz: 0.0, de: 0.11846, dt: 0.058200072, ex_width_mm: 5.1154814 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X96.115 Y95.788 E0.12058 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.17099762, dz: 0.0, de: 0.12058, dt: 0.058266703, ex_width_mm: 5.1155524 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X97.044 Y95.439 E0.13437 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.34899902, dz: 0.0, de: 0.13437, dt: 0.061933395, ex_width_mm: 5.115696 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 Y88.502 E0.93924 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -6.937004, dz: 0.0, de: 0.93924, dt: 0.46246693, ex_width_mm: 5.1155286 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X96.115 Y87.99 E0.14362 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.51200104, dz: 0.0, de: 0.14362, dt: 0.061933395, ex_width_mm: 5.115504 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X95.241 Y87.226 E0.15717 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.76399994, dz: 0.0, de: 0.15717, dt: 0.058266703, ex_width_mm: 5.115398 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X94.805 Y86.696 E0.09292 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: -0.5299988, dz: 0.0, de: 0.09292, dt: 0.035333253, ex_width_mm: 5.1155024 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X93.494 Y84.73 E0.31994 
; Some(Annotation { label: ExtrusionMove, dx: -1.310997, dy: -1.9659958, dz: 0.0, de: 0.31994, dt: 0.13106638, ex_width_mm: 5.115493 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X93.057 Y84.309 E0.08216 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: -0.42100525, dz: 0.0, de: 0.08216, dt: 0.029133607, ex_width_mm: 5.115568 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X92.621 Y84.099 E0.06552 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: -0.20999908, dz: 0.0, de: 0.06552, dt: 0.029066468, ex_width_mm: 5.1153207 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X91.747 Y84.041 E0.1186 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.057998657, dz: 0.0, de: 0.1186, dt: 0.058266703, ex_width_mm: 5.115696 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X90.874 Y84.212 E0.12045 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.17099762, dz: 0.0, de: 0.12045, dt: 0.058200072, ex_width_mm: 5.115671 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X90 Y84.53 E0.12592 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.3180008, dz: 0.0, de: 0.12592, dt: 0.058266703, ex_width_mm: 5.115313 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X89.126 Y85.022 E0.1358 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.4920044, dz: 0.0, de: 0.1358, dt: 0.058266703, ex_width_mm: 5.115622 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X88.253 Y85.786 E0.15707 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.76399994, dz: 0.0, de: 0.15707, dt: 0.058200072, ex_width_mm: 5.1154585 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X87.816 Y86.316 E0.09301 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.5299988, dz: 0.0, de: 0.09301, dt: 0.035333253, ex_width_mm: 5.1157207 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X86.506 Y88.282 E0.31987 
; Some(Annotation { label: ExtrusionMove, dx: -1.3100052, dy: 1.9659958, dz: 0.0, de: 0.31987, dt: 0.13106638, ex_width_mm: 5.1155643 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X86.069 Y88.702 E0.08206 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.4200058, dz: 0.0, de: 0.08206, dt: 0.029133098, ex_width_mm: 5.1152296 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X85.632 Y88.912 E0.06564 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.20999908, dz: 0.0, de: 0.06564, dt: 0.029133098, ex_width_mm: 5.11517 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X84.759 Y88.97 E0.11846 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.057998657, dz: 0.0, de: 0.11846, dt: 0.058200072, ex_width_mm: 5.1154814 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X83.885 Y88.8 E0.12055 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.16999817, dz: 0.0, de: 0.12055, dt: 0.058266703, ex_width_mm: 5.1153784 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 X82.956 Y88.45 E0.13441 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.3500061, dz: 0.0, de: 0.13441, dt: 0.061933395, ex_width_mm: 5.115391 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
G1 Y85.95 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 1825, end_id: 1886, z: 9.1 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 Y88.45 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X82.981 Y88.459 E-0.00937 
; Some(Annotation { label: Wipe, dx: 0.025001526, dy: 0.009002686, dz: 0.0, de: -0.00937, dt: 0.00020834606, ex_width_mm: -13.322473 })
; None
G1 Z9.3 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 Z9.5 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 Z9.7 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X97.736 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.754997, dy: 9.277, dz: 0.0, de: 0.0, dt: 0.09836665, ex_width_mm: 0.0 })
; None
G1 Z9.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
M73 P52 R5
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
M204 P800
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
M204 P1000
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 Z9.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X83.778 Y97.044 F9000 
; Some(Annotation { label: TravelMove, dx: -12.246002, dy: -1.4039993, dz: 0.0, de: 0.0, dt: 0.08164002, ex_width_mm: 0.0 })
; None
G1 Z9.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X82.956 E0.11129 
; Some(Annotation { label: ExtrusionMove, dx: -0.8219986, dy: 0.0, dz: 0.0, de: 0.11129, dt: 0.054799907, ex_width_mm: 5.1152987 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 Y95.366 E0.22719 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.6780014, dz: 0.0, de: 0.22719, dt: 0.11186676, ex_width_mm: 5.115438 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X83.885 Y94.983 E0.13605 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.3829956, dz: 0.0, de: 0.13605, dt: 0.061933395, ex_width_mm: 5.115431 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
M73 P53 R5
G1 X84.759 Y94.378 E0.14392 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.60500336, dz: 0.0, de: 0.14392, dt: 0.058266703, ex_width_mm: 5.115474 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X85.632 Y93.464 E0.17113 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.91400146, dz: 0.0, de: 0.17113, dt: 0.060933433, ex_width_mm: 5.1154943 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X86.506 Y92.399 E0.18654 
; Some(Annotation { label: ExtrusionMove, dx: 0.8739929, dy: -1.0649948, dz: 0.0, de: 0.18654, dt: 0.07099965, ex_width_mm: 5.1156507 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X86.943 Y91.975 E0.08244 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: -0.4240036, dz: 0.0, de: 0.08244, dt: 0.029133607, ex_width_mm: 5.1154327 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X87.379 Y91.682 E0.07112 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: -0.29299927, dz: 0.0, de: 0.07112, dt: 0.029066468, ex_width_mm: 5.1152725 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X88.253 Y91.425 E0.12335 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.25699615, dz: 0.0, de: 0.12335, dt: 0.058266703, ex_width_mm: 5.11571 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X89.126 Y91.441 E0.11822 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.01599884, dz: 0.0, de: 0.11822, dt: 0.058200072, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X90 Y91.635 E0.12122 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.19400024, dz: 0.0, de: 0.12122, dt: 0.058266703, ex_width_mm: 5.115698 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X90.874 Y92.005 E0.1285 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.36999512, dz: 0.0, de: 0.1285, dt: 0.058266703, ex_width_mm: 5.1154203 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X91.747 Y92.611 E0.14389 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.6060028, dz: 0.0, de: 0.14389, dt: 0.058200072, ex_width_mm: 5.1156206 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X92.621 Y93.525 E0.17122 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.91400146, dz: 0.0, de: 0.17122, dt: 0.060933433, ex_width_mm: 5.1153903 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X93.494 Y94.59 E0.18645 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 1.0649948, dz: 0.0, de: 0.18645, dt: 0.07099965, ex_width_mm: 5.115518 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X93.931 Y95.014 E0.08244 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.4240036, dz: 0.0, de: 0.08244, dt: 0.029133098, ex_width_mm: 5.1154785 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X94.368 Y95.306 E0.07116 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.29199982, dz: 0.0, de: 0.07116, dt: 0.029133098, ex_width_mm: 5.115483 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X95.241 Y95.564 E0.12325 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.25800323, dz: 0.0, de: 0.12325, dt: 0.058200072, ex_width_mm: 5.115347 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X96.115 Y95.548 E0.11836 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.01600647, dz: 0.0, de: 0.11836, dt: 0.058266703, ex_width_mm: 5.1157146 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X97.044 Y95.33 E0.1292 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.21799469, dz: 0.0, de: 0.1292, dt: 0.061933395, ex_width_mm: 5.115559 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 Y88.377 E0.9414 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -6.953003, dz: 0.0, de: 0.9414, dt: 0.46353352, ex_width_mm: 5.115495 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X96.115 Y87.995 E0.136 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.38199615, dz: 0.0, de: 0.136, dt: 0.061933395, ex_width_mm: 5.115488 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X95.241 Y87.389 E0.144 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.6060028, dz: 0.0, de: 0.144, dt: 0.058266703, ex_width_mm: 5.1155787 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X94.368 Y86.476 E0.17103 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.913002, dz: 0.0, de: 0.17103, dt: 0.060866803, ex_width_mm: 5.11543 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X93.494 Y85.41 E0.18664 
; Some(Annotation { label: ExtrusionMove, dx: -0.8739929, dy: -1.0659943, dz: 0.0, de: 0.18664, dt: 0.07106629, ex_width_mm: 5.115524 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X93.057 Y84.986 E0.08244 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: -0.4240036, dz: 0.0, de: 0.08244, dt: 0.029133607, ex_width_mm: 5.1154327 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X92.621 Y84.694 E0.07105 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: -0.29199982, dz: 0.0, de: 0.07105, dt: 0.029066468, ex_width_mm: 5.115661 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X91.747 Y84.436 E0.12338 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.25800323, dz: 0.0, de: 0.12338, dt: 0.058266703, ex_width_mm: 5.115356 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X90.874 Y84.452 E0.11822 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.01600647, dz: 0.0, de: 0.11822, dt: 0.058200072, ex_width_mm: 5.115512 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X90 Y84.647 E0.12124 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.1949997, dz: 0.0, de: 0.12124, dt: 0.058266703, ex_width_mm: 5.115301 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X89.126 Y85.017 E0.1285 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.36999512, dz: 0.0, de: 0.1285, dt: 0.058266703, ex_width_mm: 5.1154203 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X88.253 Y85.622 E0.14381 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.60500336, dz: 0.0, de: 0.14381, dt: 0.058200072, ex_width_mm: 5.1155186 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X87.379 Y86.536 E0.17122 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.91400146, dz: 0.0, de: 0.17122, dt: 0.060933433, ex_width_mm: 5.1153903 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X86.506 Y87.602 E0.18656 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 1.0659943, dz: 0.0, de: 0.18656, dt: 0.07106629, ex_width_mm: 5.1156645 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X86.069 Y88.025 E0.08235 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.42300415, dz: 0.0, de: 0.08235, dt: 0.029133098, ex_width_mm: 5.115738 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X85.632 Y88.318 E0.07124 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.29299927, dz: 0.0, de: 0.07124, dt: 0.029133098, ex_width_mm: 5.115822 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X84.759 Y88.575 E0.12322 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.25699615, dz: 0.0, de: 0.12322, dt: 0.058200072, ex_width_mm: 5.1157026 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X83.885 Y88.559 E0.11836 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.01599884, dz: 0.0, de: 0.11836, dt: 0.058266703, ex_width_mm: 5.115716 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 X82.956 Y88.341 E0.1292 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.21799469, dz: 0.0, de: 0.1292, dt: 0.061933395, ex_width_mm: 5.115559 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
G1 Y85.841 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 1895, end_id: 1956, z: 9.5 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 Y88.341 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X82.982 Y88.347 E-0.00937 
; Some(Annotation { label: Wipe, dx: 0.026000977, dy: 0.005996704, dz: 0.0, de: -0.00937, dt: 0.0002166748, ex_width_mm: -13.267285 })
; None
G1 Z9.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 Z9.9 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.280205 Z10.1 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.753998, dy: 9.389, dz: 0.0, de: 0.0, dt: 0.09835999, ex_width_mm: 0.0 })
; None
G1 Z9.9 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
M204 P800
M73 P54 R5
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
M204 P1000
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z10.1 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 X92.0667 Y97.044 F9000 
; Some(Annotation { label: TravelMove, dx: -12.3270035, dy: -1.4039993, dz: 0.0, de: 0.0, dt: 0.08218002, ex_width_mm: 0.0 })
; None
G1 Z9.9 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X82.956 E0.10033 
; Some(Annotation { label: ExtrusionMove, dx: -0.7409973, dy: 0.0, dz: 0.0, de: 0.10033, dt: 0.049399823, ex_width_mm: 5.115641 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 Y95.285 E0.23816 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.758995, dz: 0.0, de: 0.23816, dt: 0.117266335, ex_width_mm: 5.115524 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X83.885 Y95.027 E0.13054 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.25800323, dz: 0.0, de: 0.13054, dt: 0.061933395, ex_width_mm: 5.1153994 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X84.759 Y94.558 E0.1343 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.46900177, dz: 0.0, de: 0.1343, dt: 0.058266703, ex_width_mm: 5.1156373 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X85.632 Y93.817 E0.15504 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.7409973, dz: 0.0, de: 0.15504, dt: 0.058200072, ex_width_mm: 5.115567 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X86.506 Y92.891 E0.1724 
; Some(Annotation { label: ExtrusionMove, dx: 0.8739929, dy: -0.9260025, dz: 0.0, de: 0.1724, dt: 0.0617335, ex_width_mm: 5.1154704 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X87.379 Y92.138 E0.15609 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.75299835, dz: 0.0, de: 0.15609, dt: 0.058200072, ex_width_mm: 5.1153584 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X88.253 Y91.747 E0.12964 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.39099884, dz: 0.0, de: 0.12964, dt: 0.058266703, ex_width_mm: 5.1156144 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X89.126 Y91.632 E0.11922 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.114997864, dz: 0.0, de: 0.11922, dt: 0.058200072, ex_width_mm: 5.115459 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X90 Y91.709 E0.11879 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.07699585, dz: 0.0, de: 0.11879, dt: 0.058266703, ex_width_mm: 5.11535 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X90.874 Y91.962 E0.12319 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.25299835, dz: 0.0, de: 0.12319, dt: 0.058266703, ex_width_mm: 5.115361 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X91.747 Y92.43 E0.13411 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.46800232, dz: 0.0, de: 0.13411, dt: 0.058200072, ex_width_mm: 5.115379 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
M73 P55 R5
G1 X92.621 Y93.172 E0.15523 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.74199677, dz: 0.0, de: 0.15523, dt: 0.058266703, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X93.494 Y94.098 E0.17231 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.9260025, dz: 0.0, de: 0.17231, dt: 0.0617335, ex_width_mm: 5.1155334 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X94.368 Y94.85 E0.15611 
; Some(Annotation { label: ExtrusionMove, dx: 0.8739929, dy: 0.7519989, dz: 0.0, de: 0.15611, dt: 0.058266196, ex_width_mm: 5.1155744 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X95.241 Y95.241 E0.12951 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.39099884, dz: 0.0, de: 0.12951, dt: 0.058200072, ex_width_mm: 5.1153584 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X96.115 Y95.357 E0.11937 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.116004944, dz: 0.0, de: 0.11937, dt: 0.058266703, ex_width_mm: 5.1153727 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X97.044 Y95.264 E0.12641 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.09300232, dz: 0.0, de: 0.12641, dt: 0.061933395, ex_width_mm: 5.1154733 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 Y88.296 E0.94343 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -6.9680023, dz: 0.0, de: 0.94343, dt: 0.46453348, ex_width_mm: 5.115491 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X96.115 Y88.038 E0.13054 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.2579956, dz: 0.0, de: 0.13054, dt: 0.061933395, ex_width_mm: 5.11541 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X95.241 Y87.57 E0.13423 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.46800232, dz: 0.0, de: 0.13423, dt: 0.058266703, ex_width_mm: 5.1154065 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X94.368 Y86.828 E0.15513 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.74199677, dz: 0.0, de: 0.15513, dt: 0.058200072, ex_width_mm: 5.1156473 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X93.494 Y85.902 E0.1724 
; Some(Annotation { label: ExtrusionMove, dx: -0.8739929, dy: -0.9260025, dz: 0.0, de: 0.1724, dt: 0.0617335, ex_width_mm: 5.1154704 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X92.621 Y85.15 E0.15601 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.7519989, dz: 0.0, de: 0.15601, dt: 0.058200072, ex_width_mm: 5.1156325 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X91.747 Y84.759 E0.12964 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.39099884, dz: 0.0, de: 0.12964, dt: 0.058266703, ex_width_mm: 5.1156144 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X90.874 Y84.643 E0.11924 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.116004944, dz: 0.0, de: 0.11924, dt: 0.058200072, ex_width_mm: 5.1155496 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X90 Y84.72 E0.11879 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.07700348, dz: 0.0, de: 0.11879, dt: 0.058266703, ex_width_mm: 5.1153464 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X89.126 Y84.973 E0.12319 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.25299835, dz: 0.0, de: 0.12319, dt: 0.058266703, ex_width_mm: 5.115361 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X88.253 Y85.442 E0.13418 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.46900177, dz: 0.0, de: 0.13418, dt: 0.058200072, ex_width_mm: 5.1156077 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X87.379 Y86.183 E0.15514 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.7409973, dz: 0.0, de: 0.15514, dt: 0.058266703, ex_width_mm: 5.1154623 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X86.506 Y87.109 E0.17231 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.9260025, dz: 0.0, de: 0.17231, dt: 0.0617335, ex_width_mm: 5.1155334 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X85.632 Y87.862 E0.1562 
; Some(Annotation { label: ExtrusionMove, dx: -0.8739929, dy: 0.75299835, dz: 0.0, de: 0.1562, dt: 0.058266196, ex_width_mm: 5.11563 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X84.759 Y88.253 E0.12951 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.39099884, dz: 0.0, de: 0.12951, dt: 0.058200072, ex_width_mm: 5.1153584 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X83.885 Y88.369 E0.11937 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.116004944, dz: 0.0, de: 0.11937, dt: 0.058266703, ex_width_mm: 5.1153727 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 X82.956 Y88.275 E0.12642 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.09400177, dz: 0.0, de: 0.12642, dt: 0.061933395, ex_width_mm: 5.1153297 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
G1 Y85.775 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 1965, end_id: 2022, z: 9.9 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 Y88.275 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X82.982 Y88.278 E-0.00937 
; Some(Annotation { label: Wipe, dx: 0.026000977, dy: 0.002998352, dz: 0.0, de: -0.00937, dt: 0.0002166748, ex_width_mm: -13.525934 })
; None
G1 X91.280205 Z10.1 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 X91.280205 Z10.3 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.280205 Z10.5 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.753998, dy: 9.458, dz: 0.0, de: 0.0, dt: 0.09835999, ex_width_mm: 0.0 })
; None
G1 X107.509605 Z10.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X107.509605 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X107.509605 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X90.4904 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X90.4904 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X107.509605 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X107.509605 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
M73 P55 R4
G1 X108.40501 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
M204 P800
M73 P56 R4
; LAYER END
G1 X108.40501 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X89.595 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X89.595 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X108.40501 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X108.40501 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
M204 P1000
G1 X107.5547 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
; LAYER END
G1 X107.5547 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 X107.5547 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X105.6264 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z10.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X92.0205 Y97.044 F9000 
; Some(Annotation { label: TravelMove, dx: -12.369003, dy: -1.4039993, dz: 0.0, de: 0.0, dt: 0.08246002, ex_width_mm: 0.0 })
; None
G1 X92.0205 Z10.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X92.0205 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
M204 P1500
G1 X92.0205 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X91.2516 E0.09464 
; Some(Annotation { label: ExtrusionMove, dx: -0.6989975, dy: 0.0, dz: 0.0, de: 0.09464, dt: 0.046599835, ex_width_mm: 5.115464 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X91.2516 Y95.243 E0.24385 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.8010025, dz: 0.0, de: 0.24385, dt: 0.12006684, ex_width_mm: 5.1155734 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X92.273506 Y95.106 E0.12714 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.13699341, dz: 0.0, de: 0.12714, dt: 0.061933395, ex_width_mm: 5.115412 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X93.2349 Y94.761 E0.12722 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.34500122, dz: 0.0, de: 0.12722, dt: 0.058266703, ex_width_mm: 5.1154623 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X94.195206 Y94.152 E0.14412 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.60900116, dz: 0.0, de: 0.14412, dt: 0.058200072, ex_width_mm: 5.115554 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X95.1566 Y93.311 E0.16422 
; Some(Annotation { label: ExtrusionMove, dx: 0.8739929, dy: -0.8410034, dz: 0.0, de: 0.16422, dt: 0.058266196, ex_width_mm: 5.115445 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X96.1169 Y92.521 E0.15941 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.7899933, dz: 0.0, de: 0.15941, dt: 0.058200072, ex_width_mm: 5.115468 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X97.0783 Y92.016 E0.13667 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.5050049, dz: 0.0, de: 0.13667, dt: 0.058266703, ex_width_mm: 5.1155443 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X98.038605 Y91.78 E0.12244 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.23600006, dz: 0.0, de: 0.12244, dt: 0.058200072, ex_width_mm: 5.115388 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X99 Y91.743 E0.11844 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.037002563, dz: 0.0, de: 0.11844, dt: 0.058266703, ex_width_mm: 5.115449 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X99.9614 Y91.883 E0.11984 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.14000702, dz: 0.0, de: 0.11984, dt: 0.058266703, ex_width_mm: 5.115335 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X100.92171 Y92.227 E0.12705 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.34399414, dz: 0.0, de: 0.12705, dt: 0.058200072, ex_width_mm: 5.1157 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X101.8831 Y92.837 E0.14431 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.6100006, dz: 0.0, de: 0.14431, dt: 0.058266703, ex_width_mm: 5.1156096 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X102.84341 Y93.677 E0.16403 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.84000397, dz: 0.0, de: 0.16403, dt: 0.058200072, ex_width_mm: 5.1154637 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X103.804794 Y94.468 E0.1596 
; Some(Annotation { label: ExtrusionMove, dx: 0.8739929, dy: 0.79100037, dz: 0.0, de: 0.1596, dt: 0.058266196, ex_width_mm: 5.1154337 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X104.7651 Y94.972 E0.13648 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.5039978, dz: 0.0, de: 0.13648, dt: 0.058200072, ex_width_mm: 5.115371 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X105.7265 Y95.208 E0.12257 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.23600006, dz: 0.0, de: 0.12257, dt: 0.058266703, ex_width_mm: 5.115361 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X106.7484 Y95.236 E0.12584 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: 0.027999878, dz: 0.0, de: 0.12584, dt: 0.061933395, ex_width_mm: 5.115538 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X106.7484 Y88.254 E0.94533 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -6.9820023, dz: 0.0, de: 0.94533, dt: 0.4654668, ex_width_mm: 5.1155148 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X105.7265 Y88.117 E0.12714 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.13700104, dz: 0.0, de: 0.12714, dt: 0.061933395, ex_width_mm: 5.1154065 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
M73 P57 R4
G1 X104.7651 Y87.773 E0.12717 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.34399414, dz: 0.0, de: 0.12717, dt: 0.058266703, ex_width_mm: 5.115462 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X103.804794 Y87.163 E0.1442 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.6100006, dz: 0.0, de: 0.1442, dt: 0.058200072, ex_width_mm: 5.115643 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X102.84341 Y86.323 E0.16413 
; Some(Annotation { label: ExtrusionMove, dx: -0.8739929, dy: -0.84000397, dz: 0.0, de: 0.16413, dt: 0.058266196, ex_width_mm: 5.115564 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X101.8831 Y85.532 E0.1595 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.79100037, dz: 0.0, de: 0.1595, dt: 0.058200072, ex_width_mm: 5.1154184 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X100.92171 Y85.028 E0.1366 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.5039978, dz: 0.0, de: 0.1366, dt: 0.058266703, ex_width_mm: 5.115476 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X99.9614 Y84.792 E0.12244 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.23600006, dz: 0.0, de: 0.12244, dt: 0.058200072, ex_width_mm: 5.115388 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X99 Y84.755 E0.11844 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.037002563, dz: 0.0, de: 0.11844, dt: 0.058266703, ex_width_mm: 5.115449 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X98.038605 Y84.894 E0.11982 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.13899994, dz: 0.0, de: 0.11982, dt: 0.058266703, ex_width_mm: 5.115398 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X97.0783 Y85.239 E0.1271 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.34500122, dz: 0.0, de: 0.1271, dt: 0.058200072, ex_width_mm: 5.1156983 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X96.1169 Y85.848 E0.14423 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.60900116, dz: 0.0, de: 0.14423, dt: 0.058266703, ex_width_mm: 5.115518 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X95.1566 Y86.689 E0.16413 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.8410034, dz: 0.0, de: 0.16413, dt: 0.058200072, ex_width_mm: 5.115655 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X94.195206 Y87.479 E0.15951 
; Some(Annotation { label: ExtrusionMove, dx: -0.8739929, dy: 0.7899933, dz: 0.0, de: 0.15951, dt: 0.058266196, ex_width_mm: 5.1154804 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X93.2349 Y87.984 E0.13655 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.5050049, dz: 0.0, de: 0.13655, dt: 0.058200072, ex_width_mm: 5.115437 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X92.273506 Y88.22 E0.12257 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.23600006, dz: 0.0, de: 0.12257, dt: 0.058266703, ex_width_mm: 5.115361 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X91.2516 Y88.248 E0.12584 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: 0.027999878, dz: 0.0, de: 0.12584, dt: 0.061933395, ex_width_mm: 5.115538 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
G1 X91.2516 Y85.748 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
M204 P1000
G92 E0
G1 X91.2516 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 2031, end_id: 2088, z: 10.3 })
; LAYER END
G1 X91.2516 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X91.2516 Y88.248 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X91.280205 Y88.247 E-0.00937 
; Some(Annotation { label: Wipe, dx: 0.026000977, dy: -0.0009994507, dz: 0.0, de: -0.00937, dt: 0.0002166748, ex_width_mm: -13.605523 })
; None
G1 X91.280205 Z10.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.280205 Z10.7 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.280205 Z10.9 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.753998, dy: 9.488998, dz: 0.0, de: 0.0, dt: 0.09835999, ex_width_mm: 0.0 })
; None
G1 X107.509605 Z10.7 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X107.509605 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X107.509605 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X90.4904 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X90.4904 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X107.509605 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X107.509605 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X108.40501 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
M204 P800
; LAYER END
G1 X108.40501 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X89.595 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X89.595 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
M73 P58 R4
G1 X108.40501 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X108.40501 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
M204 P1000
G1 X107.5547 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
; LAYER END
G1 X107.5547 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 X107.5547 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X105.6264 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z10.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X105.9773 Y97.044 F9000 
; Some(Annotation { label: TravelMove, dx: 0.31900024, dy: -1.4039993, dz: 0.0, de: 0.0, dt: 0.009359995, ex_width_mm: 0.0 })
; None
G1 X105.9773 Z10.7 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X105.9773 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
M204 P1500
G1 X105.9773 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X106.7484 E0.09491 
; Some(Annotation { label: ExtrusionMove, dx: 0.7009964, dy: 0.0, dz: 0.0, de: 0.09491, dt: 0.046733093, ex_width_mm: 5.11543 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X106.7484 Y95.245 E0.24358 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.798996, dz: 0.0, de: 0.24358, dt: 0.11993306, ex_width_mm: 5.115609 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X105.7265 Y95.097 E0.12737 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.14800262, dz: 0.0, de: 0.12737, dt: 0.061933395, ex_width_mm: 5.115574 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X104.7651 Y94.743 E0.12767 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.3540039, dz: 0.0, de: 0.12767, dt: 0.058266703, ex_width_mm: 5.115359 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X103.804794 Y94.123 E0.14498 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.6199951, dz: 0.0, de: 0.14498, dt: 0.058200072, ex_width_mm: 5.115667 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X102.84341 Y93.276 E0.16479 
; Some(Annotation { label: ExtrusionMove, dx: -0.8739929, dy: -0.8470001, dz: 0.0, de: 0.16479, dt: 0.058266196, ex_width_mm: 5.1156316 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X101.8831 Y92.489 E0.15914 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.78700256, dz: 0.0, de: 0.15914, dt: 0.058200072, ex_width_mm: 5.115514 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X100.92171 Y91.994 E0.136 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.49499512, dz: 0.0, de: 0.136, dt: 0.058266703, ex_width_mm: 5.115657 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X99.9614 Y91.769 E0.12206 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.2250061, dz: 0.0, de: 0.12206, dt: 0.058200072, ex_width_mm: 5.115387 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X99 Y91.742 E0.11839 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.027000427, dz: 0.0, de: 0.11839, dt: 0.058266703, ex_width_mm: 5.115429 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X98.038605 Y91.891 E0.12004 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.14900208, dz: 0.0, de: 0.12004, dt: 0.058266703, ex_width_mm: 5.115392 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X97.0783 Y92.246 E0.1276 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.35500336, dz: 0.0, de: 0.1276, dt: 0.058200072, ex_width_mm: 5.1155396 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X96.1169 Y92.866 E0.14509 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.6199951, dz: 0.0, de: 0.14509, dt: 0.058266703, ex_width_mm: 5.115655 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X95.1566 Y93.713 E0.16469 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.8470001, dz: 0.0, de: 0.16469, dt: 0.058200072, ex_width_mm: 5.1155195 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X94.195206 Y94.499 E0.15915 
; Some(Annotation { label: ExtrusionMove, dx: -0.8739929, dy: 0.7860031, dz: 0.0, de: 0.15915, dt: 0.058266196, ex_width_mm: 5.1155376 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X93.2349 Y94.994 E0.13588 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.49500275, dz: 0.0, de: 0.13588, dt: 0.058200072, ex_width_mm: 5.115552 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X92.273506 Y95.22 E0.12223 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.22599792, dz: 0.0, de: 0.12223, dt: 0.058266703, ex_width_mm: 5.1156135 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X91.2516 Y95.237 E0.1258 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: 0.016998291, dz: 0.0, de: 0.1258, dt: 0.061933395, ex_width_mm: 5.115378 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X91.2516 Y88.257 E0.94506 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -6.9799957, dz: 0.0, de: 0.94506, dt: 0.46533307, ex_width_mm: 5.1155243 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X92.273506 Y88.109 E0.12737 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.14800262, dz: 0.0, de: 0.12737, dt: 0.061933395, ex_width_mm: 5.115574 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X93.2349 Y87.754 E0.12772 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.35500336, dz: 0.0, de: 0.12772, dt: 0.058266703, ex_width_mm: 5.115324 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X94.195206 Y87.134 E0.14498 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.6199951, dz: 0.0, de: 0.14498, dt: 0.058200072, ex_width_mm: 5.115667 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X95.1566 Y86.287 E0.16479 
; Some(Annotation { label: ExtrusionMove, dx: 0.8739929, dy: -0.8470001, dz: 0.0, de: 0.16479, dt: 0.058266196, ex_width_mm: 5.1156316 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X96.1169 Y85.501 E0.15905 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.7860031, dz: 0.0, de: 0.15905, dt: 0.058200072, ex_width_mm: 5.1155314 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X97.0783 Y85.006 E0.136 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.49500275, dz: 0.0, de: 0.136, dt: 0.058266703, ex_width_mm: 5.115638 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X98.038605 Y84.78 E0.1221 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.22599792, dz: 0.0, de: 0.1221, dt: 0.058200072, ex_width_mm: 5.1156554 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X99 Y84.753 E0.11839 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.027000427, dz: 0.0, de: 0.11839, dt: 0.058266703, ex_width_mm: 5.115429 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X99.9614 Y84.903 E0.12007 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.15000153, dz: 0.0, de: 0.12007, dt: 0.058266703, ex_width_mm: 5.115698 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X100.92171 Y85.257 E0.12755 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.3540039, dz: 0.0, de: 0.12755, dt: 0.058200072, ex_width_mm: 5.1155763 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X101.8831 Y85.878 E0.14516 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.62099457, dz: 0.0, de: 0.14516, dt: 0.058266703, ex_width_mm: 5.1153607 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
M73 P59 R4
G1 X102.84341 Y86.724 E0.1646 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.8460007, dz: 0.0, de: 0.1646, dt: 0.058200072, ex_width_mm: 5.11565 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X103.804794 Y87.511 E0.15924 
; Some(Annotation { label: ExtrusionMove, dx: 0.8739929, dy: 0.78700256, dz: 0.0, de: 0.15924, dt: 0.058266196, ex_width_mm: 5.115521 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X104.7651 Y88.006 E0.13588 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.49499512, dz: 0.0, de: 0.13588, dt: 0.058200072, ex_width_mm: 5.115571 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X105.7265 Y88.231 E0.12219 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.2250061, dz: 0.0, de: 0.12219, dt: 0.058266703, ex_width_mm: 5.115343 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X106.7484 Y88.249 E0.12581 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: 0.017997742, dz: 0.0, de: 0.12581, dt: 0.061933395, ex_width_mm: 5.115681 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
G1 X106.7484 Y85.749 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
M204 P1000
G92 E0
G1 X106.7484 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 2097, end_id: 2154, z: 10.7 })
; LAYER END
G1 X106.7484 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X106.7484 Y88.249 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X106.7198 Y88.248 E-0.00937 
; Some(Annotation { label: Wipe, dx: -0.026000977, dy: -0.0009994507, dz: 0.0, de: -0.00937, dt: 0.0002166748, ex_width_mm: -13.605523 })
; None
G1 X106.7198 Z10.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 Z11.1 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 Z11.3 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X97.736 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 0.7180023, dy: 9.487999, dz: 0.0, de: 0.0, dt: 0.06325333, ex_width_mm: 0.0 })
; None
G1 Z11.1 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
M204 P800
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
M73 P60 R4
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
M204 P1000
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 Z11.3 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X96.297 Y97.044 F9000 
; Some(Annotation { label: TravelMove, dx: 0.272995, dy: -1.4039993, dz: 0.0, de: 0.0, dt: 0.009359995, ex_width_mm: 0.0 })
; None
G1 Z11.1 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X97.044 E0.10114 
; Some(Annotation { label: ExtrusionMove, dx: 0.74700165, dy: 0.0, dz: 0.0, de: 0.10114, dt: 0.04980011, ex_width_mm: 5.1154904 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 Y95.29 E0.23748 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.7539978, dz: 0.0, de: 0.23748, dt: 0.11693319, ex_width_mm: 5.1154504 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X96.115 Y95.022 E0.13091 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.26799774, dz: 0.0, de: 0.13091, dt: 0.061933395, ex_width_mm: 5.1154537 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X95.241 Y94.542 E0.13501 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.48000336, dz: 0.0, de: 0.13501, dt: 0.058266703, ex_width_mm: 5.115611 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X94.368 Y93.787 E0.15627 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.75499725, dz: 0.0, de: 0.15627, dt: 0.058200072, ex_width_mm: 5.1154594 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X93.494 Y92.852 E0.17329 
; Some(Annotation { label: ExtrusionMove, dx: -0.8739929, dy: -0.9350052, dz: 0.0, de: 0.17329, dt: 0.062333677, ex_width_mm: 5.115516 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X92.621 Y92.102 E0.15583 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.75, dz: 0.0, de: 0.15583, dt: 0.058200072, ex_width_mm: 5.115517 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X91.747 Y91.721 E0.12909 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.3809967, dz: 0.0, de: 0.12909, dt: 0.058266703, ex_width_mm: 5.1155 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X90.874 Y91.617 E0.11904 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.104003906, dz: 0.0, de: 0.11904, dt: 0.058200072, ex_width_mm: 5.115685 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X90 Y91.704 E0.11892 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.087005615, dz: 0.0, de: 0.11892, dt: 0.058266703, ex_width_mm: 5.1154966 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X89.126 Y91.967 E0.12358 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.2630005, dz: 0.0, de: 0.12358, dt: 0.058266703, ex_width_mm: 5.1156354 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X88.253 Y92.447 E0.13489 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.47999573, dz: 0.0, de: 0.13489, dt: 0.058200072, ex_width_mm: 5.115576 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X87.379 Y93.201 E0.15629 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.7539978, dz: 0.0, de: 0.15629, dt: 0.058266703, ex_width_mm: 5.1156573 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X86.506 Y94.137 E0.1733 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.93600464, dz: 0.0, de: 0.1733, dt: 0.062400308, ex_width_mm: 5.115597 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X85.632 Y94.886 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: -0.8739929, dy: 0.74900055, dz: 0.0, de: 0.15584, dt: 0.058266196, ex_width_mm: 5.1153927 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X84.759 Y95.267 E0.12897 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.3809967, dz: 0.0, de: 0.12897, dt: 0.058200072, ex_width_mm: 5.11566 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X83.885 Y95.372 E0.11919 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.10500336, dz: 0.0, de: 0.11919, dt: 0.058266703, ex_width_mm: 5.115666 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X82.956 Y95.268 E0.12657 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.104003906, dz: 0.0, de: 0.12657, dt: 0.061933395, ex_width_mm: 5.115592 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 Y88.302 E0.94316 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -6.965996, dz: 0.0, de: 0.94316, dt: 0.4643997, ex_width_mm: 5.1155 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X83.885 Y88.033 E0.13095 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.26900482, dz: 0.0, de: 0.13095, dt: 0.061933395, ex_width_mm: 5.115538 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X84.759 Y87.553 E0.13501 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.47999573, dz: 0.0, de: 0.13501, dt: 0.058266703, ex_width_mm: 5.115629 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X85.632 Y86.799 E0.15618 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.7539978, dz: 0.0, de: 0.15618, dt: 0.058200072, ex_width_mm: 5.11541 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X86.506 Y85.863 E0.17339 
; Some(Annotation { label: ExtrusionMove, dx: 0.8739929, dy: -0.93600464, dz: 0.0, de: 0.17339, dt: 0.062400308, ex_width_mm: 5.115549 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X87.379 Y85.114 E0.15574 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.74900055, dz: 0.0, de: 0.15574, dt: 0.058200072, ex_width_mm: 5.115456 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X88.253 Y84.733 E0.12909 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.3809967, dz: 0.0, de: 0.12909, dt: 0.058266703, ex_width_mm: 5.1155 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X89.126 Y84.628 E0.11905 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.10500336, dz: 0.0, de: 0.11905, dt: 0.058200072, ex_width_mm: 5.115423 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X90 Y84.715 E0.11892 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.086997986, dz: 0.0, de: 0.11892, dt: 0.058266703, ex_width_mm: 5.1155005 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X90.874 Y84.978 E0.12358 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.2630005, dz: 0.0, de: 0.12358, dt: 0.058266703, ex_width_mm: 5.1156354 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X91.747 Y85.458 E0.13489 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.48000336, dz: 0.0, de: 0.13489, dt: 0.058200072, ex_width_mm: 5.115557 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X92.621 Y86.213 E0.15637 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.75499725, dz: 0.0, de: 0.15637, dt: 0.058266703, ex_width_mm: 5.115382 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X93.494 Y87.148 E0.1732 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.9350052, dz: 0.0, de: 0.1732, dt: 0.062333677, ex_width_mm: 5.115565 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X94.368 Y87.898 E0.15593 
; Some(Annotation { label: ExtrusionMove, dx: 0.8739929, dy: 0.75, dz: 0.0, de: 0.15593, dt: 0.058266196, ex_width_mm: 5.115455 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X95.241 Y88.279 E0.12897 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.3809967, dz: 0.0, de: 0.12897, dt: 0.058200072, ex_width_mm: 5.11566 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X96.115 Y88.383 E0.11917 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.104003906, dz: 0.0, de: 0.11917, dt: 0.058266703, ex_width_mm: 5.115497 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 X97.044 Y88.28 E0.12655 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.103004456, dz: 0.0, de: 0.12655, dt: 0.061933395, ex_width_mm: 5.11539 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
G1 Y85.78 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 2163, end_id: 2220, z: 11.1 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 Y88.28 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X97.018 Y88.283 E-0.00937 
; Some(Annotation { label: Wipe, dx: -0.026000977, dy: 0.002998352, dz: 0.0, de: -0.00937, dt: 0.0002166748, ex_width_mm: -13.525934 })
; None
G1 Z11.3 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 Z11.5 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 Z11.7 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X97.736 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 0.7180023, dy: 9.453003, dz: 0.0, de: 0.0, dt: 0.06302001, ex_width_mm: 0.0 })
; None
G1 Z11.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
M73 P61 R4
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
M204 P800
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
M204 P1000
M73 P62 R4
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 Z11.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X96.213 Y97.044 F9000 
; Some(Annotation { label: TravelMove, dx: 0.18899536, dy: -1.4039993, dz: 0.0, de: 0.0, dt: 0.009359995, ex_width_mm: 0.0 })
; None
G1 Z11.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X97.044 E0.11251 
; Some(Annotation { label: ExtrusionMove, dx: 0.8310013, dy: 0.0, dz: 0.0, de: 0.11251, dt: 0.055400085, ex_width_mm: 5.1153502 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 Y95.375 E0.22597 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.6689987, dz: 0.0, de: 0.22597, dt: 0.11126658, ex_width_mm: 5.115413 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X96.115 Y94.981 E0.13663 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.3939972, dz: 0.0, de: 0.13663, dt: 0.061933395, ex_width_mm: 5.1156306 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X95.241 Y94.363 E0.14493 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.61800385, dz: 0.0, de: 0.14493, dt: 0.058266703, ex_width_mm: 5.1155076 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X94.368 Y93.431 E0.1729 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.9319992, dz: 0.0, de: 0.1729, dt: 0.062133282, ex_width_mm: 5.1154838 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X93.494 Y92.35 E0.18822 
; Some(Annotation { label: ExtrusionMove, dx: -0.8739929, dy: -1.0810013, dz: 0.0, de: 0.18822, dt: 0.072066754, ex_width_mm: 5.115641 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X93.057 Y91.925 E0.08253 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: -0.42499542, dz: 0.0, de: 0.08253, dt: 0.029133607, ex_width_mm: 5.115211 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X92.621 Y91.637 E0.07075 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: -0.288002, dz: 0.0, de: 0.07075, dt: 0.029066468, ex_width_mm: 5.1156445 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X91.747 Y91.394 E0.12282 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.24300385, dz: 0.0, de: 0.12282, dt: 0.058266703, ex_width_mm: 5.1153355 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X90.874 Y91.422 E0.11826 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.027999878, dz: 0.0, de: 0.11826, dt: 0.058200072, ex_width_mm: 5.115473 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X90 Y91.627 E0.12155 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.20500183, dz: 0.0, de: 0.12155, dt: 0.058266703, ex_width_mm: 5.1156354 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X89.126 Y92.007 E0.12904 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.38000488, dz: 0.0, de: 0.12904, dt: 0.058266703, ex_width_mm: 5.115643 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X88.253 Y92.625 E0.14482 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.6179962, dz: 0.0, de: 0.14482, dt: 0.058200072, ex_width_mm: 5.115545 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X87.379 Y93.557 E0.17299 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.9319992, dz: 0.0, de: 0.17299, dt: 0.062133282, ex_width_mm: 5.1154094 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X86.506 Y94.639 E0.18824 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 1.0820007, dz: 0.0, de: 0.18824, dt: 0.07213338, ex_width_mm: 5.1156173 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X86.069 Y95.063 E0.08244 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.4240036, dz: 0.0, de: 0.08244, dt: 0.029133098, ex_width_mm: 5.1154785 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X85.632 Y95.351 E0.07086 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.28799438, dz: 0.0, de: 0.07086, dt: 0.029133098, ex_width_mm: 5.115473 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X84.759 Y95.595 E0.12273 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.2440033, dz: 0.0, de: 0.12273, dt: 0.058200072, ex_width_mm: 5.115503 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X83.885 Y95.567 E0.1184 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.027999878, dz: 0.0, de: 0.1184, dt: 0.058266703, ex_width_mm: 5.115678 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X82.956 Y95.338 E0.12955 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.2290039, dz: 0.0, de: 0.12955, dt: 0.061933395, ex_width_mm: 5.115612 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 Y88.386 E0.94127 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -6.951996, dz: 0.0, de: 0.94127, dt: 0.46346638, ex_width_mm: 5.11553 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X83.885 Y87.993 E0.13657 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.39300537, dz: 0.0, de: 0.13657, dt: 0.061933395, ex_width_mm: 5.1153445 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X84.759 Y87.375 E0.14493 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.6179962, dz: 0.0, de: 0.14493, dt: 0.058266703, ex_width_mm: 5.1155286 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X85.632 Y86.443 E0.1729 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.9319992, dz: 0.0, de: 0.1729, dt: 0.062133282, ex_width_mm: 5.1154838 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X86.506 Y85.361 E0.18832 
; Some(Annotation { label: ExtrusionMove, dx: 0.8739929, dy: -1.0820007, dz: 0.0, de: 0.18832, dt: 0.07213338, ex_width_mm: 5.115498 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X86.943 Y84.937 E0.08244 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: -0.4240036, dz: 0.0, de: 0.08244, dt: 0.029133607, ex_width_mm: 5.1154327 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X87.379 Y84.649 E0.07075 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: -0.28799438, dz: 0.0, de: 0.07075, dt: 0.029066468, ex_width_mm: 5.115686 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X88.253 Y84.405 E0.12286 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.2440033, dz: 0.0, de: 0.12286, dt: 0.058266703, ex_width_mm: 5.1154885 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X89.126 Y84.433 E0.11826 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.027999878, dz: 0.0, de: 0.11826, dt: 0.058200072, ex_width_mm: 5.115473 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X90 Y84.638 E0.12155 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.20500183, dz: 0.0, de: 0.12155, dt: 0.058266703, ex_width_mm: 5.1156354 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X90.874 Y85.019 E0.12909 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.3809967, dz: 0.0, de: 0.12909, dt: 0.058266703, ex_width_mm: 5.1155 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X91.747 Y85.637 E0.14482 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.61800385, dz: 0.0, de: 0.14482, dt: 0.058200072, ex_width_mm: 5.115524 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X92.621 Y86.569 E0.17299 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.9319992, dz: 0.0, de: 0.17299, dt: 0.062133282, ex_width_mm: 5.1154094 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X93.494 Y87.65 E0.18813 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 1.0810013, dz: 0.0, de: 0.18813, dt: 0.072066754, ex_width_mm: 5.1154895 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X93.931 Y88.075 E0.08253 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.42499542, dz: 0.0, de: 0.08253, dt: 0.029133098, ex_width_mm: 5.115257 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X94.368 Y88.363 E0.07086 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.288002, dz: 0.0, de: 0.07086, dt: 0.029133098, ex_width_mm: 5.1154313 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X95.241 Y88.606 E0.12269 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.24300385, dz: 0.0, de: 0.12269, dt: 0.058200072, ex_width_mm: 5.115351 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X96.115 Y88.578 E0.1184 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.027999878, dz: 0.0, de: 0.1184, dt: 0.058266703, ex_width_mm: 5.115678 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 X97.044 Y88.349 E0.12955 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.2290039, dz: 0.0, de: 0.12955, dt: 0.061933395, ex_width_mm: 5.115612 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
G1 Y85.849 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 2229, end_id: 2290, z: 11.5 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 Y88.349 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X97.018 Y88.355 E-0.00937 
; Some(Annotation { label: Wipe, dx: -0.026000977, dy: 0.0060043335, dz: 0.0, de: -0.00937, dt: 0.0002166748, ex_width_mm: -13.266432 })
; None
G1 Z11.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 Z11.9 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X106.7198 Z12.1 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 0.7180023, dy: 9.380997, dz: 0.0, de: 0.0, dt: 0.06253998, ex_width_mm: 0.0 })
; None
G1 Z11.9 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
M73 P63 R4
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
M204 P800
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
M204 P1000
M73 P64 R4
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z12.1 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 X105.692406 Y97.044 F9000 
; Some(Annotation { label: TravelMove, dx: 0.05999756, dy: -1.4039993, dz: 0.0, de: 0.0, dt: 0.009359995, ex_width_mm: 0.0 })
; None
G1 Z11.9 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X97.044 E0.12998 
; Some(Annotation { label: ExtrusionMove, dx: 0.9599991, dy: 0.0, dz: 0.0, de: 0.12998, dt: 0.063999936, ex_width_mm: 5.115542 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 Y95.503 E0.20864 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.5410004, dz: 0.0, de: 0.20864, dt: 0.10273336, ex_width_mm: 5.115413 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X96.115 Y94.98 E0.14434 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.522995, dz: 0.0, de: 0.14434, dt: 0.061933395, ex_width_mm: 5.115348 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X95.241 Y94.201 E0.15852 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.77900696, dz: 0.0, de: 0.15852, dt: 0.058266703, ex_width_mm: 5.115572 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X94.805 Y93.659 E0.09418 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: -0.5419998, dz: 0.0, de: 0.09418, dt: 0.036133323, ex_width_mm: 5.115475 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X93.494 Y91.641 E0.32582 
; Some(Annotation { label: ExtrusionMove, dx: -1.310997, dy: -2.0179977, dz: 0.0, de: 0.32582, dt: 0.13453318, ex_width_mm: 5.1154733 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X93.057 Y91.223 E0.08188 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: -0.41799927, dz: 0.0, de: 0.08188, dt: 0.029133607, ex_width_mm: 5.115684 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X92.621 Y91.025 E0.06483 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: -0.19799805, dz: 0.0, de: 0.06483, dt: 0.029066468, ex_width_mm: 5.115206 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X91.747 Y90.991 E0.11842 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.03400421, dz: 0.0, de: 0.11842, dt: 0.058266703, ex_width_mm: 5.1152964 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X90.874 Y91.177 E0.12085 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.18600464, dz: 0.0, de: 0.12085, dt: 0.058200072, ex_width_mm: 5.1153736 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X90 Y91.506 E0.12644 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.32899475, dz: 0.0, de: 0.12644, dt: 0.058266703, ex_width_mm: 5.1154475 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X89.126 Y92.009 E0.13653 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.503006, dz: 0.0, de: 0.13653, dt: 0.058266703, ex_width_mm: 5.1153646 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X88.253 Y92.788 E0.15842 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.7789993, dz: 0.0, de: 0.15842, dt: 0.058200072, ex_width_mm: 5.1156263 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X87.816 Y93.33 E0.09427 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.5419998, dz: 0.0, de: 0.09427, dt: 0.036133323, ex_width_mm: 5.1157527 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X86.506 Y95.348 E0.32575 
; Some(Annotation { label: ExtrusionMove, dx: -1.3100052, dy: 2.0179977, dz: 0.0, de: 0.32575, dt: 0.13453318, ex_width_mm: 5.115523 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X86.069 Y95.766 E0.08188 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.41799927, dz: 0.0, de: 0.08188, dt: 0.029133098, ex_width_mm: 5.1157303 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X85.632 Y95.963 E0.0649 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.1969986, dz: 0.0, de: 0.0649, dt: 0.029133098, ex_width_mm: 5.1154027 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X84.759 Y95.998 E0.11829 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.035003662, dz: 0.0, de: 0.11829, dt: 0.058200072, ex_width_mm: 5.1152906 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X83.885 Y95.812 E0.12099 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.18600464, dz: 0.0, de: 0.12099, dt: 0.058266703, ex_width_mm: 5.1156974 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X82.956 Y95.45 E0.13499 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.3619995, dz: 0.0, de: 0.13499, dt: 0.061933395, ex_width_mm: 5.1153517 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 Y88.515 E0.93897 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -6.9349976, dz: 0.0, de: 0.93897, dt: 0.46233317, ex_width_mm: 5.115538 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X83.885 Y87.991 E0.14441 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.5240021, dz: 0.0, de: 0.14441, dt: 0.061933395, ex_width_mm: 5.115457 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X84.759 Y87.212 E0.15852 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.7789993, dz: 0.0, de: 0.15852, dt: 0.058266703, ex_width_mm: 5.1155944 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X85.195 Y86.67 E0.09418 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: -0.5419998, dz: 0.0, de: 0.09418, dt: 0.036133323, ex_width_mm: 5.115475 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X86.506 Y84.652 E0.32582 
; Some(Annotation { label: ExtrusionMove, dx: 1.310997, dy: -2.0179977, dz: 0.0, de: 0.32582, dt: 0.13453318, ex_width_mm: 5.1154733 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X86.943 Y84.234 E0.08188 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: -0.41799927, dz: 0.0, de: 0.08188, dt: 0.029133607, ex_width_mm: 5.115684 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X87.379 Y84.037 E0.06478 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: -0.1969986, dz: 0.0, de: 0.06478, dt: 0.029066468, ex_width_mm: 5.115666 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X88.253 Y84.002 E0.11843 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.035003662, dz: 0.0, de: 0.11843, dt: 0.058266703, ex_width_mm: 5.115498 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X89.126 Y84.188 E0.12085 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.18600464, dz: 0.0, de: 0.12085, dt: 0.058200072, ex_width_mm: 5.1153736 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X90 Y84.518 E0.12649 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.3299942, dz: 0.0, de: 0.12649, dt: 0.058266703, ex_width_mm: 5.1155386 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X90.874 Y85.02 E0.13647 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.5019989, dz: 0.0, de: 0.13647, dt: 0.058266703, ex_width_mm: 5.1156626 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X91.747 Y85.799 E0.15842 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.77900696, dz: 0.0, de: 0.15842, dt: 0.058200072, ex_width_mm: 5.115604 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X92.184 Y86.341 E0.09427 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.5419998, dz: 0.0, de: 0.09427, dt: 0.036133323, ex_width_mm: 5.1157527 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X93.494 Y88.36 E0.32586 
; Some(Annotation { label: ExtrusionMove, dx: 1.3100052, dy: 2.0189972, dz: 0.0, de: 0.32586, dt: 0.13459982, ex_width_mm: 5.115467 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X93.931 Y88.777 E0.08178 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.41699982, dz: 0.0, de: 0.08178, dt: 0.029133098, ex_width_mm: 5.1153226 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X94.368 Y88.975 E0.06496 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.19799805, dz: 0.0, de: 0.06496, dt: 0.029133098, ex_width_mm: 5.11574 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X95.241 Y89.009 E0.11829 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.03400421, dz: 0.0, de: 0.11829, dt: 0.058200072, ex_width_mm: 5.115522 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
M73 P64 R3
G1 X96.115 Y88.823 E0.12099 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.18600464, dz: 0.0, de: 0.12099, dt: 0.058266703, ex_width_mm: 5.1156974 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 X97.044 Y88.462 E0.13495 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.36100006, dz: 0.0, de: 0.13495, dt: 0.061933395, ex_width_mm: 5.1156955 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
G1 Y85.962 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 2299, end_id: 2360, z: 11.9 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 Y88.462 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X97.019 Y88.472 E-0.00937 
; Some(Annotation { label: Wipe, dx: -0.025001526, dy: 0.010002136, dz: 0.0, de: -0.00937, dt: 0.00020834606, ex_width_mm: -13.146825 })
; None
G1 X106.7209 Z12.1 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 X106.7209 Z12.3 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X106.7209 Z12.5 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 0.71700287, dy: 9.264, dz: 0.0, de: 0.0, dt: 0.06176, ex_width_mm: 0.0 })
; None
G1 X107.509605 Z12.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X107.509605 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X107.509605 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X90.4904 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X90.4904 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X107.509605 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
M73 P65 R3
G1 X107.509605 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X108.40501 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
M204 P800
; LAYER END
G1 X108.40501 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X89.595 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X89.595 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X108.40501 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X108.40501 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
M204 P1000
G1 X107.5547 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
M73 P66 R3
; LAYER END
G1 X107.5547 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 X107.5547 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X105.6264 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z12.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X105.4922 Y97.044 F9000 
; Some(Annotation { label: TravelMove, dx: -0.12200165, dy: -1.4039993, dz: 0.0, de: 0.0, dt: 0.009359995, ex_width_mm: 0.0 })
; None
G1 X105.4922 Z12.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X105.4922 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
M204 P1500
G1 X105.4922 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X106.7484 E0.15462 
; Some(Annotation { label: ExtrusionMove, dx: 1.1419983, dy: 0.0, dz: 0.0, de: 0.15462, dt: 0.07613322, ex_width_mm: 5.1154766 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X106.7484 Y95.685 E0.184 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.3590012, dz: 0.0, de: 0.184, dt: 0.09060007, ex_width_mm: 5.1154504 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X106.018 Y95.241 E0.10815 
; Some(Annotation { label: ExtrusionMove, dx: -0.66400146, dy: -0.44400024, dz: 0.0, de: 0.10815, dt: 0.044266764, ex_width_mm: 5.115528 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X105.4636 Y94.805 E0.09023 
; Some(Annotation { label: ExtrusionMove, dx: -0.5039978, dy: -0.435997, dz: 0.0, de: 0.09023, dt: 0.033599854, ex_width_mm: 5.1155577 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X105.02801 Y94.368 E0.07985 
; Some(Annotation { label: ExtrusionMove, dx: -0.3959961, dy: -0.4370041, dz: 0.0, de: 0.07985, dt: 0.029133607, ex_width_mm: 5.1157007 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X104.385605 Y93.494 E0.14232 
; Some(Annotation { label: ExtrusionMove, dx: -0.58399963, dy: -0.8739929, dz: 0.0, de: 0.14232, dt: 0.058266196, ex_width_mm: 5.115483 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X103.92911 Y92.621 E0.13088 
; Some(Annotation { label: ExtrusionMove, dx: -0.41500092, dy: -0.8730011, dz: 0.0, de: 0.13088, dt: 0.058200072, ex_width_mm: 5.115674 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X103.5881 Y91.747 E0.12556 
; Some(Annotation { label: ExtrusionMove, dx: -0.3100052, dy: -0.87400055, dz: 0.0, de: 0.12556, dt: 0.058266703, ex_width_mm: 5.1155577 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X103.3626 Y90.874 E0.12142 
; Some(Annotation { label: ExtrusionMove, dx: -0.2049942, dy: -0.8730011, dz: 0.0, de: 0.12142, dt: 0.058200072, ex_width_mm: 5.115719 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X103.365906 Y90.437 E0.05917 
; Some(Annotation { label: ExtrusionMove, dx: 0.002998352, dy: -0.4370041, dz: 0.0, de: 0.05917, dt: 0.029133607, ex_width_mm: 5.115543 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X103.704704 Y90 E0.07239 
; Some(Annotation { label: ExtrusionMove, dx: 0.30799866, dy: -0.43699646, dz: 0.0, de: 0.07239, dt: 0.029133098, ex_width_mm: 5.115773 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X104.6452 Y89.563 E0.13001 
; Some(Annotation { label: ExtrusionMove, dx: 0.85500336, dy: -0.43699646, dz: 0.0, de: 0.13001, dt: 0.057000224, ex_width_mm: 5.1156163 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X105.7276 Y89.126 E0.14578 
; Some(Annotation { label: ExtrusionMove, dx: 0.98399353, dy: -0.4370041, dz: 0.0, de: 0.14578, dt: 0.06559957, ex_width_mm: 5.11566 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X106.7484 Y88.625 E0.14279 
; Some(Annotation { label: ExtrusionMove, dx: 0.9280014, dy: -0.50099945, dz: 0.0, de: 0.14279, dt: 0.061866757, ex_width_mm: 5.1155787 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X106.7484 Y86.125 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
M204 P1000
G1 X106.7484 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
; LAYER END
G1 X106.7484 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X106.7484 Y88.625 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X106.72311 Y88.637 E-0.00937 
; Some(Annotation { label: Wipe, dx: -0.022994995, dy: 0.012001038, dz: 0.0, de: -0.00937, dt: 0.00019162496, ex_width_mm: -13.648478 })
; None
G1 X106.72311 Z12.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.2516 Y86.197 F9000 
; Some(Annotation { label: TravelMove, dx: -14.065002, dy: -2.4400024, dz: 0.0, de: 0.0, dt: 0.09376668, ex_width_mm: 0.0 })
; None
G1 X91.2516 Z12.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X91.2516 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
M204 P1500
G1 X91.2516 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X91.2516 Y88.697 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X91.982 Y88.253 E0.10815 
; Some(Annotation { label: ExtrusionMove, dx: 0.66400146, dy: -0.44400024, dz: 0.0, de: 0.10815, dt: 0.044266764, ex_width_mm: 5.115528 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X92.5364 Y87.816 E0.09032 
; Some(Annotation { label: ExtrusionMove, dx: 0.5039978, dy: -0.43699646, dz: 0.0, de: 0.09032, dt: 0.033599854, ex_width_mm: 5.115638 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X92.972 Y87.379 E0.07985 
; Some(Annotation { label: ExtrusionMove, dx: 0.3959961, dy: -0.4370041, dz: 0.0, de: 0.07985, dt: 0.029133607, ex_width_mm: 5.1157007 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X93.614395 Y86.506 E0.14221 
; Some(Annotation { label: ExtrusionMove, dx: 0.58399963, dy: -0.8730011, dz: 0.0, de: 0.14221, dt: 0.058200072, ex_width_mm: 5.115541 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X94.0709 Y85.632 E0.131 
; Some(Annotation { label: ExtrusionMove, dx: 0.41500092, dy: -0.8739929, dz: 0.0, de: 0.131, dt: 0.058266196, ex_width_mm: 5.115623 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X94.4119 Y84.759 E0.12543 
; Some(Annotation { label: ExtrusionMove, dx: 0.3100052, dy: -0.8730011, dz: 0.0, de: 0.12543, dt: 0.058200072, ex_width_mm: 5.115457 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X94.638504 Y83.885 E0.12158 
; Some(Annotation { label: ExtrusionMove, dx: 0.20600128, dy: -0.87400055, dz: 0.0, de: 0.12158, dt: 0.058266703, ex_width_mm: 5.1155944 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X94.6341 Y83.448 E0.05917 
; Some(Annotation { label: ExtrusionMove, dx: -0.004005432, dy: -0.4370041, dz: 0.0, de: 0.05917, dt: 0.029133607, ex_width_mm: 5.115449 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X94.2953 Y83.012 E0.07228 
; Some(Annotation { label: ExtrusionMove, dx: -0.30799866, dy: -0.435997, dz: 0.0, de: 0.07228, dt: 0.029066468, ex_width_mm: 5.1158137 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X94.1765 Y82.956 E0.01647 
; Some(Annotation { label: ExtrusionMove, dx: -0.10800171, dy: -0.055999756, dz: 0.0, de: 0.01647, dt: 0.007200114, ex_width_mm: 5.114976 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X95.9739 E0.22124 
; Some(Annotation { label: ExtrusionMove, dx: 1.6340027, dy: 0.0, dz: 0.0, de: 0.22124, dt: 0.10893351, ex_width_mm: 5.1156025 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X96.01791 Y83.012 E0.00932 
; Some(Annotation { label: ExtrusionMove, dx: 0.040000916, dy: 0.055999756, dz: 0.0, de: 0.00932, dt: 0.0037333171, ex_width_mm: 5.1167464 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X96.9584 Y83.448 E0.12995 
; Some(Annotation { label: ExtrusionMove, dx: 0.8549957, dy: 0.435997, dz: 0.0, de: 0.12995, dt: 0.056999713, ex_width_mm: 5.1157136 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X98.0408 Y83.885 E0.14578 
; Some(Annotation { label: ExtrusionMove, dx: 0.98400116, dy: 0.4370041, dz: 0.0, de: 0.14578, dt: 0.065600075, ex_width_mm: 5.115628 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X98.9549 Y84.322 E0.12712 
; Some(Annotation { label: ExtrusionMove, dx: 0.8310013, dy: 0.43699646, dz: 0.0, de: 0.12712, dt: 0.055400085, ex_width_mm: 5.1154227 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X99.6688 Y84.759 E0.10593 
; Some(Annotation { label: ExtrusionMove, dx: 0.6490021, dy: 0.4370041, dz: 0.0, de: 0.10593, dt: 0.043266803, ex_width_mm: 5.1152472 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X100.2232 Y85.195 E0.09023 
; Some(Annotation { label: ExtrusionMove, dx: 0.5039978, dy: 0.435997, dz: 0.0, de: 0.09023, dt: 0.033599854, ex_width_mm: 5.1155577 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X100.659904 Y85.632 E0.07994 
; Some(Annotation { label: ExtrusionMove, dx: 0.39700317, dy: 0.4370041, dz: 0.0, de: 0.07994, dt: 0.029133607, ex_width_mm: 5.115596 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X101.30231 Y86.506 E0.14232 
; Some(Annotation { label: ExtrusionMove, dx: 0.58399963, dy: 0.8739929, dz: 0.0, de: 0.14232, dt: 0.058266196, ex_width_mm: 5.115483 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X101.757706 Y87.379 E0.13082 
; Some(Annotation { label: ExtrusionMove, dx: 0.41400146, dy: 0.8730011, dz: 0.0, de: 0.13082, dt: 0.058200072, ex_width_mm: 5.1155977 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X102.0998 Y88.253 E0.1256 
; Some(Annotation { label: ExtrusionMove, dx: 0.310997, dy: 0.87400055, dz: 0.0, de: 0.1256, dt: 0.058266703, ex_width_mm: 5.115356 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X102.3253 Y89.126 E0.12142 
; Some(Annotation { label: ExtrusionMove, dx: 0.20500183, dy: 0.8730011, dz: 0.0, de: 0.12142, dt: 0.058200072, ex_width_mm: 5.1157093 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X102.322 Y89.563 E0.05917 
; Some(Annotation { label: ExtrusionMove, dx: -0.0030059814, dy: 0.4370041, dz: 0.0, de: 0.05917, dt: 0.029133607, ex_width_mm: 5.1155424 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X101.9821 Y90 E0.07246 
; Some(Annotation { label: ExtrusionMove, dx: -0.3089981, dy: 0.43699646, dz: 0.0, de: 0.07246, dt: 0.029133098, ex_width_mm: 5.115205 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X101.0416 Y90.437 E0.13001 
; Some(Annotation { label: ExtrusionMove, dx: -0.8549957, dy: 0.43699646, dz: 0.0, de: 0.13001, dt: 0.056999713, ex_width_mm: 5.1156526 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X99.960304 Y90.874 E0.14565 
; Some(Annotation { label: ExtrusionMove, dx: -0.9830017, dy: 0.4370041, dz: 0.0, de: 0.14565, dt: 0.06553345, ex_width_mm: 5.1154046 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X99.045105 Y91.31 E0.12718 
; Some(Annotation { label: ExtrusionMove, dx: -0.83200073, dy: 0.435997, dz: 0.0, de: 0.12718, dt: 0.055466715, ex_width_mm: 5.1155457 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X98.3312 Y91.747 E0.10593 
; Some(Annotation { label: ExtrusionMove, dx: -0.6490021, dy: 0.4370041, dz: 0.0, de: 0.10593, dt: 0.043266803, ex_width_mm: 5.1152472 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X97.7768 Y92.184 E0.09032 
; Some(Annotation { label: ExtrusionMove, dx: -0.5039978, dy: 0.43699646, dz: 0.0, de: 0.09032, dt: 0.033599854, ex_width_mm: 5.115638 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X97.340096 Y92.621 E0.07994 
; Some(Annotation { label: ExtrusionMove, dx: -0.39700317, dy: 0.4370041, dz: 0.0, de: 0.07994, dt: 0.029133607, ex_width_mm: 5.115596 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X96.6977 Y93.494 E0.14221 
; Some(Annotation { label: ExtrusionMove, dx: -0.58399963, dy: 0.8730011, dz: 0.0, de: 0.14221, dt: 0.058200072, ex_width_mm: 5.115541 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X96.242294 Y94.368 E0.13094 
; Some(Annotation { label: ExtrusionMove, dx: -0.41400146, dy: 0.8739929, dz: 0.0, de: 0.13094, dt: 0.058266196, ex_width_mm: 5.115545 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X95.9002 Y95.241 E0.12548 
; Some(Annotation { label: ExtrusionMove, dx: -0.310997, dy: 0.8730011, dz: 0.0, de: 0.12548, dt: 0.058200072, ex_width_mm: 5.115661 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X95.6747 Y96.115 E0.12155 
; Some(Annotation { label: ExtrusionMove, dx: -0.20500183, dy: 0.87400055, dz: 0.0, de: 0.12155, dt: 0.058266703, ex_width_mm: 5.1156354 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X95.67801 Y96.552 E0.05917 
; Some(Annotation { label: ExtrusionMove, dx: 0.0030059814, dy: 0.4370041, dz: 0.0, de: 0.05917, dt: 0.029133607, ex_width_mm: 5.1155424 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X96.01791 Y96.988 E0.07235 
; Some(Annotation { label: ExtrusionMove, dx: 0.3089981, dy: 0.435997, dz: 0.0, de: 0.07235, dt: 0.029066468, ex_width_mm: 5.1152368 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X96.1367 Y97.044 E0.01647 
; Some(Annotation { label: ExtrusionMove, dx: 0.10800171, dy: 0.055999756, dz: 0.0, de: 0.01647, dt: 0.007200114, ex_width_mm: 5.114976 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X94.3382 E0.22137 
; Some(Annotation { label: ExtrusionMove, dx: -1.6350021, dy: 0.0, dz: 0.0, de: 0.22137, dt: 0.10900014, ex_width_mm: 5.11548 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X94.2953 Y96.988 E0.00924 
; Some(Annotation { label: ExtrusionMove, dx: -0.039001465, dy: -0.055999756, dz: 0.0, de: 0.00924, dt: 0.0037333171, ex_width_mm: 5.1156483 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X93.3548 Y96.552 E0.12995 
; Some(Annotation { label: ExtrusionMove, dx: -0.85500336, dy: -0.435997, dz: 0.0, de: 0.12995, dt: 0.057000224, ex_width_mm: 5.115677 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X92.27241 Y96.115 E0.14578 
; Some(Annotation { label: ExtrusionMove, dx: -0.98399353, dy: -0.4370041, dz: 0.0, de: 0.14578, dt: 0.06559957, ex_width_mm: 5.11566 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X91.2516 Y95.613 E0.14285 
; Some(Annotation { label: ExtrusionMove, dx: -0.9280014, dy: -0.5019989, dz: 0.0, de: 0.14285, dt: 0.061866757, ex_width_mm: 5.1154237 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
G1 X91.2516 Y93.113 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
M204 P1000
G92 E0
G1 X91.2516 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 2369, end_id: 2458, z: 12.3 })
; LAYER END
G1 X91.2516 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X91.2516 Y95.613 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X91.2769 Y95.626 E-0.00937 
; Some(Annotation { label: Wipe, dx: 0.022994995, dy: 0.013000488, dz: 0.0, de: -0.00937, dt: 0.00019162496, ex_width_mm: -13.401872 })
; None
G1 X91.2769 Z12.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.2769 Z12.7 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.2769 Z12.9 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.757004, dy: 2.1100006, dz: 0.0, de: 0.0, dt: 0.09838002, ex_width_mm: 0.0 })
; None
G1 X107.509605 Z12.7 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X107.509605 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X107.509605 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X90.4904 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X90.4904 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
M73 P67 R3
G1 X107.509605 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X107.509605 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X108.40501 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
M204 P800
; LAYER END
G1 X108.40501 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X89.595 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X89.595 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X108.40501 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X108.40501 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
M204 P1000
G1 X107.5547 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
M73 P68 R3
; LAYER END
G1 X107.5547 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 X107.5547 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X105.6264 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z12.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X105.240295 Y97.044 F9000 
; Some(Annotation { label: TravelMove, dx: -0.35100555, dy: -1.4039993, dz: 0.0, de: 0.0, dt: 0.009359995, ex_width_mm: 0.0 })
; None
G1 X105.240295 Z12.7 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X105.240295 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
M204 P1500
G1 X105.240295 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X106.7484 E0.18563 
; Some(Annotation { label: ExtrusionMove, dx: 1.3710022, dy: 0.0, dz: 0.0, de: 0.18563, dt: 0.09140015, ex_width_mm: 5.1155925 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X106.7484 Y95.915 E0.15286 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.1289978, dz: 0.0, de: 0.15286, dt: 0.075266525, ex_width_mm: 5.1154833 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X106.3953 Y95.678 E0.05402 
; Some(Annotation { label: ExtrusionMove, dx: -0.32099915, dy: -0.23699951, dz: 0.0, de: 0.05402, dt: 0.021399943, ex_width_mm: 5.115126 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X105.8486 Y95.241 E0.0896 
; Some(Annotation { label: ExtrusionMove, dx: -0.49700165, dy: -0.4370041, dz: 0.0, de: 0.0896, dt: 0.033133443, ex_width_mm: 5.11523 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X105.05771 Y94.368 E0.15313 
; Some(Annotation { label: ExtrusionMove, dx: -0.71899414, dy: -0.8730011, dz: 0.0, de: 0.15313, dt: 0.058200072, ex_width_mm: 5.115602 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X104.552795 Y93.494 E0.13366 
; Some(Annotation { label: ExtrusionMove, dx: -0.45900726, dy: -0.8739929, dz: 0.0, de: 0.13366, dt: 0.058266196, ex_width_mm: 5.1154637 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X104.2393 Y92.621 E0.12434 
; Some(Annotation { label: ExtrusionMove, dx: -0.28499603, dy: -0.8730011, dz: 0.0, de: 0.12434, dt: 0.058200072, ex_width_mm: 5.115545 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X104.1007 Y91.747 E0.11956 
; Some(Annotation { label: ExtrusionMove, dx: -0.12599945, dy: -0.87400055, dz: 0.0, de: 0.11956, dt: 0.058266703, ex_width_mm: 5.115562 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X104.2349 Y90.874 E0.11935 
; Some(Annotation { label: ExtrusionMove, dx: 0.12200165, dy: -0.8730011, dz: 0.0, de: 0.11935, dt: 0.058200072, ex_width_mm: 5.1155643 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X104.4989 Y90.437 E0.0675 
; Some(Annotation { label: ExtrusionMove, dx: 0.23999786, dy: -0.4370041, dz: 0.0, de: 0.0675, dt: 0.029133607, ex_width_mm: 5.1152163 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X104.96641 Y90 E0.08253 
; Some(Annotation { label: ExtrusionMove, dx: 0.42500305, dy: -0.43699646, dz: 0.0, de: 0.08253, dt: 0.029133098, ex_width_mm: 5.115213 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X106.7484 Y88.845 E0.26938 
; Some(Annotation { label: ExtrusionMove, dx: 1.6199951, dy: -1.1549988, dz: 0.0, de: 0.26938, dt: 0.107999675, ex_width_mm: 5.1155353 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X106.7484 Y86.345 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
M204 P1000
G1 X106.7484 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
; LAYER END
G1 X106.7484 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X106.7484 Y88.845 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X106.7253 Y88.86 E-0.00937 
; Some(Annotation { label: Wipe, dx: -0.020996094, dy: 0.01499939, dz: 0.0, de: -0.00937, dt: 0.00017496746, ex_width_mm: -13.719802 })
; None
G1 X106.7253 Z12.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.2516 Y86.426 F9000 
; Some(Annotation { label: TravelMove, dx: -14.067001, dy: -2.433998, dz: 0.0, de: 0.0, dt: 0.09378001, ex_width_mm: 0.0 })
; None
G1 X91.2516 Z12.7 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X91.2516 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
M204 P1500
G1 X91.2516 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X91.2516 Y88.926 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X91.604706 Y88.69 E0.05394 
; Some(Annotation { label: ExtrusionMove, dx: 0.32099915, dy: -0.23600006, dz: 0.0, de: 0.05394, dt: 0.021399943, ex_width_mm: 5.1151514 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X92.151405 Y88.253 E0.0896 
; Some(Annotation { label: ExtrusionMove, dx: 0.49700165, dy: -0.4370041, dz: 0.0, de: 0.0896, dt: 0.033133443, ex_width_mm: 5.11523 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X92.9423 Y87.379 E0.15323 
; Some(Annotation { label: ExtrusionMove, dx: 0.71899414, dy: -0.87400055, dz: 0.0, de: 0.15323, dt: 0.058266703, ex_width_mm: 5.1154523 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X93.447205 Y86.506 E0.13354 
; Some(Annotation { label: ExtrusionMove, dx: 0.45900726, dy: -0.8730011, dz: 0.0, de: 0.13354, dt: 0.058200072, ex_width_mm: 5.115421 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X93.760704 Y85.632 E0.12447 
; Some(Annotation { label: ExtrusionMove, dx: 0.28499603, dy: -0.8739929, dz: 0.0, de: 0.12447, dt: 0.058266196, ex_width_mm: 5.115641 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X93.8993 Y84.759 E0.11942 
; Some(Annotation { label: ExtrusionMove, dx: 0.12599945, dy: -0.8730011, dz: 0.0, de: 0.11942, dt: 0.058200072, ex_width_mm: 5.115302 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X93.7651 Y83.885 E0.11948 
; Some(Annotation { label: ExtrusionMove, dx: -0.12200165, dy: -0.87400055, dz: 0.0, de: 0.11948, dt: 0.058266703, ex_width_mm: 5.1153917 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X93.5011 Y83.448 E0.0675 
; Some(Annotation { label: ExtrusionMove, dx: -0.23999786, dy: -0.4370041, dz: 0.0, de: 0.0675, dt: 0.029133607, ex_width_mm: 5.1152163 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X93.0336 Y83.012 E0.08244 
; Some(Annotation { label: ExtrusionMove, dx: -0.42500305, dy: -0.435997, dz: 0.0, de: 0.08244, dt: 0.029066468, ex_width_mm: 5.1156435 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X92.9467 Y82.956 E0.01311 
; Some(Annotation { label: ExtrusionMove, dx: -0.07899475, dy: -0.055999756, dz: 0.0, de: 0.01311, dt: 0.0052663167, ex_width_mm: 5.1153636 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X97.22021 E0.52601 
; Some(Annotation { label: ExtrusionMove, dx: 3.8850021, dy: 0.0, dz: 0.0, de: 0.52601, dt: 0.25900012, ex_width_mm: 5.1155066 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X97.2796 Y83.012 E0.01053 
; Some(Annotation { label: ExtrusionMove, dx: 0.053993225, dy: 0.055999756, dz: 0.0, de: 0.01053, dt: 0.0037333171, ex_width_mm: 5.114369 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X99.2926 Y84.322 E0.30471 
; Some(Annotation { label: ExtrusionMove, dx: 1.8300018, dy: 1.3099976, dz: 0.0, de: 0.30471, dt: 0.12200012, ex_width_mm: 5.1154385 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X99.8382 Y84.759 E0.0895 
; Some(Annotation { label: ExtrusionMove, dx: 0.4960022, dy: 0.4370041, dz: 0.0, de: 0.0895, dt: 0.033066813, ex_width_mm: 5.11532 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X100.629105 Y85.632 E0.15313 
; Some(Annotation { label: ExtrusionMove, dx: 0.71900177, dy: 0.8730011, dz: 0.0, de: 0.15313, dt: 0.058200072, ex_width_mm: 5.11558 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X101.134 Y86.506 E0.13366 
; Some(Annotation { label: ExtrusionMove, dx: 0.45899963, dy: 0.8739929, dz: 0.0, de: 0.13366, dt: 0.058266196, ex_width_mm: 5.1154823 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X101.4475 Y87.379 E0.12434 
; Some(Annotation { label: ExtrusionMove, dx: 0.28499603, dy: 0.8730011, dz: 0.0, de: 0.12434, dt: 0.058200072, ex_width_mm: 5.115545 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X101.5872 Y88.253 E0.11958 
; Some(Annotation { label: ExtrusionMove, dx: 0.1269989, dy: 0.87400055, dz: 0.0, de: 0.11958, dt: 0.058266703, ex_width_mm: 5.115588 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X101.453 Y89.126 E0.11935 
; Some(Annotation { label: ExtrusionMove, dx: -0.12199402, dy: 0.8730011, dz: 0.0, de: 0.11935, dt: 0.058200072, ex_width_mm: 5.1155705 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X101.1879 Y89.563 E0.06757 
; Some(Annotation { label: ExtrusionMove, dx: -0.24100494, dy: 0.4370041, dz: 0.0, de: 0.06757, dt: 0.029133607, ex_width_mm: 5.115538 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X100.720406 Y90 E0.08253 
; Some(Annotation { label: ExtrusionMove, dx: -0.42499542, dy: 0.43699646, dz: 0.0, de: 0.08253, dt: 0.029133098, ex_width_mm: 5.115257 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X98.707405 Y91.31 E0.30471 
; Some(Annotation { label: ExtrusionMove, dx: -1.8300018, dy: 1.3099976, dz: 0.0, de: 0.30471, dt: 0.12200012, ex_width_mm: 5.1154385 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X98.161804 Y91.747 E0.0895 
; Some(Annotation { label: ExtrusionMove, dx: -0.4960022, dy: 0.4370041, dz: 0.0, de: 0.0895, dt: 0.033066813, ex_width_mm: 5.11532 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X97.370895 Y92.621 E0.15323 
; Some(Annotation { label: ExtrusionMove, dx: -0.71900177, dy: 0.87400055, dz: 0.0, de: 0.15323, dt: 0.058266703, ex_width_mm: 5.1154304 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X96.866 Y93.494 E0.13354 
; Some(Annotation { label: ExtrusionMove, dx: -0.45899963, dy: 0.8730011, dz: 0.0, de: 0.13354, dt: 0.058200072, ex_width_mm: 5.11544 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X96.552505 Y94.368 E0.12447 
; Some(Annotation { label: ExtrusionMove, dx: -0.28499603, dy: 0.8739929, dz: 0.0, de: 0.12447, dt: 0.058266196, ex_width_mm: 5.115641 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X96.4128 Y95.241 E0.11944 
; Some(Annotation { label: ExtrusionMove, dx: -0.1269989, dy: 0.8730011, dz: 0.0, de: 0.11944, dt: 0.058200072, ex_width_mm: 5.115328 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X96.547 Y96.115 E0.11948 
; Some(Annotation { label: ExtrusionMove, dx: 0.12199402, dy: 0.87400055, dz: 0.0, de: 0.11948, dt: 0.058266703, ex_width_mm: 5.115398 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X96.8121 Y96.552 E0.06757 
; Some(Annotation { label: ExtrusionMove, dx: 0.24100494, dy: 0.4370041, dz: 0.0, de: 0.06757, dt: 0.029133607, ex_width_mm: 5.115538 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X97.2796 Y96.988 E0.08244 
; Some(Annotation { label: ExtrusionMove, dx: 0.42499542, dy: 0.435997, dz: 0.0, de: 0.08244, dt: 0.029066468, ex_width_mm: 5.1156883 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X97.3654 Y97.044 E0.013 
; Some(Annotation { label: ExtrusionMove, dx: 0.07800293, dy: 0.055999756, dz: 0.0, de: 0.013, dt: 0.005200195, ex_width_mm: 5.1150947 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X93.093 E0.52588 
; Some(Annotation { label: ExtrusionMove, dx: -3.8840027, dy: 0.0, dz: 0.0, de: 0.52588, dt: 0.2589335, ex_width_mm: 5.1155586 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X93.0336 Y96.988 E0.01053 
; Some(Annotation { label: ExtrusionMove, dx: -0.054000854, dy: -0.055999756, dz: 0.0, de: 0.01053, dt: 0.0037333171, ex_width_mm: 5.1140213 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X91.2516 Y95.833 E0.26938 
; Some(Annotation { label: ExtrusionMove, dx: -1.6199951, dy: -1.1549988, dz: 0.0, de: 0.26938, dt: 0.107999675, ex_width_mm: 5.1155353 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
G1 X91.2516 Y93.333 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
M204 P1000
G92 E0
G1 X91.2516 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 2467, end_id: 2546, z: 12.7 })
; LAYER END
G1 X91.2516 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X91.2516 Y95.833 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X91.2747 Y95.848 E-0.00937 
; Some(Annotation { label: Wipe, dx: 0.020996094, dy: 0.01499939, dz: 0.0, de: -0.00937, dt: 0.00017496746, ex_width_mm: -13.719802 })
; None
G1 X91.2747 Z12.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 Z13.1 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 Z13.3 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X97.736 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.759003, dy: 1.8880005, dz: 0.0, de: 0.0, dt: 0.09839335, ex_width_mm: 0.0 })
; None
G1 Z13.1 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
M73 P69 R3
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
M204 P800
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
M204 P1000
M73 P70 R3
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 Z13.3 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X95.368 Y97.044 F9000 
; Some(Annotation { label: TravelMove, dx: -0.65600586, dy: -1.4039993, dz: 0.0, de: 0.0, dt: 0.009359995, ex_width_mm: 0.0 })
; None
G1 Z13.1 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X97.044 E0.22692 
; Some(Annotation { label: ExtrusionMove, dx: 1.6760025, dy: 0.0, dz: 0.0, de: 0.22692, dt: 0.1117335, ex_width_mm: 5.1154523 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 Y96.219 E0.1117 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -0.82499695, dz: 0.0, de: 0.1117, dt: 0.054999795, ex_width_mm: 5.1154838 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X96.059 Y95.241 E0.18794 
; Some(Annotation { label: ExtrusionMove, dx: -0.9850006, dy: -0.97800446, dz: 0.0, de: 0.18794, dt: 0.065666705, ex_width_mm: 5.1155925 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X95.491 Y94.368 E0.14102 
; Some(Annotation { label: ExtrusionMove, dx: -0.5680008, dy: -0.8730011, dz: 0.0, de: 0.14102, dt: 0.058200072, ex_width_mm: 5.115648 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X95.153 Y93.494 E0.12688 
; Some(Annotation { label: ExtrusionMove, dx: -0.33799744, dy: -0.8739929, dz: 0.0, de: 0.12688, dt: 0.058266196, ex_width_mm: 5.115707 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X94.99 Y92.621 E0.12024 
; Some(Annotation { label: ExtrusionMove, dx: -0.16300201, dy: -0.8730011, dz: 0.0, de: 0.12024, dt: 0.058200072, ex_width_mm: 5.1153903 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X95.01 Y91.747 E0.11837 
; Some(Annotation { label: ExtrusionMove, dx: 0.020004272, dy: -0.87400055, dz: 0.0, de: 0.11837, dt: 0.058266703, ex_width_mm: 5.115665 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X95.307 Y90.874 E0.12485 
; Some(Annotation { label: ExtrusionMove, dx: 0.29699707, dy: -0.8730011, dz: 0.0, de: 0.12485, dt: 0.058200072, ex_width_mm: 5.1153884 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X95.612 Y90.437 E0.07215 
; Some(Annotation { label: ExtrusionMove, dx: 0.3050003, dy: -0.4370041, dz: 0.0, de: 0.07215, dt: 0.029133607, ex_width_mm: 5.1152253 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X96.034 Y90 E0.08225 
; Some(Annotation { label: ExtrusionMove, dx: 0.42199707, dy: -0.43699646, dz: 0.0, de: 0.08225, dt: 0.029133098, ex_width_mm: 5.115413 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X97.044 Y89.136 E0.17996 
; Some(Annotation { label: ExtrusionMove, dx: 1.0100021, dy: -0.8639984, dz: 0.0, de: 0.17996, dt: 0.067333475, ex_width_mm: 5.115559 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 Y86.636 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
M204 P1000
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 Y89.136 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X97.024 Y89.153 E-0.00937 
; Some(Annotation { label: Wipe, dx: -0.019996643, dy: 0.016998291, dz: 0.0, de: -0.00937, dt: 0.00016663868, ex_width_mm: -13.488899 })
; None
G1 Z13.3 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X82.956 Y86.731 F9000 
; Some(Annotation { label: TravelMove, dx: -14.068001, dy: -2.421997, dz: 0.0, de: 0.0, dt: 0.09378667, ex_width_mm: 0.0 })
; None
G1 Z13.1 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 Y89.231 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X83.941 Y88.253 E0.18794 
; Some(Annotation { label: ExtrusionMove, dx: 0.9850006, dy: -0.97800446, dz: 0.0, de: 0.18794, dt: 0.065666705, ex_width_mm: 5.1155925 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X84.509 Y87.379 E0.14113 
; Some(Annotation { label: ExtrusionMove, dx: 0.5680008, dy: -0.87400055, dz: 0.0, de: 0.14113, dt: 0.058266703, ex_width_mm: 5.115523 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X84.847 Y86.506 E0.12675 
; Some(Annotation { label: ExtrusionMove, dx: 0.33799744, dy: -0.8730011, dz: 0.0, de: 0.12675, dt: 0.058200072, ex_width_mm: 5.1155148 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X85.01 Y85.632 E0.12038 
; Some(Annotation { label: ExtrusionMove, dx: 0.16300201, dy: -0.8739929, dz: 0.0, de: 0.12038, dt: 0.058266196, ex_width_mm: 5.1157303 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X84.99 Y84.759 E0.11823 
; Some(Annotation { label: ExtrusionMove, dx: -0.020004272, dy: -0.8730011, dz: 0.0, de: 0.11823, dt: 0.058200072, ex_width_mm: 5.1154613 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X84.693 Y83.885 E0.12498 
; Some(Annotation { label: ExtrusionMove, dx: -0.29699707, dy: -0.87400055, dz: 0.0, de: 0.12498, dt: 0.058266703, ex_width_mm: 5.115466 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X84.388 Y83.448 E0.07215 
; Some(Annotation { label: ExtrusionMove, dx: -0.3050003, dy: -0.4370041, dz: 0.0, de: 0.07215, dt: 0.029133607, ex_width_mm: 5.1152253 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X83.901 Y82.956 E0.09373 
; Some(Annotation { label: ExtrusionMove, dx: -0.4869995, dy: -0.49199677, dz: 0.0, de: 0.09373, dt: 0.032799784, ex_width_mm: 5.1155562 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X88.992 E0.6893 
; Some(Annotation { label: ExtrusionMove, dx: 5.090996, dy: 0.0, dz: 0.0, de: 0.6893, dt: 0.33939973, ex_width_mm: 5.1155396 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X90.067 Y83.885 E0.19237 
; Some(Annotation { label: ExtrusionMove, dx: 1.0750046, dy: 0.92900085, dz: 0.0, de: 0.19237, dt: 0.07166697, ex_width_mm: 5.1155195 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X90.93 Y84.759 E0.1663 
; Some(Annotation { label: ExtrusionMove, dx: 0.86299896, dy: 0.87400055, dz: 0.0, de: 0.1663, dt: 0.058266703, ex_width_mm: 5.115461 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X91.497 Y85.632 E0.14094 
; Some(Annotation { label: ExtrusionMove, dx: 0.56700134, dy: 0.8730011, dz: 0.0, de: 0.14094, dt: 0.058200072, ex_width_mm: 5.115421 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X91.836 Y86.506 E0.12693 
; Some(Annotation { label: ExtrusionMove, dx: 0.3389969, dy: 0.8739929, dz: 0.0, de: 0.12693, dt: 0.058266196, ex_width_mm: 5.115752 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X91.999 Y87.379 E0.12024 
; Some(Annotation { label: ExtrusionMove, dx: 0.16300201, dy: 0.8730011, dz: 0.0, de: 0.12024, dt: 0.058200072, ex_width_mm: 5.1153903 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X91.978 Y88.253 E0.11837 
; Some(Annotation { label: ExtrusionMove, dx: -0.021003723, dy: 0.87400055, dz: 0.0, de: 0.11837, dt: 0.058266703, ex_width_mm: 5.115528 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X91.681 Y89.126 E0.12485 
; Some(Annotation { label: ExtrusionMove, dx: -0.29699707, dy: 0.8730011, dz: 0.0, de: 0.12485, dt: 0.058200072, ex_width_mm: 5.1153884 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X91.377 Y89.563 E0.07208 
; Some(Annotation { label: ExtrusionMove, dx: -0.30400085, dy: 0.4370041, dz: 0.0, de: 0.07208, dt: 0.029133607, ex_width_mm: 5.1157475 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X90.954 Y90 E0.08235 
; Some(Annotation { label: ExtrusionMove, dx: -0.42299652, dy: 0.43699646, dz: 0.0, de: 0.08235, dt: 0.029133098, ex_width_mm: 5.1157827 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X89.933 Y90.874 E0.18197 
; Some(Annotation { label: ExtrusionMove, dx: -1.0210037, dy: 0.87400055, dz: 0.0, de: 0.18197, dt: 0.06806692, ex_width_mm: 5.115495 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X89.07 Y91.747 E0.16621 
; Some(Annotation { label: ExtrusionMove, dx: -0.86299896, dy: 0.8730011, dz: 0.0, de: 0.16621, dt: 0.058200072, ex_width_mm: 5.115653 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X88.503 Y92.621 E0.14106 
; Some(Annotation { label: ExtrusionMove, dx: -0.56700134, dy: 0.87400055, dz: 0.0, de: 0.14106, dt: 0.058266703, ex_width_mm: 5.115657 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X88.164 Y93.494 E0.1268 
; Some(Annotation { label: ExtrusionMove, dx: -0.3389969, dy: 0.8730011, dz: 0.0, de: 0.1268, dt: 0.058200072, ex_width_mm: 5.1155586 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X88.001 Y94.368 E0.12038 
; Some(Annotation { label: ExtrusionMove, dx: -0.16300201, dy: 0.8739929, dz: 0.0, de: 0.12038, dt: 0.058266196, ex_width_mm: 5.1157303 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X88.022 Y95.241 E0.11823 
; Some(Annotation { label: ExtrusionMove, dx: 0.021003723, dy: 0.8730011, dz: 0.0, de: 0.11823, dt: 0.058200072, ex_width_mm: 5.115324 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X88.319 Y96.115 E0.12498 
; Some(Annotation { label: ExtrusionMove, dx: 0.29699707, dy: 0.87400055, dz: 0.0, de: 0.12498, dt: 0.058266703, ex_width_mm: 5.115466 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X88.624 Y96.552 E0.07215 
; Some(Annotation { label: ExtrusionMove, dx: 0.3050003, dy: 0.4370041, dz: 0.0, de: 0.07215, dt: 0.029133607, ex_width_mm: 5.1152253 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X89.111 Y97.044 E0.09373 
; Some(Annotation { label: ExtrusionMove, dx: 0.4869995, dy: 0.49199677, dz: 0.0, de: 0.09373, dt: 0.032799784, ex_width_mm: 5.1155562 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X84.019 E0.68943 
; Some(Annotation { label: ExtrusionMove, dx: -5.092003, dy: 0.0, dz: 0.0, de: 0.68943, dt: 0.33946687, ex_width_mm: 5.1154923 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 X82.956 Y96.125 E0.19025 
; Some(Annotation { label: ExtrusionMove, dx: -1.0629959, dy: -0.9189987, dz: 0.0, de: 0.19025, dt: 0.07086639, ex_width_mm: 5.1154037 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
G1 Y93.625 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 2555, end_id: 2628, z: 13.1 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 Y96.125 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X82.976 Y96.142 E-0.00937 
; Some(Annotation { label: Wipe, dx: 0.019996643, dy: 0.016998291, dz: 0.0, de: -0.00937, dt: 0.00016663868, ex_width_mm: -13.488899 })
; None
G1 Z13.3 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 Z13.5 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 Z13.7 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X97.736 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.760002, dy: 1.5940018, dz: 0.0, de: 0.0, dt: 0.09840002, ex_width_mm: 0.0 })
; None
G1 Z13.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
M73 P71 R3
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
M204 P800
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
M204 P1000
M73 P72 R3
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 Z13.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X95.019 Y97.044 F9000 
; Some(Annotation { label: TravelMove, dx: -1.0050049, dy: -1.4039993, dz: 0.0, de: 0.0, dt: 0.009359995, ex_width_mm: 0.0 })
; None
G1 Z13.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X97.044 E0.27418 
; Some(Annotation { label: ExtrusionMove, dx: 2.0250015, dy: 0.0, dz: 0.0, de: 0.27418, dt: 0.13500011, ex_width_mm: 5.1155972 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 Y96.568 E0.06445 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -0.47599792, dz: 0.0, de: 0.06445, dt: 0.031733193, ex_width_mm: 5.1156855 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X96.577 Y96.115 E0.08809 
; Some(Annotation { label: ExtrusionMove, dx: -0.46699524, dy: -0.45300293, dz: 0.0, de: 0.08809, dt: 0.031133015, ex_width_mm: 5.115526 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X95.873 Y95.241 E0.15195 
; Some(Annotation { label: ExtrusionMove, dx: -0.7040024, dy: -0.87400055, dz: 0.0, de: 0.15195, dt: 0.058266703, ex_width_mm: 5.1155005 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X95.438 Y94.368 E0.13206 
; Some(Annotation { label: ExtrusionMove, dx: -0.43499756, dy: -0.8730011, dz: 0.0, de: 0.13206, dt: 0.058200072, ex_width_mm: 5.115478 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X95.216 Y93.494 E0.12209 
; Some(Annotation { label: ExtrusionMove, dx: -0.22200012, dy: -0.8739929, dz: 0.0, de: 0.12209, dt: 0.058266196, ex_width_mm: 5.1154194 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X95.169 Y92.621 E0.11837 
; Some(Annotation { label: ExtrusionMove, dx: -0.0470047, dy: -0.8730011, dz: 0.0, de: 0.11837, dt: 0.058200072, ex_width_mm: 5.1154537 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X95.317 Y91.747 E0.12002 
; Some(Annotation { label: ExtrusionMove, dx: 0.14800262, dy: -0.87400055, dz: 0.0, de: 0.12002, dt: 0.058266703, ex_width_mm: 5.115506 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X95.739 Y90.874 E0.13129 
; Some(Annotation { label: ExtrusionMove, dx: 0.42199707, dy: -0.8730011, dz: 0.0, de: 0.13129, dt: 0.058200072, ex_width_mm: 5.1156945 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X96.5 Y90 E0.15691 
; Some(Annotation { label: ExtrusionMove, dx: 0.7610016, dy: -0.87400055, dz: 0.0, de: 0.15691, dt: 0.058266703, ex_width_mm: 5.115622 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X97.044 Y89.472 E0.10264 
; Some(Annotation { label: ExtrusionMove, dx: 0.5439987, dy: -0.5279999, dz: 0.0, de: 0.10264, dt: 0.03626658, ex_width_mm: 5.1153455 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 Y86.972 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
M204 P1000
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 Y89.472 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X97.025 Y89.49 E-0.00937 
; Some(Annotation { label: Wipe, dx: -0.018997192, dy: 0.017997742, dz: 0.0, de: -0.00937, dt: 0.00015830994, ex_width_mm: -13.528194 })
; None
G1 Z13.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X82.956 Y87.08 F9000 
; Some(Annotation { label: TravelMove, dx: -14.069, dy: -2.409996, dz: 0.0, de: 0.0, dt: 0.09379333, ex_width_mm: 0.0 })
; None
G1 Z13.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 Y89.58 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X83.423 Y89.126 E0.08818 
; Some(Annotation { label: ExtrusionMove, dx: 0.46699524, dy: -0.45400238, dz: 0.0, de: 0.08818, dt: 0.031133015, ex_width_mm: 5.1152782 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X84.127 Y88.253 E0.15184 
; Some(Annotation { label: ExtrusionMove, dx: 0.7040024, dy: -0.8730011, dz: 0.0, de: 0.15184, dt: 0.058200072, ex_width_mm: 5.115345 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X84.562 Y87.379 E0.13218 
; Some(Annotation { label: ExtrusionMove, dx: 0.43499756, dy: -0.87400055, dz: 0.0, de: 0.13218, dt: 0.058266703, ex_width_mm: 5.1154337 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X84.784 Y86.506 E0.12196 
; Some(Annotation { label: ExtrusionMove, dx: 0.22200012, dy: -0.8730011, dz: 0.0, de: 0.12196, dt: 0.058200072, ex_width_mm: 5.115426 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X84.831 Y85.632 E0.11851 
; Some(Annotation { label: ExtrusionMove, dx: 0.0470047, dy: -0.8739929, dz: 0.0, de: 0.11851, dt: 0.058266196, ex_width_mm: 5.115709 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X84.683 Y84.759 E0.11989 
; Some(Annotation { label: ExtrusionMove, dx: -0.14800262, dy: -0.8730011, dz: 0.0, de: 0.11989, dt: 0.058200072, ex_width_mm: 5.1156516 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X84.261 Y83.885 E0.13141 
; Some(Annotation { label: ExtrusionMove, dx: -0.42199707, dy: -0.87400055, dz: 0.0, de: 0.13141, dt: 0.058266703, ex_width_mm: 5.115622 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X83.443 Y82.956 E0.16759 
; Some(Annotation { label: ExtrusionMove, dx: -0.8180008, dy: -0.92900085, dz: 0.0, de: 0.16759, dt: 0.061933395, ex_width_mm: 5.115414 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X89.464 E0.81521 
; Some(Annotation { label: ExtrusionMove, dx: 6.020996, dy: 0.0, dz: 0.0, de: 0.81521, dt: 0.40139973, ex_width_mm: 5.115488 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X90.411 Y83.885 E0.17961 
; Some(Annotation { label: ExtrusionMove, dx: 0.9470062, dy: 0.92900085, dz: 0.0, de: 0.17961, dt: 0.06313375, ex_width_mm: 5.115369 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X91.115 Y84.759 E0.15195 
; Some(Annotation { label: ExtrusionMove, dx: 0.70399475, dy: 0.87400055, dz: 0.0, de: 0.15195, dt: 0.058266703, ex_width_mm: 5.115523 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X91.55 Y85.632 E0.13206 
; Some(Annotation { label: ExtrusionMove, dx: 0.4350052, dy: 0.8730011, dz: 0.0, de: 0.13206, dt: 0.058200072, ex_width_mm: 5.11546 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X91.773 Y86.506 E0.12213 
; Some(Annotation { label: ExtrusionMove, dx: 0.22299957, dy: 0.8739929, dz: 0.0, de: 0.12213, dt: 0.058266196, ex_width_mm: 5.1156974 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X91.82 Y87.379 E0.11837 
; Some(Annotation { label: ExtrusionMove, dx: 0.04699707, dy: 0.8730011, dz: 0.0, de: 0.11837, dt: 0.058200072, ex_width_mm: 5.115456 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X91.672 Y88.253 E0.12002 
; Some(Annotation { label: ExtrusionMove, dx: -0.14800262, dy: 0.87400055, dz: 0.0, de: 0.12002, dt: 0.058266703, ex_width_mm: 5.115506 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X91.249 Y89.126 E0.13134 
; Some(Annotation { label: ExtrusionMove, dx: -0.42299652, dy: 0.8730011, dz: 0.0, de: 0.13134, dt: 0.058200072, ex_width_mm: 5.115345 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X90.488 Y90 E0.15691 
; Some(Annotation { label: ExtrusionMove, dx: -0.7610016, dy: 0.87400055, dz: 0.0, de: 0.15691, dt: 0.058266703, ex_width_mm: 5.115622 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X89.589 Y90.874 E0.16976 
; Some(Annotation { label: ExtrusionMove, dx: -0.8990021, dy: 0.87400055, dz: 0.0, de: 0.16976, dt: 0.059933472, ex_width_mm: 5.115449 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X88.885 Y91.747 E0.15184 
; Some(Annotation { label: ExtrusionMove, dx: -0.70399475, dy: 0.8730011, dz: 0.0, de: 0.15184, dt: 0.058200072, ex_width_mm: 5.1153665 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X88.45 Y92.621 E0.13218 
; Some(Annotation { label: ExtrusionMove, dx: -0.4350052, dy: 0.87400055, dz: 0.0, de: 0.13218, dt: 0.058266703, ex_width_mm: 5.115416 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X88.227 Y93.494 E0.122 
; Some(Annotation { label: ExtrusionMove, dx: -0.22299957, dy: 0.8730011, dz: 0.0, de: 0.122, dt: 0.058200072, ex_width_mm: 5.115702 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X88.18 Y94.368 E0.11851 
; Some(Annotation { label: ExtrusionMove, dx: -0.04699707, dy: 0.8739929, dz: 0.0, de: 0.11851, dt: 0.058266196, ex_width_mm: 5.115711 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X88.328 Y95.241 E0.11989 
; Some(Annotation { label: ExtrusionMove, dx: 0.14800262, dy: 0.8730011, dz: 0.0, de: 0.11989, dt: 0.058200072, ex_width_mm: 5.1156516 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X88.751 Y96.115 E0.13147 
; Some(Annotation { label: ExtrusionMove, dx: 0.42299652, dy: 0.87400055, dz: 0.0, de: 0.13147, dt: 0.058266703, ex_width_mm: 5.1156645 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X89.569 Y97.044 E0.16759 
; Some(Annotation { label: ExtrusionMove, dx: 0.8180008, dy: 0.92900085, dz: 0.0, de: 0.16759, dt: 0.061933395, ex_width_mm: 5.115414 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X83.548 E0.81521 
; Some(Annotation { label: ExtrusionMove, dx: -6.0210037, dy: 0.0, dz: 0.0, de: 0.81521, dt: 0.40140024, ex_width_mm: 5.1154814 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 X82.956 Y96.461 E0.1125 
; Some(Annotation { label: ExtrusionMove, dx: -0.59199524, dy: -0.5830002, dz: 0.0, de: 0.1125, dt: 0.039466348, ex_width_mm: 5.1156936 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
G1 Y93.961 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 2637, end_id: 2708, z: 13.5 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 Y96.461 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X82.975 Y96.479 E-0.00937 
; Some(Annotation { label: Wipe, dx: 0.018997192, dy: 0.017997742, dz: 0.0, de: -0.00937, dt: 0.00015830994, ex_width_mm: -13.528194 })
; None
G1 Z13.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 Z13.9 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.2725 Z14.1 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.761002, dy: 1.2570038, dz: 0.0, de: 0.0, dt: 0.09840668, ex_width_mm: 0.0 })
; None
G1 Z13.9 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
M73 P73 R3
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
M204 P800
M73 P73 R2
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
M204 P1000
M73 P74 R2
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z14.1 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 X106.7484 Y87.36 F9000 
; Some(Annotation { label: TravelMove, dx: 1.0199966, dy: -11.087997, dz: 0.0, de: 0.0, dt: 0.07391998, ex_width_mm: 0.0 })
; None
G1 Z13.9 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 Y89.86 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X96.109 Y90.874 E0.18675 
; Some(Annotation { label: ExtrusionMove, dx: -0.93499756, dy: 1.0139999, dz: 0.0, de: 0.18675, dt: 0.0676, ex_width_mm: 5.1155667 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X95.574 Y91.747 E0.13863 
; Some(Annotation { label: ExtrusionMove, dx: -0.53500366, dy: 0.8730011, dz: 0.0, de: 0.13863, dt: 0.058200072, ex_width_mm: 5.115499 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X95.307 Y92.621 E0.12373 
; Some(Annotation { label: ExtrusionMove, dx: -0.2669983, dy: 0.87400055, dz: 0.0, de: 0.12373, dt: 0.058266703, ex_width_mm: 5.1153426 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X95.241 Y93.494 E0.11854 
; Some(Annotation { label: ExtrusionMove, dx: -0.06600189, dy: 0.8730011, dz: 0.0, de: 0.11854, dt: 0.058200072, ex_width_mm: 5.1156216 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X95.35 Y94.368 E0.11925 
; Some(Annotation { label: ExtrusionMove, dx: 0.10900116, dy: 0.8739929, dz: 0.0, de: 0.11925, dt: 0.058266196, ex_width_mm: 5.115462 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X95.663 Y95.241 E0.12557 
; Some(Annotation { label: ExtrusionMove, dx: 0.31300354, dy: 0.8730011, dz: 0.0, de: 0.12557, dt: 0.058200072, ex_width_mm: 5.1156025 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X96.241 Y96.115 E0.14187 
; Some(Annotation { label: ExtrusionMove, dx: 0.5779953, dy: 0.87400055, dz: 0.0, de: 0.14187, dt: 0.058266703, ex_width_mm: 5.115453 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X97.044 Y96.966 E0.15842 
; Some(Annotation { label: ExtrusionMove, dx: 0.8030014, dy: 0.85100555, dz: 0.0, de: 0.15842, dt: 0.056733705, ex_width_mm: 5.1155314 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 Y97.044 E0.01056 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0779953, dz: 0.0, de: 0.01056, dt: 0.0051996866, ex_width_mm: 5.1154213 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X89.975 E0.95711 
; Some(Annotation { label: ExtrusionMove, dx: -7.0690002, dy: 0.0, dz: 0.0, de: 0.95711, dt: 0.4712667, ex_width_mm: 5.1155195 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X89.12 Y96.115 E0.17095 
; Some(Annotation { label: ExtrusionMove, dx: -0.8549957, dy: -0.92900085, dz: 0.0, de: 0.17095, dt: 0.061933395, ex_width_mm: 5.1156716 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X88.586 Y95.241 E0.13867 
; Some(Annotation { label: ExtrusionMove, dx: -0.5340042, dy: -0.87400055, dz: 0.0, de: 0.13867, dt: 0.058266703, ex_width_mm: 5.115321 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X88.319 Y94.368 E0.1236 
; Some(Annotation { label: ExtrusionMove, dx: -0.2669983, dy: -0.8730011, dz: 0.0, de: 0.1236, dt: 0.058200072, ex_width_mm: 5.115319 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X88.252 Y93.494 E0.11868 
; Some(Annotation { label: ExtrusionMove, dx: -0.06700134, dy: -0.8739929, dz: 0.0, de: 0.11868, dt: 0.058266196, ex_width_mm: 5.115442 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X88.362 Y92.621 E0.11913 
; Some(Annotation { label: ExtrusionMove, dx: 0.11000061, dy: -0.8730011, dz: 0.0, de: 0.11913, dt: 0.058200072, ex_width_mm: 5.1153073 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X88.675 Y91.747 E0.12569 
; Some(Annotation { label: ExtrusionMove, dx: 0.31300354, dy: -0.87400055, dz: 0.0, de: 0.12569, dt: 0.058266703, ex_width_mm: 5.1153016 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X89.253 Y90.874 E0.14176 
; Some(Annotation { label: ExtrusionMove, dx: 0.5779953, dy: -0.8730011, dz: 0.0, de: 0.14176, dt: 0.058200072, ex_width_mm: 5.1155562 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X90.88 Y89.126 E0.32333 
; Some(Annotation { label: ExtrusionMove, dx: 1.6269989, dy: -1.7480011, dz: 0.0, de: 0.32333, dt: 0.116533406, ex_width_mm: 5.1155715 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X91.414 Y88.253 E0.13856 
; Some(Annotation { label: ExtrusionMove, dx: 0.5340042, dy: -0.8730011, dz: 0.0, de: 0.13856, dt: 0.058200072, ex_width_mm: 5.115523 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X91.681 Y87.379 E0.12373 
; Some(Annotation { label: ExtrusionMove, dx: 0.2669983, dy: -0.87400055, dz: 0.0, de: 0.12373, dt: 0.058266703, ex_width_mm: 5.1153426 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X91.748 Y86.506 E0.11855 
; Some(Annotation { label: ExtrusionMove, dx: 0.06700134, dy: -0.8730011, dz: 0.0, de: 0.11855, dt: 0.058200072, ex_width_mm: 5.115609 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X91.638 Y85.632 E0.11927 
; Some(Annotation { label: ExtrusionMove, dx: -0.11000061, dy: -0.8739929, dz: 0.0, de: 0.11927, dt: 0.058266196, ex_width_mm: 5.1155977 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X91.325 Y84.759 E0.12557 
; Some(Annotation { label: ExtrusionMove, dx: -0.31300354, dy: -0.8730011, dz: 0.0, de: 0.12557, dt: 0.058200072, ex_width_mm: 5.1156025 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X90.747 Y83.885 E0.14187 
; Some(Annotation { label: ExtrusionMove, dx: -0.5779953, dy: -0.87400055, dz: 0.0, de: 0.14187, dt: 0.058266703, ex_width_mm: 5.115453 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X89.872 Y82.956 E0.17279 
; Some(Annotation { label: ExtrusionMove, dx: -0.875, dy: -0.92900085, dz: 0.0, de: 0.17279, dt: 0.061933395, ex_width_mm: 5.1155024 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X83.036 E0.92556 
; Some(Annotation { label: ExtrusionMove, dx: -6.8359985, dy: 0.0, dz: 0.0, de: 0.92556, dt: 0.45573324, ex_width_mm: 5.115505 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X83.891 Y83.885 E0.17095 
; Some(Annotation { label: ExtrusionMove, dx: 0.8549957, dy: 0.92900085, dz: 0.0, de: 0.17095, dt: 0.061933395, ex_width_mm: 5.1156716 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X84.426 Y84.759 E0.13875 
; Some(Annotation { label: ExtrusionMove, dx: 0.53500366, dy: 0.87400055, dz: 0.0, de: 0.13875, dt: 0.058266703, ex_width_mm: 5.1156683 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X84.693 Y85.632 E0.1236 
; Some(Annotation { label: ExtrusionMove, dx: 0.2669983, dy: 0.8730011, dz: 0.0, de: 0.1236, dt: 0.058200072, ex_width_mm: 5.115319 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X84.759 Y86.506 E0.11867 
; Some(Annotation { label: ExtrusionMove, dx: 0.06600189, dy: 0.8739929, dz: 0.0, de: 0.11867, dt: 0.058266196, ex_width_mm: 5.115453 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X84.65 Y87.379 E0.11912 
; Some(Annotation { label: ExtrusionMove, dx: -0.10900116, dy: 0.8730011, dz: 0.0, de: 0.11912, dt: 0.058200072, ex_width_mm: 5.1156015 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X84.337 Y88.253 E0.12569 
; Some(Annotation { label: ExtrusionMove, dx: -0.31300354, dy: 0.87400055, dz: 0.0, de: 0.12569, dt: 0.058266703, ex_width_mm: 5.1153016 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X83.759 Y89.126 E0.14176 
; Some(Annotation { label: ExtrusionMove, dx: -0.5779953, dy: 0.8730011, dz: 0.0, de: 0.14176, dt: 0.058200072, ex_width_mm: 5.1155562 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 X82.956 Y89.977 E0.15842 
; Some(Annotation { label: ExtrusionMove, dx: -0.8030014, dy: 0.8509979, dz: 0.0, de: 0.15842, dt: 0.056733195, ex_width_mm: 5.1155553 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
G1 Y92.477 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 2717, end_id: 2774, z: 13.9 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 Y89.977 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: -2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X82.974 Y89.958 E-0.00937 
; Some(Annotation { label: Wipe, dx: 0.017997742, dy: -0.018997192, dz: 0.0, de: -0.00937, dt: 0.00015830994, ex_width_mm: -13.528194 })
; None
G1 X91.2714 Z14.1 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 X91.2714 Z14.3 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.2714 Z14.5 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.762001, dy: 7.778, dz: 0.0, de: 0.0, dt: 0.09841334, ex_width_mm: 0.0 })
; None
G1 X107.509605 Z14.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X107.509605 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X107.509605 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X90.4904 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X90.4904 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
M73 P75 R2
G1 X107.509605 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X107.509605 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X108.40501 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
M204 P800
; LAYER END
G1 X108.40501 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X89.595 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X89.595 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X108.40501 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X108.40501 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
M204 P1000
M73 P76 R2
G1 X107.5547 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
; LAYER END
G1 X107.5547 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 X107.5547 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X105.6264 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z14.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X106.7484 Y87.774 F9000 
; Some(Annotation { label: TravelMove, dx: 1.0199966, dy: -10.673996, dz: 0.0, de: 0.0, dt: 0.071159974, ex_width_mm: 0.0 })
; None
G1 X106.7484 Z14.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X106.7484 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
M204 P1500
G1 X106.7484 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X106.7484 Y90.274 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X106.0939 Y90.874 E0.11441 
; Some(Annotation { label: ExtrusionMove, dx: -0.5950012, dy: 0.5999985, dz: 0.0, de: 0.11441, dt: 0.0399999, ex_width_mm: 5.1155615 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X105.3756 Y91.747 E0.14761 
; Some(Annotation { label: ExtrusionMove, dx: -0.6529999, dy: 0.8730011, dz: 0.0, de: 0.14761, dt: 0.058200072, ex_width_mm: 5.115579 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X104.9499 Y92.621 E0.12942 
; Some(Annotation { label: ExtrusionMove, dx: -0.38700104, dy: 0.87400055, dz: 0.0, de: 0.12942, dt: 0.058266703, ex_width_mm: 5.1156187 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X104.753006 Y93.494 E0.12066 
; Some(Annotation { label: ExtrusionMove, dx: -0.17899323, dy: 0.8730011, dz: 0.0, de: 0.12066, dt: 0.058200072, ex_width_mm: 5.115554 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X104.7486 Y94.368 E0.11834 
; Some(Annotation { label: ExtrusionMove, dx: -0.004005432, dy: 0.8739929, dz: 0.0, de: 0.11834, dt: 0.058266196, ex_width_mm: 5.1156993 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X104.9631 Y95.241 E0.12111 
; Some(Annotation { label: ExtrusionMove, dx: 0.1949997, dy: 0.8730011, dz: 0.0, de: 0.12111, dt: 0.058200072, ex_width_mm: 5.1153893 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X105.4746 Y96.115 E0.13404 
; Some(Annotation { label: ExtrusionMove, dx: 0.46500397, dy: 0.87400055, dz: 0.0, de: 0.13404, dt: 0.058266703, ex_width_mm: 5.11545 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X106.3887 Y97.044 E0.16876 
; Some(Annotation { label: ExtrusionMove, dx: 0.8310013, dy: 0.92900085, dz: 0.0, de: 0.16876, dt: 0.061933395, ex_width_mm: 5.115464 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X99.413605 E0.85854 
; Some(Annotation { label: ExtrusionMove, dx: -6.3410034, dy: 0.0, dz: 0.0, de: 0.85854, dt: 0.42273358, ex_width_mm: 5.1155043 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X98.406 Y96.115 E0.17664 
; Some(Annotation { label: ExtrusionMove, dx: -0.91600037, dy: -0.92900085, dz: 0.0, de: 0.17664, dt: 0.061933395, ex_width_mm: 5.1154346 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X97.6877 Y95.241 E0.14772 
; Some(Annotation { label: ExtrusionMove, dx: -0.6529999, dy: -0.87400055, dz: 0.0, de: 0.14772, dt: 0.058266703, ex_width_mm: 5.115635 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X97.262 Y94.368 E0.12929 
; Some(Annotation { label: ExtrusionMove, dx: -0.38700104, dy: -0.8730011, dz: 0.0, de: 0.12929, dt: 0.058200072, ex_width_mm: 5.1153703 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X97.0651 Y93.494 E0.12079 
; Some(Annotation { label: ExtrusionMove, dx: -0.17900085, dy: -0.8739929, dz: 0.0, de: 0.12079, dt: 0.058266196, ex_width_mm: 5.1154785 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X97.0618 Y92.621 E0.1182 
; Some(Annotation { label: ExtrusionMove, dx: -0.002998352, dy: -0.8730011, dz: 0.0, de: 0.1182, dt: 0.058200072, ex_width_mm: 5.1154757 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X97.2752 Y91.747 E0.12122 
; Some(Annotation { label: ExtrusionMove, dx: 0.19400024, dy: -0.87400055, dz: 0.0, de: 0.12122, dt: 0.058266703, ex_width_mm: 5.115698 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X97.7878 Y90.874 E0.13399 
; Some(Annotation { label: ExtrusionMove, dx: 0.46600342, dy: -0.8730011, dz: 0.0, de: 0.13399, dt: 0.058200072, ex_width_mm: 5.115671 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X98.6403 Y90 E0.15816 
; Some(Annotation { label: ExtrusionMove, dx: 0.7749939, dy: -0.87400055, dz: 0.0, de: 0.15816, dt: 0.058266703, ex_width_mm: 5.1156054 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X99.594 Y89.126 E0.16668 
; Some(Annotation { label: ExtrusionMove, dx: 0.8670044, dy: -0.87400055, dz: 0.0, de: 0.16668, dt: 0.058266703, ex_width_mm: 5.1154146 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X100.3123 Y88.253 E0.14761 
; Some(Annotation { label: ExtrusionMove, dx: 0.6529999, dy: -0.8730011, dz: 0.0, de: 0.14761, dt: 0.058200072, ex_width_mm: 5.115579 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X100.73801 Y87.379 E0.12942 
; Some(Annotation { label: ExtrusionMove, dx: 0.38700104, dy: -0.87400055, dz: 0.0, de: 0.12942, dt: 0.058266703, ex_width_mm: 5.1156187 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X100.934906 Y86.506 E0.12066 
; Some(Annotation { label: ExtrusionMove, dx: 0.17900085, dy: -0.8730011, dz: 0.0, de: 0.12066, dt: 0.058200072, ex_width_mm: 5.115545 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X100.9382 Y85.632 E0.11834 
; Some(Annotation { label: ExtrusionMove, dx: 0.002998352, dy: -0.8739929, dz: 0.0, de: 0.11834, dt: 0.058266196, ex_width_mm: 5.115723 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X100.7248 Y84.759 E0.12108 
; Some(Annotation { label: ExtrusionMove, dx: -0.19400024, dy: -0.8730011, dz: 0.0, de: 0.12108, dt: 0.058200072, ex_width_mm: 5.1153646 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X100.2122 Y83.885 E0.13411 
; Some(Annotation { label: ExtrusionMove, dx: -0.46600342, dy: -0.87400055, dz: 0.0, de: 0.13411, dt: 0.058266703, ex_width_mm: 5.1156945 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X99.2992 Y82.956 E0.16867 
; Some(Annotation { label: ExtrusionMove, dx: -0.8299942, dy: -0.92900085, dz: 0.0, de: 0.16867, dt: 0.061933395, ex_width_mm: 5.1154904 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X91.2516 E0.99055 
; Some(Annotation { label: ExtrusionMove, dx: -7.316002, dy: 0.0, dz: 0.0, de: 0.99055, dt: 0.48773345, ex_width_mm: 5.1155047 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X91.2516 Y83.285 E0.04455 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.32900238, dz: 0.0, de: 0.04455, dt: 0.021933492, ex_width_mm: 5.116048 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X91.906105 Y83.885 E0.11441 
; Some(Annotation { label: ExtrusionMove, dx: 0.5950012, dy: 0.5999985, dz: 0.0, de: 0.11441, dt: 0.0399999, ex_width_mm: 5.1155615 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X92.624405 Y84.759 E0.14772 
; Some(Annotation { label: ExtrusionMove, dx: 0.6529999, dy: 0.87400055, dz: 0.0, de: 0.14772, dt: 0.058266703, ex_width_mm: 5.115635 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X93.0501 Y85.632 E0.12929 
; Some(Annotation { label: ExtrusionMove, dx: 0.38700104, dy: 0.8730011, dz: 0.0, de: 0.12929, dt: 0.058200072, ex_width_mm: 5.1153703 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X93.247 Y86.506 E0.12079 
; Some(Annotation { label: ExtrusionMove, dx: 0.17899323, dy: 0.8739929, dz: 0.0, de: 0.12079, dt: 0.058266196, ex_width_mm: 5.1154876 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X93.2514 Y87.379 E0.1182 
; Some(Annotation { label: ExtrusionMove, dx: 0.004005432, dy: 0.8730011, dz: 0.0, de: 0.1182, dt: 0.058200072, ex_width_mm: 5.115452 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X93.0369 Y88.253 E0.12124 
; Some(Annotation { label: ExtrusionMove, dx: -0.1949997, dy: 0.87400055, dz: 0.0, de: 0.12124, dt: 0.058266703, ex_width_mm: 5.115301 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X92.5254 Y89.126 E0.13392 
; Some(Annotation { label: ExtrusionMove, dx: -0.46500397, dy: 0.8730011, dz: 0.0, de: 0.13392, dt: 0.058200072, ex_width_mm: 5.11543 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X91.6718 Y90 E0.15825 
; Some(Annotation { label: ExtrusionMove, dx: -0.776001, dy: 0.87400055, dz: 0.0, de: 0.15825, dt: 0.058266703, ex_width_mm: 5.1155887 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X91.2516 Y90.385 E0.07343 
; Some(Annotation { label: ExtrusionMove, dx: -0.38199615, dy: 0.38500214, dz: 0.0, de: 0.07343, dt: 0.025666809, ex_width_mm: 5.115366 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
G1 X91.2516 Y92.885 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
M204 P1000
G92 E0
G1 X91.2516 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 2783, end_id: 2842, z: 14.3 })
; LAYER END
G1 X91.2516 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X91.2516 Y90.385 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: -2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X91.2725 Y90.366 E-0.00937 
; Some(Annotation { label: Wipe, dx: 0.018997192, dy: -0.019004822, dz: 0.0, de: -0.00937, dt: 0.00015837351, ex_width_mm: -13.174492 })
; None
G1 X91.2725 Z14.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.2725 Z14.7 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.2725 Z14.9 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.761002, dy: 7.3700027, dz: 0.0, de: 0.0, dt: 0.09840668, ex_width_mm: 0.0 })
; None
G1 X107.509605 Z14.7 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X107.509605 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X107.509605 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X90.4904 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X90.4904 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
M73 P77 R2
G1 X107.509605 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X107.509605 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X108.40501 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
M204 P800
; LAYER END
G1 X108.40501 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X89.595 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X89.595 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X108.40501 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X108.40501 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
M204 P1000
M73 P78 R2
G1 X107.5547 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
; LAYER END
G1 X107.5547 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 X107.5547 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X105.6264 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z14.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X106.7484 Y93.141 F9000 
; Some(Annotation { label: TravelMove, dx: 1.0199966, dy: -5.306999, dz: 0.0, de: 0.0, dt: 0.035379995, ex_width_mm: 0.0 })
; None
G1 X106.7484 Z14.7 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X106.7484 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
M204 P1500
G1 X106.7484 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X106.7484 Y90.641 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X106.46461 Y90.874 E0.04707 
; Some(Annotation { label: ExtrusionMove, dx: -0.2579956, dy: 0.23300171, dz: 0.0, de: 0.04707, dt: 0.017199706, ex_width_mm: 5.1156883 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X105.589 Y91.747 E0.15996 
; Some(Annotation { label: ExtrusionMove, dx: -0.79600525, dy: 0.8730011, dz: 0.0, de: 0.15996, dt: 0.058200072, ex_width_mm: 5.115554 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X105.0225 Y92.621 E0.13735 
; Some(Annotation { label: ExtrusionMove, dx: -0.5149994, dy: 0.87400055, dz: 0.0, de: 0.13735, dt: 0.058266703, ex_width_mm: 5.115469 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X104.699104 Y93.494 E0.12472 
; Some(Annotation { label: ExtrusionMove, dx: -0.29399872, dy: 0.8730011, dz: 0.0, de: 0.12472, dt: 0.058200072, ex_width_mm: 5.115395 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X104.570404 Y94.368 E0.11939 
; Some(Annotation { label: ExtrusionMove, dx: -0.116996765, dy: 0.8739929, dz: 0.0, de: 0.11939, dt: 0.058266196, ex_width_mm: 5.1155133 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X104.648506 Y95.241 E0.11859 
; Some(Annotation { label: ExtrusionMove, dx: 0.070999146, dy: 0.8730011, dz: 0.0, de: 0.11859, dt: 0.058200072, ex_width_mm: 5.1154947 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X105.0313 Y96.115 E0.12737 
; Some(Annotation { label: ExtrusionMove, dx: 0.34799957, dy: 0.87400055, dz: 0.0, de: 0.12737, dt: 0.058266703, ex_width_mm: 5.1154776 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X105.3833 Y96.552 E0.07333 
; Some(Annotation { label: ExtrusionMove, dx: 0.3199997, dy: 0.4370041, dz: 0.0, de: 0.07333, dt: 0.029133607, ex_width_mm: 5.115145 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X105.913506 Y97.044 E0.09325 
; Some(Annotation { label: ExtrusionMove, dx: 0.48200226, dy: 0.49199677, dz: 0.0, de: 0.09325, dt: 0.032799784, ex_width_mm: 5.1152678 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X99.8998 E0.74021 
; Some(Annotation { label: ExtrusionMove, dx: -5.467003, dy: 0.0, dz: 0.0, de: 0.74021, dt: 0.36446685, ex_width_mm: 5.115541 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X98.7778 Y96.115 E0.1868 
; Some(Annotation { label: ExtrusionMove, dx: -1.0200043, dy: -0.92900085, dz: 0.0, de: 0.1868, dt: 0.06800029, ex_width_mm: 5.1155453 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X97.9022 Y95.241 E0.16006 
; Some(Annotation { label: ExtrusionMove, dx: -0.7959976, dy: -0.87400055, dz: 0.0, de: 0.16006, dt: 0.058266703, ex_width_mm: 5.115576 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X97.3357 Y94.368 E0.13723 
; Some(Annotation { label: ExtrusionMove, dx: -0.5149994, dy: -0.8730011, dz: 0.0, de: 0.13723, dt: 0.058200072, ex_width_mm: 5.1153417 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X97.01231 Y93.494 E0.12485 
; Some(Annotation { label: ExtrusionMove, dx: -0.29399872, dy: -0.8739929, dz: 0.0, de: 0.12485, dt: 0.058266196, ex_width_mm: 5.1155066 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X96.8825 Y92.621 E0.11927 
; Some(Annotation { label: ExtrusionMove, dx: -0.118003845, dy: -0.8730011, dz: 0.0, de: 0.11927, dt: 0.058200072, ex_width_mm: 5.1152945 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X96.96061 Y91.747 E0.11873 
; Some(Annotation { label: ExtrusionMove, dx: 0.071006775, dy: -0.87400055, dz: 0.0, de: 0.11873, dt: 0.058266703, ex_width_mm: 5.115712 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X97.344505 Y90.874 E0.1273 
; Some(Annotation { label: ExtrusionMove, dx: 0.34899902, dy: -0.8730011, dz: 0.0, de: 0.1273, dt: 0.058200072, ex_width_mm: 5.1157 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X97.6965 Y90.437 E0.07333 
; Some(Annotation { label: ExtrusionMove, dx: 0.3199997, dy: -0.4370041, dz: 0.0, de: 0.07333, dt: 0.029133607, ex_width_mm: 5.115145 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X98.1585 Y90 E0.08206 
; Some(Annotation { label: ExtrusionMove, dx: 0.41999817, dy: -0.43699646, dz: 0.0, de: 0.08206, dt: 0.029133098, ex_width_mm: 5.115275 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X99.222206 Y89.126 E0.17648 
; Some(Annotation { label: ExtrusionMove, dx: 0.96700287, dy: -0.87400055, dz: 0.0, de: 0.17648, dt: 0.06446686, ex_width_mm: 5.115503 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X100.0978 Y88.253 E0.15996 
; Some(Annotation { label: ExtrusionMove, dx: 0.7959976, dy: -0.8730011, dz: 0.0, de: 0.15996, dt: 0.058200072, ex_width_mm: 5.1155767 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X100.6643 Y87.379 E0.13735 
; Some(Annotation { label: ExtrusionMove, dx: 0.5149994, dy: -0.87400055, dz: 0.0, de: 0.13735, dt: 0.058266703, ex_width_mm: 5.115469 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X100.9877 Y86.506 E0.12472 
; Some(Annotation { label: ExtrusionMove, dx: 0.29399872, dy: -0.8730011, dz: 0.0, de: 0.12472, dt: 0.058200072, ex_width_mm: 5.115395 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X101.11751 Y85.632 E0.11941 
; Some(Annotation { label: ExtrusionMove, dx: 0.118003845, dy: -0.8739929, dz: 0.0, de: 0.11941, dt: 0.058266196, ex_width_mm: 5.115591 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X101.0394 Y84.759 E0.11859 
; Some(Annotation { label: ExtrusionMove, dx: -0.071006775, dy: -0.8730011, dz: 0.0, de: 0.11859, dt: 0.058200072, ex_width_mm: 5.115492 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X100.6555 Y83.885 E0.12742 
; Some(Annotation { label: ExtrusionMove, dx: -0.34899902, dy: -0.87400055, dz: 0.0, de: 0.12742, dt: 0.058266703, ex_width_mm: 5.115472 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X100.3035 Y83.448 E0.07333 
; Some(Annotation { label: ExtrusionMove, dx: -0.3199997, dy: -0.4370041, dz: 0.0, de: 0.07333, dt: 0.029133607, ex_width_mm: 5.115145 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X99.77331 Y82.956 E0.09325 
; Some(Annotation { label: ExtrusionMove, dx: -0.48199463, dy: -0.49199677, dz: 0.0, de: 0.09325, dt: 0.032799784, ex_width_mm: 5.115307 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X105.787 E0.74021 
; Some(Annotation { label: ExtrusionMove, dx: 5.4669952, dy: 0.0, dz: 0.0, de: 0.74021, dt: 0.36446637, ex_width_mm: 5.115548 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X106.7484 Y83.753 E0.16015 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.7969971, dz: 0.0, de: 0.16015, dt: 0.058266703, ex_width_mm: 5.1155396 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X106.7484 Y86.253 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
M204 P1000
G1 X106.7484 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
; LAYER END
G1 X106.7484 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X106.7484 Y83.753 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: -2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X106.7275 Y83.735 E-0.00937 
; Some(Annotation { label: Wipe, dx: -0.018997192, dy: -0.017997742, dz: 0.0, de: -0.00937, dt: 0.00015830994, ex_width_mm: -13.528194 })
; None
G1 X106.7275 Z14.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X93.23601 Y82.956 F9000 
; Some(Annotation { label: TravelMove, dx: -12.264999, dy: -0.7789993, dz: 0.0, de: 0.0, dt: 0.08176666, ex_width_mm: 0.0 })
; None
G1 X93.23601 Z14.7 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X93.23601 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
M204 P1500
G1 X93.23601 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X91.2516 E0.24425 
; Some(Annotation { label: ExtrusionMove, dx: -1.8040009, dy: 0.0, dz: 0.0, de: 0.24425, dt: 0.12026672, ex_width_mm: 5.115449 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X91.2516 Y83.652 E0.09424 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.69599915, dz: 0.0, de: 0.09424, dt: 0.046399944, ex_width_mm: 5.115788 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X91.5354 Y83.885 E0.04707 
; Some(Annotation { label: ExtrusionMove, dx: 0.2579956, dy: 0.23300171, dz: 0.0, de: 0.04707, dt: 0.017199706, ex_width_mm: 5.1156883 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X92.411 Y84.759 E0.16006 
; Some(Annotation { label: ExtrusionMove, dx: 0.79600525, dy: 0.87400055, dz: 0.0, de: 0.16006, dt: 0.058266703, ex_width_mm: 5.115553 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X92.9775 Y85.632 E0.13723 
; Some(Annotation { label: ExtrusionMove, dx: 0.5149994, dy: 0.8730011, dz: 0.0, de: 0.13723, dt: 0.058200072, ex_width_mm: 5.1153417 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X93.3009 Y86.506 E0.12485 
; Some(Annotation { label: ExtrusionMove, dx: 0.29399872, dy: 0.8739929, dz: 0.0, de: 0.12485, dt: 0.058266196, ex_width_mm: 5.1155066 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X93.429596 Y87.379 E0.11926 
; Some(Annotation { label: ExtrusionMove, dx: 0.116996765, dy: 0.8730011, dz: 0.0, de: 0.11926, dt: 0.058200072, ex_width_mm: 5.115646 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X93.3515 Y88.253 E0.11873 
; Some(Annotation { label: ExtrusionMove, dx: -0.070999146, dy: 0.87400055, dz: 0.0, de: 0.11873, dt: 0.058266703, ex_width_mm: 5.115716 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X92.9687 Y89.126 E0.12725 
; Some(Annotation { label: ExtrusionMove, dx: -0.34799957, dy: 0.8730011, dz: 0.0, de: 0.12725, dt: 0.058200072, ex_width_mm: 5.115707 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X92.6167 Y89.563 E0.07333 
; Some(Annotation { label: ExtrusionMove, dx: -0.3199997, dy: 0.4370041, dz: 0.0, de: 0.07333, dt: 0.029133607, ex_width_mm: 5.115145 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X92.1536 Y90 E0.08216 
; Some(Annotation { label: ExtrusionMove, dx: -0.42099762, dy: 0.43699646, dz: 0.0, de: 0.08216, dt: 0.029133098, ex_width_mm: 5.115659 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X91.2516 Y90.741 E0.14964 
; Some(Annotation { label: ExtrusionMove, dx: -0.8199997, dy: 0.7409973, dz: 0.0, de: 0.14964, dt: 0.054666646, ex_width_mm: 5.115535 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
G1 X91.2516 Y93.241 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
M204 P1000
G92 E0
G1 X91.2516 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 2851, end_id: 2926, z: 14.7 })
; LAYER END
G1 X91.2516 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X91.2516 Y90.741 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: -2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X91.2736 Y90.723 E-0.00937 
; Some(Annotation { label: Wipe, dx: 0.019996643, dy: -0.017997742, dz: 0.0, de: -0.00937, dt: 0.00016663868, ex_width_mm: -13.15894 })
; None
G1 X91.2736 Z14.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 Z15.1 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 Z15.3 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X97.736 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.760002, dy: 7.0130005, dz: 0.0, de: 0.0, dt: 0.09840002, ex_width_mm: 0.0 })
; None
G1 Z15.1 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
M73 P79 R2
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
M204 P800
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
M204 P1000
M73 P80 R2
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 Z15.3 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X97.044 Y93.471 F9000 
; Some(Annotation { label: TravelMove, dx: 1.0199966, dy: -4.9769974, dz: 0.0, de: 0.0, dt: 0.033179983, ex_width_mm: 0.0 })
; None
G1 Z15.1 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 Y90.971 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X96.164 Y91.747 E0.15886 
; Some(Annotation { label: ExtrusionMove, dx: -0.87999725, dy: 0.776001, dz: 0.0, de: 0.15886, dt: 0.058666483, ex_width_mm: 5.1156516 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X95.506 Y92.621 E0.14812 
; Some(Annotation { label: ExtrusionMove, dx: -0.65800476, dy: 0.87400055, dz: 0.0, de: 0.14812, dt: 0.058266703, ex_width_mm: 5.1154075 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X95.093 Y93.494 E0.13076 
; Some(Annotation { label: ExtrusionMove, dx: -0.41299438, dy: 0.8730011, dz: 0.0, de: 0.13076, dt: 0.058200072, ex_width_mm: 5.115534 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X94.856 Y94.368 E0.12261 
; Some(Annotation { label: ExtrusionMove, dx: -0.23699951, dy: 0.8739929, dz: 0.0, de: 0.12261, dt: 0.058266196, ex_width_mm: 5.115597 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X94.79 Y95.241 E0.11854 
; Some(Annotation { label: ExtrusionMove, dx: -0.06600189, dy: 0.8730011, dz: 0.0, de: 0.11854, dt: 0.058200072, ex_width_mm: 5.1156216 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X94.988 Y96.115 E0.12133 
; Some(Annotation { label: ExtrusionMove, dx: 0.19799805, dy: 0.87400055, dz: 0.0, de: 0.12133, dt: 0.058266703, ex_width_mm: 5.1153417 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X95.26 Y96.552 E0.06969 
; Some(Annotation { label: ExtrusionMove, dx: 0.27200317, dy: 0.4370041, dz: 0.0, de: 0.06969, dt: 0.029133607, ex_width_mm: 5.1152587 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X95.758 Y97.044 E0.09478 
; Some(Annotation { label: ExtrusionMove, dx: 0.4980011, dy: 0.49199677, dz: 0.0, de: 0.09478, dt: 0.033200074, ex_width_mm: 5.1153502 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X91.357 E0.59587 
; Some(Annotation { label: ExtrusionMove, dx: -4.401001, dy: 0.0, dz: 0.0, de: 0.59587, dt: 0.29340005, ex_width_mm: 5.115475 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X90.166 Y96.115 E0.20451 
; Some(Annotation { label: ExtrusionMove, dx: -1.1910019, dy: -0.92900085, dz: 0.0, de: 0.20451, dt: 0.07940013, ex_width_mm: 5.1154933 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X89.175 Y95.241 E0.1789 
; Some(Annotation { label: ExtrusionMove, dx: -0.9909973, dy: -0.87400055, dz: 0.0, de: 0.1789, dt: 0.06606649, ex_width_mm: 5.115405 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X88.517 Y94.368 E0.14801 
; Some(Annotation { label: ExtrusionMove, dx: -0.65800476, dy: -0.8730011, dz: 0.0, de: 0.14801, dt: 0.058200072, ex_width_mm: 5.1153417 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X88.105 Y93.494 E0.13082 
; Some(Annotation { label: ExtrusionMove, dx: -0.41199493, dy: -0.8739929, dz: 0.0, de: 0.13082, dt: 0.058266196, ex_width_mm: 5.115391 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X87.868 Y92.621 E0.12248 
; Some(Annotation { label: ExtrusionMove, dx: -0.23700714, dy: -0.8730011, dz: 0.0, de: 0.12248, dt: 0.058200072, ex_width_mm: 5.115569 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X87.801 Y91.747 E0.11868 
; Some(Annotation { label: ExtrusionMove, dx: -0.06699371, dy: -0.87400055, dz: 0.0, de: 0.11868, dt: 0.058266703, ex_width_mm: 5.1154003 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X88 Y90.874 E0.12123 
; Some(Annotation { label: ExtrusionMove, dx: 0.1989975, dy: -0.8730011, dz: 0.0, de: 0.12123, dt: 0.058200072, ex_width_mm: 5.115425 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X88.272 Y90.437 E0.06969 
; Some(Annotation { label: ExtrusionMove, dx: 0.27200317, dy: -0.4370041, dz: 0.0, de: 0.06969, dt: 0.029133607, ex_width_mm: 5.1152587 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X88.697 Y90 E0.08253 
; Some(Annotation { label: ExtrusionMove, dx: 0.42499542, dy: -0.43699646, dz: 0.0, de: 0.08253, dt: 0.029133098, ex_width_mm: 5.115257 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X89.834 Y89.126 E0.19417 
; Some(Annotation { label: ExtrusionMove, dx: 1.137001, dy: -0.87400055, dz: 0.0, de: 0.19417, dt: 0.07580007, ex_width_mm: 5.1154995 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X90.825 Y88.253 E0.17881 
; Some(Annotation { label: ExtrusionMove, dx: 0.9909973, dy: -0.8730011, dz: 0.0, de: 0.17881, dt: 0.06606649, ex_width_mm: 5.11539 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X91.483 Y87.379 E0.14812 
; Some(Annotation { label: ExtrusionMove, dx: 0.65800476, dy: -0.87400055, dz: 0.0, de: 0.14812, dt: 0.058266703, ex_width_mm: 5.1154075 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X91.895 Y86.506 E0.1307 
; Some(Annotation { label: ExtrusionMove, dx: 0.41199493, dy: -0.8730011, dz: 0.0, de: 0.1307, dt: 0.058200072, ex_width_mm: 5.115448 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X92.132 Y85.632 E0.12261 
; Some(Annotation { label: ExtrusionMove, dx: 0.23700714, dy: -0.8739929, dz: 0.0, de: 0.12261, dt: 0.058266196, ex_width_mm: 5.115586 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X92.199 Y84.759 E0.11855 
; Some(Annotation { label: ExtrusionMove, dx: 0.06699371, dy: -0.8730011, dz: 0.0, de: 0.11855, dt: 0.058200072, ex_width_mm: 5.1156125 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X92 Y83.885 E0.12136 
; Some(Annotation { label: ExtrusionMove, dx: -0.1989975, dy: -0.87400055, dz: 0.0, de: 0.12136, dt: 0.058266703, ex_width_mm: 5.1153426 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X91.728 Y83.448 E0.06969 
; Some(Annotation { label: ExtrusionMove, dx: -0.27200317, dy: -0.4370041, dz: 0.0, de: 0.06969, dt: 0.029133607, ex_width_mm: 5.1152587 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X91.231 Y82.956 E0.09469 
; Some(Annotation { label: ExtrusionMove, dx: -0.49699402, dy: -0.49199677, dz: 0.0, de: 0.09469, dt: 0.033132933, ex_width_mm: 5.115726 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X95.632 E0.59587 
; Some(Annotation { label: ExtrusionMove, dx: 4.401001, dy: 0.0, dz: 0.0, de: 0.59587, dt: 0.29340005, ex_width_mm: 5.115475 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X96.822 Y83.885 E0.2044 
; Some(Annotation { label: ExtrusionMove, dx: 1.1899948, dy: 0.92900085, dz: 0.0, de: 0.2044, dt: 0.079332985, ex_width_mm: 5.1154313 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X97.044 Y84.08 E0.04001 
; Some(Annotation { label: ExtrusionMove, dx: 0.22200012, dy: 0.1949997, dz: 0.0, de: 0.04001, dt: 0.014800008, ex_width_mm: 5.1159363 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 Y86.58 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
M204 P1000
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 Y84.08 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: -2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X97.024 Y84.063 E-0.00937 
; Some(Annotation { label: Wipe, dx: -0.019996643, dy: -0.016998291, dz: 0.0, de: -0.00937, dt: 0.00016663868, ex_width_mm: -13.488899 })
; None
G1 Z15.3 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X84.43 Y82.956 F9000 
; Some(Annotation { label: TravelMove, dx: -12.594002, dy: -1.1070023, dz: 0.0, de: 0.0, dt: 0.08396001, ex_width_mm: 0.0 })
; None
G1 Z15.1 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X82.956 E0.19957 
; Some(Annotation { label: ExtrusionMove, dx: -1.473999, dy: 0.0, dz: 0.0, de: 0.19957, dt: 0.0982666, ex_width_mm: 5.115452 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 Y83.983 E0.13905 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.0270004, dz: 0.0, de: 0.13905, dt: 0.06846669, ex_width_mm: 5.115479 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X83.836 Y84.759 E0.15886 
; Some(Annotation { label: ExtrusionMove, dx: 0.87999725, dy: 0.776001, dz: 0.0, de: 0.15886, dt: 0.058666483, ex_width_mm: 5.1156516 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X84.494 Y85.632 E0.14801 
; Some(Annotation { label: ExtrusionMove, dx: 0.65800476, dy: 0.8730011, dz: 0.0, de: 0.14801, dt: 0.058200072, ex_width_mm: 5.1153417 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X84.907 Y86.506 E0.13088 
; Some(Annotation { label: ExtrusionMove, dx: 0.41299438, dy: 0.8739929, dz: 0.0, de: 0.13088, dt: 0.058266196, ex_width_mm: 5.1154785 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X85.144 Y87.379 E0.12248 
; Some(Annotation { label: ExtrusionMove, dx: 0.23699951, dy: 0.8730011, dz: 0.0, de: 0.12248, dt: 0.058200072, ex_width_mm: 5.11558 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X85.21 Y88.253 E0.11867 
; Some(Annotation { label: ExtrusionMove, dx: 0.06600189, dy: 0.87400055, dz: 0.0, de: 0.11867, dt: 0.058266703, ex_width_mm: 5.1154084 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X85.012 Y89.126 E0.1212 
; Some(Annotation { label: ExtrusionMove, dx: -0.19799805, dy: 0.8730011, dz: 0.0, de: 0.1212, dt: 0.058200072, ex_width_mm: 5.115425 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X84.74 Y89.563 E0.06969 
; Some(Annotation { label: ExtrusionMove, dx: -0.27200317, dy: 0.4370041, dz: 0.0, de: 0.06969, dt: 0.029133607, ex_width_mm: 5.1152587 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X84.314 Y90 E0.08263 
; Some(Annotation { label: ExtrusionMove, dx: -0.42599487, dy: 0.43699646, dz: 0.0, de: 0.08263, dt: 0.029133098, ex_width_mm: 5.1156044 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X83.178 Y90.874 E0.19406 
; Some(Annotation { label: ExtrusionMove, dx: -1.1360016, dy: 0.87400055, dz: 0.0, de: 0.19406, dt: 0.07573344, ex_width_mm: 5.1154275 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 X82.956 Y91.069 E0.04001 
; Some(Annotation { label: ExtrusionMove, dx: -0.22200012, dy: 0.1949997, dz: 0.0, de: 0.04001, dt: 0.014800008, ex_width_mm: 5.1159363 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
G1 Y93.569 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 2935, end_id: 3010, z: 15.1 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 Y91.069 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: -2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X82.976 Y91.052 E-0.00937 
; Some(Annotation { label: Wipe, dx: 0.019996643, dy: -0.016998291, dz: 0.0, de: -0.00937, dt: 0.00016663868, ex_width_mm: -13.488899 })
; None
G1 Z15.3 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 Z15.5 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 Z15.7 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X97.736 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.760002, dy: 6.683998, dz: 0.0, de: 0.0, dt: 0.09840002, ex_width_mm: 0.0 })
; None
G1 Z15.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
M73 P81 R2
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
M204 P800
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
M204 P1000
M73 P82 R2
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 Z15.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X97.044 Y93.725 F9000 
; Some(Annotation { label: TravelMove, dx: 1.0199966, dy: -4.7229996, dz: 0.0, de: 0.0, dt: 0.031486664, ex_width_mm: 0.0 })
; None
G1 Z15.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 Y91.225 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X96.904 Y91.31 E0.02218 
; Some(Annotation { label: ExtrusionMove, dx: -0.13999939, dy: 0.084999084, dz: 0.0, de: 0.02218, dt: 0.009333293, ex_width_mm: 5.1165853 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
M73 P82 R1
G1 X96.322 Y91.747 E0.09854 
; Some(Annotation { label: ExtrusionMove, dx: -0.58200073, dy: 0.4370041, dz: 0.0, de: 0.09854, dt: 0.03880005, ex_width_mm: 5.1154585 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X95.862 Y92.184 E0.08591 
; Some(Annotation { label: ExtrusionMove, dx: -0.45999908, dy: 0.43699646, dz: 0.0, de: 0.08591, dt: 0.030666607, ex_width_mm: 5.1157765 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X95.496 Y92.621 E0.07718 
; Some(Annotation { label: ExtrusionMove, dx: -0.3659973, dy: 0.4370041, dz: 0.0, de: 0.07718, dt: 0.029133607, ex_width_mm: 5.1156173 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X94.96 Y93.494 E0.1387 
; Some(Annotation { label: ExtrusionMove, dx: -0.5360031, dy: 0.8730011, dz: 0.0, de: 0.1387, dt: 0.058200072, ex_width_mm: 5.1154704 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X94.597 Y94.368 E0.12814 
; Some(Annotation { label: ExtrusionMove, dx: -0.36299896, dy: 0.8739929, dz: 0.0, de: 0.12814, dt: 0.058266196, ex_width_mm: 5.11571 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X94.363 Y95.241 E0.12237 
; Some(Annotation { label: ExtrusionMove, dx: -0.23400116, dy: 0.8730011, dz: 0.0, de: 0.12237, dt: 0.058200072, ex_width_mm: 5.1154017 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X94.315 Y96.115 E0.11851 
; Some(Annotation { label: ExtrusionMove, dx: -0.04799652, dy: 0.87400055, dz: 0.0, de: 0.11851, dt: 0.058266703, ex_width_mm: 5.11535 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X94.461 Y96.552 E0.06238 
; Some(Annotation { label: ExtrusionMove, dx: 0.1459961, dy: 0.4370041, dz: 0.0, de: 0.06238, dt: 0.029133607, ex_width_mm: 5.1152763 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X94.863 Y96.988 E0.0803 
; Some(Annotation { label: ExtrusionMove, dx: 0.40200043, dy: 0.435997, dz: 0.0, de: 0.0803, dt: 0.029066468, ex_width_mm: 5.115836 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X94.951 Y97.044 E0.01412 
; Some(Annotation { label: ExtrusionMove, dx: 0.08799744, dy: 0.055999756, dz: 0.0, de: 0.01412, dt: 0.005866496, ex_width_mm: 5.114648 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X92.176 E0.37572 
; Some(Annotation { label: ExtrusionMove, dx: -2.774994, dy: 0.0, dz: 0.0, de: 0.37572, dt: 0.1849996, ex_width_mm: 5.1155014 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X92.125 Y96.988 E0.01026 
; Some(Annotation { label: ExtrusionMove, dx: -0.051002502, dy: -0.055999756, dz: 0.0, de: 0.01026, dt: 0.0037333171, ex_width_mm: 5.117787 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X91.429 Y96.552 E0.1112 
; Some(Annotation { label: ExtrusionMove, dx: -0.69599915, dy: -0.435997, dz: 0.0, de: 0.1112, dt: 0.046399944, ex_width_mm: 5.1156063 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X90.632 Y96.115 E0.12307 
; Some(Annotation { label: ExtrusionMove, dx: -0.7969971, dy: -0.4370041, dz: 0.0, de: 0.12307, dt: 0.053133138, ex_width_mm: 5.115659 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X89.916 Y95.678 E0.11357 
; Some(Annotation { label: ExtrusionMove, dx: -0.7160034, dy: -0.43699646, dz: 0.0, de: 0.11357, dt: 0.047733564, ex_width_mm: 5.115385 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X89.334 Y95.241 E0.09854 
; Some(Annotation { label: ExtrusionMove, dx: -0.58200073, dy: -0.4370041, dz: 0.0, de: 0.09854, dt: 0.03880005, ex_width_mm: 5.1154585 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X88.873 Y94.805 E0.08591 
; Some(Annotation { label: ExtrusionMove, dx: -0.46099854, dy: -0.435997, dz: 0.0, de: 0.08591, dt: 0.030733237, ex_width_mm: 5.115472 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X88.508 Y94.368 E0.07709 
; Some(Annotation { label: ExtrusionMove, dx: -0.36499786, dy: -0.4370041, dz: 0.0, de: 0.07709, dt: 0.029133607, ex_width_mm: 5.1154065 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X87.972 Y93.494 E0.13882 
; Some(Annotation { label: ExtrusionMove, dx: -0.5360031, dy: -0.8739929, dz: 0.0, de: 0.13882, dt: 0.058266196, ex_width_mm: 5.1156754 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X87.608 Y92.621 E0.12806 
; Some(Annotation { label: ExtrusionMove, dx: -0.3639984, dy: -0.8730011, dz: 0.0, de: 0.12806, dt: 0.058200072, ex_width_mm: 5.1153893 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X87.374 Y91.747 E0.1225 
; Some(Annotation { label: ExtrusionMove, dx: -0.23400116, dy: -0.87400055, dz: 0.0, de: 0.1225, dt: 0.058266703, ex_width_mm: 5.1153727 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X87.327 Y90.874 E0.11837 
; Some(Annotation { label: ExtrusionMove, dx: -0.04699707, dy: -0.8730011, dz: 0.0, de: 0.11837, dt: 0.058200072, ex_width_mm: 5.115456 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X87.473 Y90.437 E0.06238 
; Some(Annotation { label: ExtrusionMove, dx: 0.1459961, dy: -0.4370041, dz: 0.0, de: 0.06238, dt: 0.029133607, ex_width_mm: 5.1152763 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X87.875 Y90 E0.08039 
; Some(Annotation { label: ExtrusionMove, dx: 0.40200043, dy: -0.43699646, dz: 0.0, de: 0.08039, dt: 0.029133098, ex_width_mm: 5.11523 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X88.571 Y89.563 E0.11127 
; Some(Annotation { label: ExtrusionMove, dx: 0.69599915, dy: -0.43699646, dz: 0.0, de: 0.11127, dt: 0.046399944, ex_width_mm: 5.115519 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X89.368 Y89.126 E0.12307 
; Some(Annotation { label: ExtrusionMove, dx: 0.7969971, dy: -0.4370041, dz: 0.0, de: 0.12307, dt: 0.053133138, ex_width_mm: 5.115659 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X90.084 Y88.69 E0.1135 
; Some(Annotation { label: ExtrusionMove, dx: 0.7160034, dy: -0.435997, dz: 0.0, de: 0.1135, dt: 0.047733564, ex_width_mm: 5.1154046 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X90.666 Y88.253 E0.09854 
; Some(Annotation { label: ExtrusionMove, dx: 0.58200073, dy: -0.4370041, dz: 0.0, de: 0.09854, dt: 0.03880005, ex_width_mm: 5.1154585 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X91.127 Y87.816 E0.086 
; Some(Annotation { label: ExtrusionMove, dx: 0.46099854, dy: -0.43699646, dz: 0.0, de: 0.086, dt: 0.030733237, ex_width_mm: 5.1152916 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X91.493 Y87.379 E0.07718 
; Some(Annotation { label: ExtrusionMove, dx: 0.3659973, dy: -0.4370041, dz: 0.0, de: 0.07718, dt: 0.029133607, ex_width_mm: 5.1156173 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X92.028 Y86.506 E0.13863 
; Some(Annotation { label: ExtrusionMove, dx: 0.53500366, dy: -0.8730011, dz: 0.0, de: 0.13863, dt: 0.058200072, ex_width_mm: 5.115499 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X92.392 Y85.632 E0.12819 
; Some(Annotation { label: ExtrusionMove, dx: 0.3639984, dy: -0.8739929, dz: 0.0, de: 0.12819, dt: 0.058266196, ex_width_mm: 5.1156306 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X92.626 Y84.759 E0.12237 
; Some(Annotation { label: ExtrusionMove, dx: 0.23400116, dy: -0.8730011, dz: 0.0, de: 0.12237, dt: 0.058200072, ex_width_mm: 5.1154017 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X92.673 Y83.885 E0.11851 
; Some(Annotation { label: ExtrusionMove, dx: 0.04699707, dy: -0.87400055, dz: 0.0, de: 0.11851, dt: 0.058266703, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X92.527 Y83.448 E0.06238 
; Some(Annotation { label: ExtrusionMove, dx: -0.1459961, dy: -0.4370041, dz: 0.0, de: 0.06238, dt: 0.029133607, ex_width_mm: 5.1152763 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X92.125 Y83.012 E0.0803 
; Some(Annotation { label: ExtrusionMove, dx: -0.40200043, dy: -0.435997, dz: 0.0, de: 0.0803, dt: 0.029066468, ex_width_mm: 5.115836 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X92.037 Y82.956 E0.01412 
; Some(Annotation { label: ExtrusionMove, dx: -0.08799744, dy: -0.055999756, dz: 0.0, de: 0.01412, dt: 0.005866496, ex_width_mm: 5.114648 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X94.812 E0.37572 
; Some(Annotation { label: ExtrusionMove, dx: 2.774994, dy: 0.0, dz: 0.0, de: 0.37572, dt: 0.1849996, ex_width_mm: 5.1155014 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X94.863 Y83.012 E0.01026 
; Some(Annotation { label: ExtrusionMove, dx: 0.051002502, dy: 0.055999756, dz: 0.0, de: 0.01026, dt: 0.0037333171, ex_width_mm: 5.117787 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X95.559 Y83.448 E0.1112 
; Some(Annotation { label: ExtrusionMove, dx: 0.69599915, dy: 0.435997, dz: 0.0, de: 0.1112, dt: 0.046399944, ex_width_mm: 5.1156063 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X96.357 Y83.885 E0.12319 
; Some(Annotation { label: ExtrusionMove, dx: 0.79800415, dy: 0.4370041, dz: 0.0, de: 0.12319, dt: 0.05320028, ex_width_mm: 5.1156764 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X97.044 Y84.304 E0.10895 
; Some(Annotation { label: ExtrusionMove, dx: 0.68699646, dy: 0.41899872, dz: 0.0, de: 0.10895, dt: 0.045799762, ex_width_mm: 5.115466 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 Y86.804 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
M204 P1000
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 Y84.304 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: -2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X97.022 Y84.29 E-0.00937 
; Some(Annotation { label: Wipe, dx: -0.021995544, dy: -0.013999939, dz: 0.0, de: -0.00937, dt: 0.0001832962, ex_width_mm: -13.57795 })
; None
G1 Z15.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X84.176 Y82.956 F9000 
; Some(Annotation { label: TravelMove, dx: -12.846001, dy: -1.3339996, dz: 0.0, de: 0.0, dt: 0.085640006, ex_width_mm: 0.0 })
; None
G1 Z15.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X82.956 E0.16518 
; Some(Annotation { label: ExtrusionMove, dx: -1.2200012, dy: 0.0, dz: 0.0, de: 0.16518, dt: 0.08133341, ex_width_mm: 5.115441 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 Y84.237 E0.17344 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.2809982, dz: 0.0, de: 0.17344, dt: 0.08539988, ex_width_mm: 5.115483 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X83.096 Y84.322 E0.02218 
; Some(Annotation { label: ExtrusionMove, dx: 0.13999939, dy: 0.084999084, dz: 0.0, de: 0.02218, dt: 0.009333293, ex_width_mm: 5.1165853 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X83.678 Y84.759 E0.09854 
; Some(Annotation { label: ExtrusionMove, dx: 0.58200073, dy: 0.4370041, dz: 0.0, de: 0.09854, dt: 0.03880005, ex_width_mm: 5.1154585 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X84.138 Y85.195 E0.08581 
; Some(Annotation { label: ExtrusionMove, dx: 0.45999908, dy: 0.435997, dz: 0.0, de: 0.08581, dt: 0.030666607, ex_width_mm: 5.1153684 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X84.504 Y85.632 E0.07718 
; Some(Annotation { label: ExtrusionMove, dx: 0.3659973, dy: 0.4370041, dz: 0.0, de: 0.07718, dt: 0.029133607, ex_width_mm: 5.1156173 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X85.04 Y86.506 E0.13882 
; Some(Annotation { label: ExtrusionMove, dx: 0.5360031, dy: 0.8739929, dz: 0.0, de: 0.13882, dt: 0.058266196, ex_width_mm: 5.1156754 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X85.403 Y87.379 E0.12801 
; Some(Annotation { label: ExtrusionMove, dx: 0.36299896, dy: 0.8730011, dz: 0.0, de: 0.12801, dt: 0.058200072, ex_width_mm: 5.1154704 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X85.637 Y88.253 E0.1225 
; Some(Annotation { label: ExtrusionMove, dx: 0.23400116, dy: 0.87400055, dz: 0.0, de: 0.1225, dt: 0.058266703, ex_width_mm: 5.1153727 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X85.685 Y89.126 E0.11838 
; Some(Annotation { label: ExtrusionMove, dx: 0.04799652, dy: 0.8730011, dz: 0.0, de: 0.11838, dt: 0.058200072, ex_width_mm: 5.115571 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X85.539 Y89.563 E0.06238 
; Some(Annotation { label: ExtrusionMove, dx: -0.1459961, dy: 0.4370041, dz: 0.0, de: 0.06238, dt: 0.029133607, ex_width_mm: 5.1152763 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X85.137 Y90 E0.08039 
; Some(Annotation { label: ExtrusionMove, dx: -0.40200043, dy: 0.43699646, dz: 0.0, de: 0.08039, dt: 0.029133098, ex_width_mm: 5.11523 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X84.441 Y90.437 E0.11127 
; Some(Annotation { label: ExtrusionMove, dx: -0.69599915, dy: 0.43699646, dz: 0.0, de: 0.11127, dt: 0.046399944, ex_width_mm: 5.115519 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X83.643 Y90.874 E0.12319 
; Some(Annotation { label: ExtrusionMove, dx: -0.79800415, dy: 0.4370041, dz: 0.0, de: 0.12319, dt: 0.05320028, ex_width_mm: 5.1156764 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 X82.956 Y91.293 E0.10895 
; Some(Annotation { label: ExtrusionMove, dx: -0.68699646, dy: 0.41899872, dz: 0.0, de: 0.10895, dt: 0.045799762, ex_width_mm: 5.115466 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
G1 Y93.793 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 3019, end_id: 3110, z: 15.5 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 Y91.293 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: -2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X82.978 Y91.279 E-0.00937 
; Some(Annotation { label: Wipe, dx: 0.021995544, dy: -0.013999939, dz: 0.0, de: -0.00937, dt: 0.0001832962, ex_width_mm: -13.57795 })
; None
G1 Z15.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
M73 P83 R1
G1 Z15.9 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999981, de: 0.0, dt: 0.01666665, ex_width_mm: 0.0 })
; None
G1 X91.275795 Z16.1 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.758003, dy: 6.4570007, dz: 0.0, de: 0.0, dt: 0.09838669, ex_width_mm: 0.0 })
; None
G1 Z15.9 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
M204 P800
; LAYER END
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
M73 P84 R1
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
M204 P1000
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z16.1 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 X91.2516 Y93.982 F9000 
; Some(Annotation { label: TravelMove, dx: -13.068001, dy: -4.465996, dz: 0.0, de: 0.0, dt: 0.087120004, ex_width_mm: 0.0 })
; None
G1 Z15.9 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
M204 P1500
G1 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 Y91.482 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X83.885 Y91.067 E0.13776 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.41500092, dz: 0.0, de: 0.13776, dt: 0.061933395, ex_width_mm: 5.115435 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X84.759 Y90.81 E0.12335 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.25700378, dz: 0.0, de: 0.12335, dt: 0.058266703, ex_width_mm: 5.1156974 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X85.632 Y90.72 E0.11883 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.08999634, dz: 0.0, de: 0.11883, dt: 0.058200072, ex_width_mm: 5.115661 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X86.069 Y90.834 E0.06115 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.11399841, dz: 0.0, de: 0.06115, dt: 0.029133098, ex_width_mm: 5.1157374 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X86.506 Y91.221 E0.07903 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.38700104, dz: 0.0, de: 0.07903, dt: 0.029133098, ex_width_mm: 5.1152763 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X86.943 Y91.951 E0.11519 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: 0.7299957, dz: 0.0, de: 0.11519, dt: 0.04866638, ex_width_mm: 5.1153045 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X87.379 Y92.793 E0.12838 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: 0.84200287, dz: 0.0, de: 0.12838, dt: 0.056133524, ex_width_mm: 5.1155043 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X87.816 Y93.541 E0.11729 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: 0.7480011, dz: 0.0, de: 0.11729, dt: 0.04986674, ex_width_mm: 5.11538 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X88.253 Y94.142 E0.10061 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: 0.6009979, dz: 0.0, de: 0.10061, dt: 0.04006653, ex_width_mm: 5.1155562 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X88.69 Y94.616 E0.08729 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: 0.47399902, dz: 0.0, de: 0.08729, dt: 0.031599935, ex_width_mm: 5.115495 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X89.126 Y94.991 E0.07786 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: 0.375, dz: 0.0, de: 0.07786, dt: 0.029066468, ex_width_mm: 5.1152997 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X90 Y95.542 E0.13989 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.5510025, dz: 0.0, de: 0.13989, dt: 0.058266703, ex_width_mm: 5.1155524 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X90.874 Y95.921 E0.12898 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.3789978, dz: 0.0, de: 0.12898, dt: 0.058266703, ex_width_mm: 5.115417 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X91.747 Y96.178 E0.12322 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 0.25700378, dz: 0.0, de: 0.12322, dt: 0.058200072, ex_width_mm: 5.11569 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X92.621 Y96.268 E0.11896 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.08999634, dz: 0.0, de: 0.11896, dt: 0.058266703, ex_width_mm: 5.1154623 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X93.057 Y96.154 E0.06102 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: -0.11399841, dz: 0.0, de: 0.06102, dt: 0.029066468, ex_width_mm: 5.115816 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X93.494 Y95.767 E0.07903 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: -0.38700104, dz: 0.0, de: 0.07903, dt: 0.029133607, ex_width_mm: 5.1152263 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X93.931 Y95.038 E0.11508 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: -0.7289963, dz: 0.0, de: 0.11508, dt: 0.048599754, ex_width_mm: 5.115599 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X94.368 Y94.195 E0.12856 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: -0.8430023, dz: 0.0, de: 0.12856, dt: 0.056200154, ex_width_mm: 5.1154084 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X94.805 Y93.448 E0.11718 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: -0.74700165, dz: 0.0, de: 0.11718, dt: 0.04980011, ex_width_mm: 5.115677 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X95.241 Y92.846 E0.10064 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: -0.6019974, dz: 0.0, de: 0.10064, dt: 0.04013316, ex_width_mm: 5.115554 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X95.678 Y92.373 E0.08719 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: -0.47299957, dz: 0.0, de: 0.08719, dt: 0.03153331, ex_width_mm: 5.1154633 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X96.115 Y91.997 E0.07805 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: -0.37599945, dz: 0.0, de: 0.07805, dt: 0.029133098, ex_width_mm: 5.115247 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X97.044 Y91.423 E0.14785 
; Some(Annotation { label: ExtrusionMove, dx: 0.92900085, dy: -0.5740051, dz: 0.0, de: 0.14785, dt: 0.061933395, ex_width_mm: 5.1153297 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 Y84.493 E0.93829 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -6.9300003, dz: 0.0, de: 0.93829, dt: 0.462, ex_width_mm: 5.1155195 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X96.115 Y84.079 E0.13771 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.41399384, dz: 0.0, de: 0.13771, dt: 0.061933395, ex_width_mm: 5.115642 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X95.241 Y83.822 E0.12335 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.25700378, dz: 0.0, de: 0.12335, dt: 0.058266703, ex_width_mm: 5.1156974 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X94.368 Y83.732 E0.11883 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.08999634, dz: 0.0, de: 0.11883, dt: 0.058200072, ex_width_mm: 5.115661 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X93.931 Y83.846 E0.06115 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.11399841, dz: 0.0, de: 0.06115, dt: 0.029133098, ex_width_mm: 5.1157374 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X93.494 Y84.233 E0.07903 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.38700104, dz: 0.0, de: 0.07903, dt: 0.029133098, ex_width_mm: 5.1152763 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X93.057 Y84.962 E0.11508 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: 0.7289963, dz: 0.0, de: 0.11508, dt: 0.048599754, ex_width_mm: 5.1155753 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X92.621 Y85.805 E0.1285 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: 0.8430023, dz: 0.0, de: 0.1285, dt: 0.056200154, ex_width_mm: 5.115497 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X92.184 Y86.552 E0.11718 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: 0.74700165, dz: 0.0, de: 0.11718, dt: 0.04980011, ex_width_mm: 5.115677 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X91.747 Y87.154 E0.10072 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: 0.6019974, dz: 0.0, de: 0.10072, dt: 0.04013316, ex_width_mm: 5.115583 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X91.31 Y87.627 E0.08719 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: 0.47299957, dz: 0.0, de: 0.08719, dt: 0.03153331, ex_width_mm: 5.1154633 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X90.874 Y88.003 E0.07795 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: 0.37599945, dz: 0.0, de: 0.07795, dt: 0.029066468, ex_width_mm: 5.1154118 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X90 Y88.553 E0.13982 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.55000305, dz: 0.0, de: 0.13982, dt: 0.058266703, ex_width_mm: 5.1156306 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X89.126 Y88.933 E0.12904 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.37999725, dz: 0.0, de: 0.12904, dt: 0.058266703, ex_width_mm: 5.115659 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X88.253 Y89.19 E0.12322 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 0.25700378, dz: 0.0, de: 0.12322, dt: 0.058200072, ex_width_mm: 5.11569 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X87.379 Y89.28 E0.11896 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.08999634, dz: 0.0, de: 0.11896, dt: 0.058266703, ex_width_mm: 5.1154623 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X86.943 Y89.166 E0.06102 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: -0.11399841, dz: 0.0, de: 0.06102, dt: 0.029066468, ex_width_mm: 5.115816 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X86.506 Y88.779 E0.07903 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: -0.38700104, dz: 0.0, de: 0.07903, dt: 0.029133607, ex_width_mm: 5.1152263 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X86.069 Y88.049 E0.11519 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: -0.7299957, dz: 0.0, de: 0.11519, dt: 0.04866638, ex_width_mm: 5.1153283 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X85.632 Y87.207 E0.12844 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: -0.84200287, dz: 0.0, de: 0.12844, dt: 0.056133524, ex_width_mm: 5.115413 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X85.195 Y86.459 E0.11729 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: -0.7480011, dz: 0.0, de: 0.11729, dt: 0.04986674, ex_width_mm: 5.11538 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X84.759 Y85.858 E0.10053 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: -0.6009979, dz: 0.0, de: 0.10053, dt: 0.04006653, ex_width_mm: 5.1155314 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X84.322 Y85.384 E0.08729 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: -0.47399902, dz: 0.0, de: 0.08729, dt: 0.031599935, ex_width_mm: 5.115495 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X83.885 Y85.009 E0.07797 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: -0.375, dz: 0.0, de: 0.07797, dt: 0.029133098, ex_width_mm: 5.115783 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X82.956 Y84.434 E0.14793 
; Some(Annotation { label: ExtrusionMove, dx: -0.92900085, dy: -0.5750046, dz: 0.0, de: 0.14793, dt: 0.061933395, ex_width_mm: 5.115634 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 Y82.956 E0.20011 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.4779968, dz: 0.0, de: 0.20011, dt: 0.098533124, ex_width_mm: 5.115419 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
G1 X83.978 E0.13837 
; Some(Annotation { label: ExtrusionMove, dx: 1.0219955, dy: 0.0, dz: 0.0, de: 0.13837, dt: 0.068133034, ex_width_mm: 5.1153917 })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 3119, end_id: 3192, z: 15.9 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X82.956 E-0.36409 
; Some(Annotation { label: Wipe, dx: -1.0219955, dy: 0.0, dz: 0.0, de: -0.36409, dt: 0.008516629, ex_width_mm: -13.460018 })
; None
G1 Y84.434 E-0.52654 
; Some(Annotation { label: Wipe, dx: 0.0, dy: 1.4779968, dz: 0.0, de: -0.52654, dt: 0.0123166405, ex_width_mm: -13.45996 })
; None
G1 X82.978 Y84.448 E-0.00937 
; Some(Annotation { label: Wipe, dx: 0.021995544, dy: 0.013999939, dz: 0.0, de: -0.00937, dt: 0.0001832962, ex_width_mm: -13.57795 })
; None
G1 X91.275795 Z16.1 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 X91.275795 Z16.3 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999886, de: 0.0, dt: 0.01666657, ex_width_mm: 0.0 })
; None
G1 X91.275795 Z16.5 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 14.758003, dy: 13.288002, dz: 0.0, de: 0.0, dt: 0.09838669, ex_width_mm: 0.0 })
; None
G1 X107.509605 Z16.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X107.509605 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X107.509605 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
M73 P85 R1
G1 X90.4904 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X90.4904 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X107.509605 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 1.0314667, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X107.509605 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 1.0234665, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X108.40501 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
M204 P800
; LAYER END
G1 X108.40501 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X89.595 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X89.595 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X108.40501 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 1.1400005, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X108.40501 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 1.1320003, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
M204 P1000
M73 P86 R1
G1 X107.5547 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
; LAYER END
G1 X107.5547 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 X107.5547 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X105.6264 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z16.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 X105.853004 Y94.457 F9000 
; Some(Annotation { label: TravelMove, dx: 0.20600128, dy: -3.9909973, dz: 0.0, de: 0.0, dt: 0.02660665, ex_width_mm: 0.0 })
; None
G1 X105.853004 Z16.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X105.853004 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
M204 P1500
G1 X105.853004 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X105.853004 Y91.957 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X105.7265 Y92.013 E0.01732 
; Some(Annotation { label: ExtrusionMove, dx: -0.11500549, dy: 0.055999756, dz: 0.0, de: 0.01732, dt: 0.0076670325, ex_width_mm: 5.1157875 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X104.7651 Y92.689 E0.1496 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.6760025, dz: 0.0, de: 0.1496, dt: 0.058266703, ex_width_mm: 5.115466 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X103.804794 Y93.709 E0.18178 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: 1.0199966, dz: 0.0, de: 0.18178, dt: 0.06799977, ex_width_mm: 5.11554 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X102.84341 Y94.874 E0.19719 
; Some(Annotation { label: ExtrusionMove, dx: -0.8739929, dy: 1.1650009, dz: 0.0, de: 0.19719, dt: 0.07766673, ex_width_mm: 5.115536 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X102.3627 Y95.299 E0.08253 
; Some(Annotation { label: ExtrusionMove, dx: -0.4370041, dy: 0.42500305, dz: 0.0, de: 0.08253, dt: 0.029133607, ex_width_mm: 5.1151667 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X101.8831 Y95.563 E0.06901 
; Some(Annotation { label: ExtrusionMove, dx: -0.435997, dy: 0.26399994, dz: 0.0, de: 0.06901, dt: 0.029066468, ex_width_mm: 5.1154904 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X100.92171 Y95.739 E0.12071 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.17599487, dz: 0.0, de: 0.12071, dt: 0.058266703, ex_width_mm: 5.1154785 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X99.9614 Y95.654 E0.11876 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.084999084, dz: 0.0, de: 0.11876, dt: 0.058200072, ex_width_mm: 5.115552 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X99 Y95.403 E0.12312 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.25099945, dz: 0.0, de: 0.12312, dt: 0.058266703, ex_width_mm: 5.115568 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X98.038605 Y94.976 E0.1317 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -0.42700195, dz: 0.0, de: 0.1317, dt: 0.058266703, ex_width_mm: 5.115386 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X97.0783 Y94.299 E0.14958 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.6769943, dz: 0.0, de: 0.14958, dt: 0.058200072, ex_width_mm: 5.115629 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X96.1169 Y93.28 E0.18176 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: -1.0190048, dz: 0.0, de: 0.18176, dt: 0.06793366, ex_width_mm: 5.115369 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X95.1566 Y92.115 E0.19711 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -1.1650009, dz: 0.0, de: 0.19711, dt: 0.07766673, ex_width_mm: 5.1155505 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X94.6759 Y91.689 E0.08263 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: -0.42599487, dz: 0.0, de: 0.08263, dt: 0.029133098, ex_width_mm: 5.1156044 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X94.195206 Y91.426 E0.06906 
; Some(Annotation { label: ExtrusionMove, dx: -0.43699646, dy: -0.2630005, dz: 0.0, de: 0.06906, dt: 0.029133098, ex_width_mm: 5.1157923 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X93.2349 Y91.249 E0.12061 
; Some(Annotation { label: ExtrusionMove, dx: -0.8730011, dy: -0.17700195, dz: 0.0, de: 0.12061, dt: 0.058200072, ex_width_mm: 5.1157174 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X92.273506 Y91.334 E0.11889 
; Some(Annotation { label: ExtrusionMove, dx: -0.87400055, dy: 0.084999084, dz: 0.0, de: 0.11889, dt: 0.058266703, ex_width_mm: 5.1153502 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X92.146996 Y91.367 E0.0162 
; Some(Annotation { label: ExtrusionMove, dx: -0.11500549, dy: 0.03299713, dz: 0.0, de: 0.0162, dt: 0.0076670325, ex_width_mm: 5.115689 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X92.146996 Y84.968 E0.86639 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -6.3989944, dz: 0.0, de: 0.86639, dt: 0.42659962, ex_width_mm: 5.1154943 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X92.273506 Y85.024 E0.01732 
; Some(Annotation { label: ExtrusionMove, dx: 0.11500549, dy: 0.055999756, dz: 0.0, de: 0.01732, dt: 0.0076670325, ex_width_mm: 5.1157875 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X93.2349 Y85.701 E0.14968 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.6769943, dz: 0.0, de: 0.14968, dt: 0.058266703, ex_width_mm: 5.1153917 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X94.195206 Y86.72 E0.18168 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: 1.0190048, dz: 0.0, de: 0.18168, dt: 0.06793366, ex_width_mm: 5.115596 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X95.1566 Y87.885 E0.19719 
; Some(Annotation { label: ExtrusionMove, dx: 0.8739929, dy: 1.1650009, dz: 0.0, de: 0.19719, dt: 0.07766673, ex_width_mm: 5.115536 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X95.63731 Y88.311 E0.08263 
; Some(Annotation { label: ExtrusionMove, dx: 0.4370041, dy: 0.42599487, dz: 0.0, de: 0.08263, dt: 0.029133607, ex_width_mm: 5.1155586 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X96.1169 Y88.574 E0.06894 
; Some(Annotation { label: ExtrusionMove, dx: 0.435997, dy: 0.2630005, dz: 0.0, de: 0.06894, dt: 0.029066468, ex_width_mm: 5.1154895 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X97.0783 Y88.751 E0.12074 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.17700195, dz: 0.0, de: 0.12074, dt: 0.058266703, ex_width_mm: 5.1156054 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X98.038605 Y88.666 E0.11876 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.084999084, dz: 0.0, de: 0.11876, dt: 0.058200072, ex_width_mm: 5.115552 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X99 Y88.414 E0.12316 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.2519989, dz: 0.0, de: 0.12316, dt: 0.058266703, ex_width_mm: 5.1156754 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X99.9614 Y87.987 E0.1317 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -0.42700195, dz: 0.0, de: 0.1317, dt: 0.058266703, ex_width_mm: 5.115386 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X100.92171 Y87.311 E0.14949 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.6760025, dz: 0.0, de: 0.14949, dt: 0.058200072, ex_width_mm: 5.115364 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X101.8831 Y86.291 E0.18187 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: -1.0199966, dz: 0.0, de: 0.18187, dt: 0.06799977, ex_width_mm: 5.115596 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X102.84341 Y85.126 E0.19711 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -1.1650009, dz: 0.0, de: 0.19711, dt: 0.07766673, ex_width_mm: 5.1155505 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X103.324104 Y84.701 E0.08253 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: -0.42500305, dz: 0.0, de: 0.08253, dt: 0.029133098, ex_width_mm: 5.115213 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X103.804794 Y84.437 E0.06913 
; Some(Annotation { label: ExtrusionMove, dx: 0.43699646, dy: -0.26399994, dz: 0.0, de: 0.06913, dt: 0.029133098, ex_width_mm: 5.115802 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X104.7651 Y84.261 E0.12058 
; Some(Annotation { label: ExtrusionMove, dx: 0.8730011, dy: -0.17599487, dz: 0.0, de: 0.12058, dt: 0.058200072, ex_width_mm: 5.115591 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X105.7265 Y84.346 E0.11889 
; Some(Annotation { label: ExtrusionMove, dx: 0.87400055, dy: 0.084999084, dz: 0.0, de: 0.11889, dt: 0.058266703, ex_width_mm: 5.1153502 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X105.853004 Y84.379 E0.0162 
; Some(Annotation { label: ExtrusionMove, dx: 0.11500549, dy: 0.03299713, dz: 0.0, de: 0.0162, dt: 0.0076670325, ex_width_mm: 5.115689 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X105.853004 Y86.879 E0.33849 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 2.5, dz: 0.0, de: 0.33849, dt: 0.16666667, ex_width_mm: 5.1155434 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
M204 P1000
G1 X105.853004 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
; LAYER END
G1 X105.853004 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X105.853004 Y84.379 E-0.89063 
; Some(Annotation { label: Wipe, dx: 0.0, dy: -2.5, dz: 0.0, de: -0.89063, dt: 0.020833334, ex_width_mm: -13.459944 })
; None
G1 X105.82551 Y84.372 E-0.00937 
; Some(Annotation { label: Wipe, dx: -0.025001526, dy: -0.006996155, dz: 0.0, de: -0.00937, dt: 0.00020834606, ex_width_mm: -13.636042 })
; None
G1 X105.82551 Z16.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 X91.2516 Y96.637 F9000 
; Some(Annotation { label: TravelMove, dx: -13.249001, dy: 12.264999, dz: 0.0, de: 0.0, dt: 0.08832667, ex_width_mm: 0.0 })
; None
G1 X91.2516 Z16.3 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X91.2516 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
M204 P1500
G1 X91.2516 F900 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X91.2516 Y83.363 E1.79726 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -13.274002, dz: 0.0, de: 1.79726, dt: 0.8849335, ex_width_mm: 5.115581 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X91.2769 Y83.251 E0.01637 
; Some(Annotation { label: ExtrusionMove, dx: 0.022994995, dy: -0.11199951, dz: 0.0, de: 0.01637, dt: 0.0074666343, ex_width_mm: 5.409444 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X91.3033 Y83.138 E0.01743 
; Some(Annotation { label: ExtrusionMove, dx: 0.024002075, dy: -0.11299896, dz: 0.0, de: 0.01743, dt: 0.0075332643, ex_width_mm: 5.700674 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
M73 P87 R1
G1 X91.328606 Y83.026 E0.01814 
; Some(Annotation { label: ExtrusionMove, dx: 0.023002625, dy: -0.11199951, dz: 0.0, de: 0.01814, dt: 0.0074666343, ex_width_mm: 5.9942565 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X91.451805 Y83.003 E0.01814 
; Some(Annotation { label: ExtrusionMove, dx: 0.11199951, dy: -0.023002625, dz: 0.0, de: 0.01814, dt: 0.0074666343, ex_width_mm: 5.9942565 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X91.5761 Y82.979 E0.01743 
; Some(Annotation { label: ExtrusionMove, dx: 0.11299896, dy: -0.024002075, dz: 0.0, de: 0.01743, dt: 0.0075332643, ex_width_mm: 5.700674 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X91.6993 Y82.956 E0.01637 
; Some(Annotation { label: ExtrusionMove, dx: 0.11199951, dy: -0.022994995, dz: 0.0, de: 0.01637, dt: 0.0074666343, ex_width_mm: 5.409444 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X106.300705 E1.79726 
; Some(Annotation { label: ExtrusionMove, dx: 13.274002, dy: 0.0, dz: 0.0, de: 1.79726, dt: 0.8849335, ex_width_mm: 5.115581 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X106.423904 Y82.979 E0.01637 
; Some(Annotation { label: ExtrusionMove, dx: 0.11199951, dy: 0.022994995, dz: 0.0, de: 0.01637, dt: 0.0074666343, ex_width_mm: 5.409444 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X106.5482 Y83.003 E0.01743 
; Some(Annotation { label: ExtrusionMove, dx: 0.11299896, dy: 0.024002075, dz: 0.0, de: 0.01743, dt: 0.0075332643, ex_width_mm: 5.700674 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X106.6714 Y83.026 E0.01814 
; Some(Annotation { label: ExtrusionMove, dx: 0.11199951, dy: 0.023002625, dz: 0.0, de: 0.01814, dt: 0.0074666343, ex_width_mm: 5.9942565 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X106.6956 Y83.115 E0.01454 
; Some(Annotation { label: ExtrusionMove, dx: 0.022003174, dy: 0.08899689, dz: 0.0, de: 0.01454, dt: 0.005933126, ex_width_mm: 5.992281 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X106.7198 Y83.204 E0.01386 
; Some(Annotation { label: ExtrusionMove, dx: 0.021995544, dy: 0.08900452, dz: 0.0, de: 0.01386, dt: 0.0059336345, ex_width_mm: 5.711689 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X106.7451 Y83.292 E0.01308 
; Some(Annotation { label: ExtrusionMove, dx: 0.023002625, dy: 0.08799744, dz: 0.0, de: 0.01308, dt: 0.005866496, ex_width_mm: 5.4333887 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X106.7484 Y83.363 E0.00969 
; Some(Annotation { label: ExtrusionMove, dx: 0.002998352, dy: 0.070999146, dz: 0.0, de: 0.00969, dt: 0.0047332766, ex_width_mm: 5.151926 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X106.7484 Y96.637 E1.79726 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 13.274002, dz: 0.0, de: 1.79726, dt: 0.8849335, ex_width_mm: 5.115581 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X106.72311 Y96.749 E0.01637 
; Some(Annotation { label: ExtrusionMove, dx: -0.022994995, dy: 0.11199951, dz: 0.0, de: 0.01637, dt: 0.0074666343, ex_width_mm: 5.409444 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X106.6967 Y96.862 E0.01743 
; Some(Annotation { label: ExtrusionMove, dx: -0.024002075, dy: 0.11299896, dz: 0.0, de: 0.01743, dt: 0.0075332643, ex_width_mm: 5.700674 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X106.6714 Y96.974 E0.01814 
; Some(Annotation { label: ExtrusionMove, dx: -0.023002625, dy: 0.11199951, dz: 0.0, de: 0.01814, dt: 0.0074666343, ex_width_mm: 5.9942565 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X106.5482 Y96.997 E0.01814 
; Some(Annotation { label: ExtrusionMove, dx: -0.11199951, dy: 0.023002625, dz: 0.0, de: 0.01814, dt: 0.0074666343, ex_width_mm: 5.9942565 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X106.423904 Y97.021 E0.01743 
; Some(Annotation { label: ExtrusionMove, dx: -0.11299896, dy: 0.024002075, dz: 0.0, de: 0.01743, dt: 0.0075332643, ex_width_mm: 5.700674 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X106.300705 Y97.044 E0.01637 
; Some(Annotation { label: ExtrusionMove, dx: -0.11199951, dy: 0.022994995, dz: 0.0, de: 0.01637, dt: 0.0074666343, ex_width_mm: 5.409444 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X91.6993 E1.79726 
; Some(Annotation { label: ExtrusionMove, dx: -13.274002, dy: 0.0, dz: 0.0, de: 1.79726, dt: 0.8849335, ex_width_mm: 5.115581 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X91.59811 Y97.025 E0.01331 
; Some(Annotation { label: ExtrusionMove, dx: -0.09199524, dy: -0.018997192, dz: 0.0, de: 0.01331, dt: 0.0061330157, ex_width_mm: 5.353413 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X91.4969 Y97.006 E0.01391 
; Some(Annotation { label: ExtrusionMove, dx: -0.09200287, dy: -0.019004822, dz: 0.0, de: 0.01391, dt: 0.0061335242, ex_width_mm: 5.594202 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
G1 X91.3957 Y96.987 E0.0145 
; Some(Annotation { label: ExtrusionMove, dx: -0.09200287, dy: -0.018997192, dz: 0.0, de: 0.0145, dt: 0.0061335242, ex_width_mm: 5.8315797 })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
M204 P1000
G92 E0
G1 X91.3957 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 3202, end_id: 3297, z: 16.3 })
; LAYER END
G1 X91.3957 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X91.4969 Y97.006 E-0.03347 
; Some(Annotation { label: Wipe, dx: 0.09200287, dy: 0.018997192, dz: 0.0, de: -0.03347, dt: 0.00076669053, ex_width_mm: -13.460895 })
; None
G1 X91.59811 Y97.025 E-0.03347 
; Some(Annotation { label: Wipe, dx: 0.09200287, dy: 0.019004822, dz: 0.0, de: -0.03347, dt: 0.00076669053, ex_width_mm: -13.460674 })
; None
G1 X91.6993 Y97.044 E-0.03347 
; Some(Annotation { label: Wipe, dx: 0.09199524, dy: 0.018997192, dz: 0.0, de: -0.03347, dt: 0.00076662697, ex_width_mm: -13.461966 })
; None
G1 X94.1677 E-0.79959 
; Some(Annotation { label: Wipe, dx: 2.2440033, dy: 0.0, dz: 0.0, de: -0.79959, dt: 0.018700028, ex_width_mm: -13.462626 })
; None
G1 X94.1677 Z16.5 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 X94.1677 Z16.7 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 X94.1677 Z16.9 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999886, de: 0.0, dt: 0.01666657, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 12.128998, dy: 0.69200134, dz: 0.0, de: 0.0, dt: 0.08085998, ex_width_mm: 0.0 })
; None
G1 X107.509605 Z16.7 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999886, de: 0.0, dt: 0.01666657, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X107.509605 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X107.509605 F1179 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X90.4904 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 0.78737915, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X90.4904 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 0.78737915, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X107.509605 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 0.78737915, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X107.509605 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 0.7812721, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X108.40501 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
M204 P800
; LAYER END
G1 X108.40501 F1179 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X89.595 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 0.8702293, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X89.595 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 0.8702293, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
M73 P88 R1
G1 X108.40501 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 0.8702293, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X108.40501 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 0.86412233, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
M204 P1000
G1 X107.5547 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
; LAYER END
G1 X107.5547 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 X107.5547 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X105.6264 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z16.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999886, de: 0.0, dt: 0.01666657, ex_width_mm: 0.0 })
; None
G1 X107.15101 Y95.096 F9000 
; Some(Annotation { label: TravelMove, dx: 1.3860016, dy: -3.3519974, dz: 0.0, de: 0.0, dt: 0.02234665, ex_width_mm: 0.0 })
; None
G1 X107.15101 Z16.7 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999886, de: 0.0, dt: 0.01666657, ex_width_mm: 0.0 })
; None
; LAYER START
G1 X107.15101 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X107.15101 F1320 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X105.89811 Y97.046 E0.43196 
; Some(Annotation { label: ExtrusionMove, dx: -1.1389999, dy: 1.949997, dz: 0.0, de: 0.43196, dt: 0.08863622, ex_width_mm: 7.2269077 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X104.8586 E0.18076 
; Some(Annotation { label: ExtrusionMove, dx: -0.9450073, dy: 0.0, dz: 0.0, de: 0.18076, dt: 0.042954877, ex_width_mm: 7.2269173 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X106.7506 Y94.102 E0.65219 
; Some(Annotation { label: ExtrusionMove, dx: 1.7200012, dy: -2.9440002, dz: 0.0, de: 0.65219, dt: 0.1338182, ex_width_mm: 7.2269235 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X106.7506 Y92.486 E0.30911 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.6159973, dz: 0.0, de: 0.30911, dt: 0.073454425, ex_width_mm: 7.227004 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X103.820206 Y97.046 E1.01017 
; Some(Annotation { label: ExtrusionMove, dx: -2.6639938, dy: 4.5599976, dz: 0.0, de: 1.01017, dt: 0.20727262, ex_width_mm: 7.226911 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X102.78181 E0.18057 
; Some(Annotation { label: ExtrusionMove, dx: -0.94400024, dy: 0.0, dz: 0.0, de: 0.18057, dt: 0.042909104, ex_width_mm: 7.2270226 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X106.7506 Y90.87 E1.36816 
; Some(Annotation { label: ExtrusionMove, dx: 3.607994, dy: -6.175995, dz: 0.0, de: 1.36816, dt: 0.28072703, ex_width_mm: 7.2269535 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X106.7506 Y89.254 E0.30911 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.616005, dz: 0.0, de: 0.30911, dt: 0.073454775, ex_width_mm: 7.22697 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X101.742294 Y97.046 E1.72624 
; Some(Annotation { label: ExtrusionMove, dx: -4.5530014, dy: 7.792, dz: 0.0, de: 1.72624, dt: 0.35418183, ex_width_mm: 7.226944 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X100.7039 E0.18057 
; Some(Annotation { label: ExtrusionMove, dx: -0.9439926, dy: 0.0, dz: 0.0, de: 0.18057, dt: 0.042908754, ex_width_mm: 7.227081 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X106.7506 Y87.638 E2.08422 
; Some(Annotation { label: ExtrusionMove, dx: 5.496994, dy: -9.407997, dz: 0.0, de: 2.08422, dt: 0.42763624, ex_width_mm: 7.226934 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X106.7506 Y86.021 E0.3093 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.6169968, dz: 0.0, de: 0.3093, dt: 0.07349985, ex_width_mm: 7.226978 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X99.6644 Y97.046 E2.44246 
; Some(Annotation { label: ExtrusionMove, dx: -6.4420013, dy: 11.024994, dz: 0.0, de: 2.44246, dt: 0.5011361, ex_width_mm: 7.2269187 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X98.62601 E0.18057 
; Some(Annotation { label: ExtrusionMove, dx: -0.9439926, dy: 0.0, dz: 0.0, de: 0.18057, dt: 0.042908754, ex_width_mm: 7.227081 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X106.7506 Y84.405 E2.80045 
; Some(Annotation { label: ExtrusionMove, dx: 7.385994, dy: -12.640999, dz: 0.0, de: 2.80045, dt: 0.57459086, ex_width_mm: 7.2269373 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X106.7506 Y82.954 E0.27755 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.4509964, dz: 0.0, de: 0.27755, dt: 0.06595438, ex_width_mm: 7.2270465 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
M73 P89 R1
G1 X106.645 E0.01836 
; Some(Annotation { label: ExtrusionMove, dx: -0.09600067, dy: 0.0, dz: 0.0, de: 0.01836, dt: 0.0043636668, ex_width_mm: 7.2257733 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X97.58761 Y97.046 E3.12192 
; Some(Annotation { label: ExtrusionMove, dx: -8.233994, dy: 14.091995, dz: 0.0, de: 3.12192, dt: 0.64054525, ex_width_mm: 7.22694 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X96.5481 E0.18076 
; Some(Annotation { label: ExtrusionMove, dx: -0.9449997, dy: 0.0, dz: 0.0, de: 0.18076, dt: 0.042954534, ex_width_mm: 7.2269754 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X105.6066 Y82.954 E3.12201 
; Some(Annotation { label: ExtrusionMove, dx: 8.234993, dy: -14.091995, dz: 0.0, de: 3.12201, dt: 0.64054525, ex_width_mm: 7.2269254 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X104.5682 E0.18057 
; Some(Annotation { label: ExtrusionMove, dx: -0.94400024, dy: 0.0, dz: 0.0, de: 0.18057, dt: 0.042909104, ex_width_mm: 7.2270226 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X95.509705 Y97.046 E3.12201 
; Some(Annotation { label: ExtrusionMove, dx: -8.234993, dy: 14.091995, dz: 0.0, de: 3.12201, dt: 0.64054525, ex_width_mm: 7.2269254 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X94.471306 E0.18057 
; Some(Annotation { label: ExtrusionMove, dx: -0.94400024, dy: 0.0, dz: 0.0, de: 0.18057, dt: 0.042909104, ex_width_mm: 7.2270226 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X103.5287 Y82.954 E3.12192 
; Some(Annotation { label: ExtrusionMove, dx: 8.233994, dy: -14.091995, dz: 0.0, de: 3.12192, dt: 0.64054525, ex_width_mm: 7.22694 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X102.490295 E0.18057 
; Some(Annotation { label: ExtrusionMove, dx: -0.94400024, dy: 0.0, dz: 0.0, de: 0.18057, dt: 0.042909104, ex_width_mm: 7.2270226 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X93.43181 Y97.046 E3.12201 
; Some(Annotation { label: ExtrusionMove, dx: -8.234993, dy: 14.091995, dz: 0.0, de: 3.12201, dt: 0.64054525, ex_width_mm: 7.2269254 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X92.3934 E0.18057 
; Some(Annotation { label: ExtrusionMove, dx: -0.94400024, dy: 0.0, dz: 0.0, de: 0.18057, dt: 0.042909104, ex_width_mm: 7.2270226 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X101.4508 Y82.954 E3.12192 
; Some(Annotation { label: ExtrusionMove, dx: 8.233994, dy: -14.091995, dz: 0.0, de: 3.12192, dt: 0.64054525, ex_width_mm: 7.22694 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X100.4124 E0.18057 
; Some(Annotation { label: ExtrusionMove, dx: -0.94400024, dy: 0.0, dz: 0.0, de: 0.18057, dt: 0.042909104, ex_width_mm: 7.2270226 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X91.355 Y97.046 E3.12192 
; Some(Annotation { label: ExtrusionMove, dx: -8.233994, dy: 14.091995, dz: 0.0, de: 3.12192, dt: 0.64054525, ex_width_mm: 7.22694 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X91.249405 E0.01836 
; Some(Annotation { label: ExtrusionMove, dx: -0.09600067, dy: 0.0, dz: 0.0, de: 0.01836, dt: 0.0043636668, ex_width_mm: 7.2257733 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X91.249405 Y95.595 E0.27755 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.4509964, dz: 0.0, de: 0.27755, dt: 0.06595438, ex_width_mm: 7.2270465 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X99.374 Y82.954 E2.80045 
; Some(Annotation { label: ExtrusionMove, dx: 7.385994, dy: -12.640999, dz: 0.0, de: 2.80045, dt: 0.57459086, ex_width_mm: 7.2269373 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X98.334496 E0.18076 
; Some(Annotation { label: ExtrusionMove, dx: -0.9449997, dy: 0.0, dz: 0.0, de: 0.18076, dt: 0.042954534, ex_width_mm: 7.2269754 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
M73 P90 R1
G1 X91.249405 Y93.978 E2.4422 
; Some(Annotation { label: ExtrusionMove, dx: -6.4409943, dy: 11.023994, dz: 0.0, de: 2.4422, dt: 0.5010907, ex_width_mm: 7.226925 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X91.249405 Y92.362 E0.30911 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.6159973, dz: 0.0, de: 0.30911, dt: 0.073454425, ex_width_mm: 7.227004 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X97.2961 Y82.954 E2.08422 
; Some(Annotation { label: ExtrusionMove, dx: 5.496994, dy: -9.407997, dz: 0.0, de: 2.08422, dt: 0.42763624, ex_width_mm: 7.226934 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X96.257706 E0.18057 
; Some(Annotation { label: ExtrusionMove, dx: -0.9439926, dy: 0.0, dz: 0.0, de: 0.18057, dt: 0.042908754, ex_width_mm: 7.227081 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X91.249405 Y90.746 E1.72624 
; Some(Annotation { label: ExtrusionMove, dx: -4.5530014, dy: 7.792, dz: 0.0, de: 1.72624, dt: 0.35418183, ex_width_mm: 7.226944 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X91.249405 Y89.13 E0.30911 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.616005, dz: 0.0, de: 0.30911, dt: 0.073454775, ex_width_mm: 7.22697 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X95.2182 Y82.954 E1.36816 
; Some(Annotation { label: ExtrusionMove, dx: 3.607994, dy: -6.175995, dz: 0.0, de: 1.36816, dt: 0.28072703, ex_width_mm: 7.2269535 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X94.179794 E0.18057 
; Some(Annotation { label: ExtrusionMove, dx: -0.94400024, dy: 0.0, dz: 0.0, de: 0.18057, dt: 0.042909104, ex_width_mm: 7.2270226 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X91.249405 Y87.514 E1.01017 
; Some(Annotation { label: ExtrusionMove, dx: -2.6639938, dy: 4.5599976, dz: 0.0, de: 1.01017, dt: 0.20727262, ex_width_mm: 7.226911 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X91.249405 Y85.897 E0.3093 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.6169968, dz: 0.0, de: 0.3093, dt: 0.07349985, ex_width_mm: 7.226978 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X93.1414 Y82.954 E0.65203 
; Some(Annotation { label: ExtrusionMove, dx: 1.7200012, dy: -2.9430008, dz: 0.0, de: 0.65203, dt: 0.13377276, ex_width_mm: 7.2269793 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X92.1019 E0.18076 
; Some(Annotation { label: ExtrusionMove, dx: -0.9450073, dy: 0.0, dz: 0.0, de: 0.18076, dt: 0.042954877, ex_width_mm: 7.2269173 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G1 X90.849 Y84.904 E0.43196 
; Some(Annotation { label: ExtrusionMove, dx: -1.1389999, dy: 1.949997, dz: 0.0, de: 0.43196, dt: 0.08863622, ex_width_mm: 7.2269077 })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
G92 E0
G1 X90.849 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 3308, end_id: 3376, z: 16.7 })
; LAYER END
G1 X90.849 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X92.1019 Y82.954 E-0.80451 
; Some(Annotation { label: Wipe, dx: 1.1389999, dy: -1.949997, dz: 0.0, de: -0.80451, dt: 0.016249975, ex_width_mm: -13.459858 })
; None
G1 X92.396706 E-0.09549 
; Some(Annotation { label: Wipe, dx: 0.26800537, dy: 0.0, dz: 0.0, de: -0.09549, dt: 0.0022333781, ex_width_mm: -13.461713 })
; None
G1 X92.396706 Z16.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999886, de: 0.0, dt: 0.01666657, ex_width_mm: 0.0 })
; None
G1 Z17.1 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 Z17.3 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999886, de: 0.0, dt: 0.01666657, ex_width_mm: 0.0 })
; None
G1 X97.736 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 13.738998, dy: 14.781998, dz: 0.0, de: 0.0, dt: 0.098546654, ex_width_mm: 0.0 })
; None
G1 Z17.1 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999886, de: 0.0, dt: 0.01666657, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 F1283 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 0.72355413, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 0.72355413, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 0.72355413, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 0.7179422, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
M204 P800
; LAYER END
G1 F1283 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 0.7996885, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 0.7996885, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
M73 P91 R1
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 0.7996885, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 0.7940765, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
M204 P1000
M73 P91 R0
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 Z17.3 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999886, de: 0.0, dt: 0.01666657, ex_width_mm: 0.0 })
; None
G1 X83.022 Y96.823 F9000 
; Some(Annotation { label: TravelMove, dx: -13.001999, dy: -1.625, dz: 0.0, de: 0.0, dt: 0.086679995, ex_width_mm: 0.0 })
; None
G1 Z17.1 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.19999886, de: 0.0, dt: 0.01666657, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
M204 P1500
G1 F1283 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X82.933 Y96.912 E0.02118 
; Some(Annotation { label: ExtrusionMove, dx: -0.08900452, dy: 0.08900452, dz: 0.0, de: 0.02118, dt: 0.004162331, ex_width_mm: 6.357477 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X82.966 Y97.034 E0.02126 
; Some(Annotation { label: ExtrusionMove, dx: 0.03300476, dy: 0.12199402, dz: 0.0, de: 0.02126, dt: 0.005705098, ex_width_mm: 6.355819 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X83.088 Y97.067 E0.02126 
; Some(Annotation { label: ExtrusionMove, dx: 0.12199402, dy: 0.03300476, dz: 0.0, de: 0.02126, dt: 0.005705098, ex_width_mm: 6.355819 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X83.177 Y96.978 E0.02118 
; Some(Annotation { label: ExtrusionMove, dx: 0.08900452, dy: -0.08900452, dz: 0.0, de: 0.02118, dt: 0.004162331, ex_width_mm: 6.357477 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X83.144 Y96.856 E0.02126 
; Some(Annotation { label: ExtrusionMove, dx: -0.03300476, dy: -0.12199402, dz: 0.0, de: 0.02126, dt: 0.005705098, ex_width_mm: 6.355819 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X82.956 Y95.555 E0.17798 
; Some(Annotation { label: ExtrusionMove, dx: -0.18799591, dy: -1.3010025, dz: 0.0, de: 0.17798, dt: 0.060841896, ex_width_mm: 5.115541 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X84.445 Y97.044 E0.28511 
; Some(Annotation { label: ExtrusionMove, dx: 1.4889984, dy: 1.4889984, dz: 0.0, de: 0.28511, dt: 0.069633596, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X85.596 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.053827014, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X82.956 Y94.404 E0.5055 
; Some(Annotation { label: ExtrusionMove, dx: -2.6399994, dy: -2.6399994, dz: 0.0, de: 0.5055, dt: 0.12346061, ex_width_mm: 5.1155024 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 Y93.252 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.1520004, dz: 0.0, de: 0.15598, dt: 0.053873755, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X86.748 Y97.044 E0.72608 
; Some(Annotation { label: ExtrusionMove, dx: 3.7919998, dy: 3.7919998, dz: 0.0, de: 0.72608, dt: 0.17733437, ex_width_mm: 5.115488 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X87.899 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.053827014, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X82.956 Y92.101 E0.94647 
; Some(Annotation { label: ExtrusionMove, dx: -4.943001, dy: -4.943001, dz: 0.0, de: 0.94647, dt: 0.23116139, ex_width_mm: 5.1154885 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 Y90.95 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.151001, dz: 0.0, de: 0.15584, dt: 0.053827014, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X89.05 Y97.044 E1.16687 
; Some(Annotation { label: ExtrusionMove, dx: 6.094002, dy: 6.094002, dz: 0.0, de: 1.16687, dt: 0.2849884, ex_width_mm: 5.1155324 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X90.202 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 1.1520004, dy: 0.0, dz: 0.0, de: 0.15598, dt: 0.053873755, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X82.956 Y89.798 E1.38745 
; Some(Annotation { label: ExtrusionMove, dx: -7.246002, dy: -7.246002, dz: 0.0, de: 1.38745, dt: 0.33886215, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 Y88.647 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.1509933, dz: 0.0, de: 0.15584, dt: 0.053826656, ex_width_mm: 5.1155467 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X91.353 Y97.044 E1.60784 
; Some(Annotation { label: ExtrusionMove, dx: 8.396996, dy: 8.396996, dz: 0.0, de: 1.60784, dt: 0.3926888, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X92.505 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 1.1520004, dy: 0.0, dz: 0.0, de: 0.15598, dt: 0.053873755, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X82.956 Y87.495 E1.82842 
; Some(Annotation { label: ExtrusionMove, dx: -9.548996, dy: -9.548996, dz: 0.0, de: 1.82842, dt: 0.44656253, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 Y86.344 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.151001, dz: 0.0, de: 0.15584, dt: 0.053827014, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
M73 P92 R0
G1 X93.656 Y97.044 E2.04881 
; Some(Annotation { label: ExtrusionMove, dx: 10.699997, dy: 10.699997, dz: 0.0, de: 2.04881, dt: 0.5003896, ex_width_mm: 5.11551 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X94.807 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.053827014, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X82.956 Y85.193 E2.2692 
; Some(Annotation { label: ExtrusionMove, dx: -11.850998, dy: -11.850998, dz: 0.0, de: 2.2692, dt: 0.55421656, ex_width_mm: 5.1155086 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 Y84.041 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.1520004, dz: 0.0, de: 0.15598, dt: 0.053873755, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X95.959 Y97.044 E2.48978 
; Some(Annotation { label: ExtrusionMove, dx: 13.002998, dy: 13.002998, dz: 0.0, de: 2.48978, dt: 0.6080903, ex_width_mm: 5.115504 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X97.044 Y96.977 E0.14718 
; Some(Annotation { label: ExtrusionMove, dx: 1.0849991, dy: -0.06700134, dz: 0.0, de: 0.14718, dt: 0.05074041, ex_width_mm: 5.1153917 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X83.023 Y82.956 E2.68471 
; Some(Annotation { label: ExtrusionMove, dx: -14.020996, dy: -14.020996, dz: 0.0, de: 2.68471, dt: 0.6556974, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X84.174 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.053827014, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X97.044 Y95.826 E2.46432 
; Some(Annotation { label: ExtrusionMove, dx: 12.869995, dy: 12.869995, dz: 0.0, de: 2.46432, dt: 0.60187036, ex_width_mm: 5.115518 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 Y94.675 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.1509933, dz: 0.0, de: 0.15584, dt: 0.053826656, ex_width_mm: 5.1155467 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X85.325 Y82.956 E2.24393 
; Some(Annotation { label: ExtrusionMove, dx: -11.719002, dy: -11.719002, dz: 0.0, de: 2.24393, dt: 0.5480437, ex_width_mm: 5.115518 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X86.477 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 1.1520004, dy: 0.0, dz: 0.0, de: 0.15598, dt: 0.053873755, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X97.044 Y93.523 E2.02335 
; Some(Annotation { label: ExtrusionMove, dx: 10.567001, dy: 10.567001, dz: 0.0, de: 2.02335, dt: 0.49416995, ex_width_mm: 5.1155243 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 Y92.372 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.151001, dz: 0.0, de: 0.15584, dt: 0.053827014, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X87.628 Y82.956 E1.80295 
; Some(Annotation { label: ExtrusionMove, dx: -9.416, dy: -9.416, dz: 0.0, de: 1.80295, dt: 0.44034296, ex_width_mm: 5.1155005 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X88.78 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 1.1520004, dy: 0.0, dz: 0.0, de: 0.15598, dt: 0.053873755, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X97.044 Y91.22 E1.58237 
; Some(Annotation { label: ExtrusionMove, dx: 8.264, dy: 8.264, dz: 0.0, de: 1.58237, dt: 0.38646922, ex_width_mm: 5.1155066 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
M73 P93 R0
G1 Y90.069 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.151001, dz: 0.0, de: 0.15584, dt: 0.053827014, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X89.931 Y82.956 E1.36198 
; Some(Annotation { label: ExtrusionMove, dx: -7.112999, dy: -7.112999, dz: 0.0, de: 1.36198, dt: 0.3326422, ex_width_mm: 5.1155095 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X91.082 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.053827014, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X97.044 Y88.918 E1.14159 
; Some(Annotation { label: ExtrusionMove, dx: 5.961998, dy: 5.961998, dz: 0.0, de: 1.14159, dt: 0.27881518, ex_width_mm: 5.115514 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 Y87.766 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.1520004, dz: 0.0, de: 0.15598, dt: 0.053873755, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X92.234 Y82.956 E0.92101 
; Some(Annotation { label: ExtrusionMove, dx: -4.8099976, dy: -4.8099976, dz: 0.0, de: 0.92101, dt: 0.22494143, ex_width_mm: 5.1155276 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X93.385 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.053827014, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X97.044 Y86.615 E0.70062 
; Some(Annotation { label: ExtrusionMove, dx: 3.6589966, dy: 3.6589966, dz: 0.0, de: 0.70062, dt: 0.17111441, ex_width_mm: 5.11554 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 Y85.464 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -1.151001, dz: 0.0, de: 0.15584, dt: 0.053827014, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X94.536 Y82.956 E0.48023 
; Some(Annotation { label: ExtrusionMove, dx: -2.5079956, dy: -2.5079956, dz: 0.0, de: 0.48023, dt: 0.1172874, ex_width_mm: 5.1155634 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X95.688 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 1.1520004, dy: 0.0, dz: 0.0, de: 0.15598, dt: 0.053873755, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X97.044 Y84.312 E0.25964 
; Some(Annotation { label: ExtrusionMove, dx: 1.3559952, dy: 1.3559952, dz: 0.0, de: 0.25964, dt: 0.06341365, ex_width_mm: 5.1154566 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X97.066 Y82.934 E0.1866 
; Some(Annotation { label: ExtrusionMove, dx: 0.022003174, dy: -1.3779984, dz: 0.0, de: 0.1866, dt: 0.064442635, ex_width_mm: 5.115564 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X97.097 Y83.046 E0.01805 
; Some(Annotation { label: ExtrusionMove, dx: 0.03099823, dy: 0.11199951, dz: 0.0, de: 0.01805, dt: 0.0052377013, ex_width_mm: 5.868395 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X97.014 Y83.129 E0.01823 
; Some(Annotation { label: ExtrusionMove, dx: -0.08300018, dy: 0.08300018, dz: 0.0, de: 0.01823, dt: 0.0038815362, ex_width_mm: 5.8678436 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X96.901 Y83.099 E0.01816 
; Some(Annotation { label: ExtrusionMove, dx: -0.11299896, dy: -0.02999878, dz: 0.0, de: 0.01816, dt: 0.005284441, ex_width_mm: 5.8686514 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X96.871 Y82.986 E0.01816 
; Some(Annotation { label: ExtrusionMove, dx: -0.02999878, dy: -0.11299896, dz: 0.0, de: 0.01816, dt: 0.005284441, ex_width_mm: 5.8686514 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
G1 X96.954 Y82.903 E0.01823 
; Some(Annotation { label: ExtrusionMove, dx: 0.08300018, dy: -0.08300018, dz: 0.0, de: 0.01823, dt: 0.0038815362, ex_width_mm: 5.8678436 })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 3385, end_id: 3463, z: 17.1 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.871 Y82.986 E-0.04182 
; Some(Annotation { label: Wipe, dx: -0.08300018, dy: 0.08300018, dz: 0.0, de: -0.04182, dt: 0.0006916682, ex_width_mm: -13.460957 })
; None
G1 X96.901 Y83.099 E-0.04165 
; Some(Annotation { label: Wipe, dx: 0.02999878, dy: 0.11299896, dz: 0.0, de: -0.04165, dt: 0.00094165804, ex_width_mm: -13.459764 })
; None
G1 X97.014 Y83.129 E-0.04165 
; Some(Annotation { label: Wipe, dx: 0.11299896, dy: 0.02999878, dz: 0.0, de: -0.04165, dt: 0.00094165804, ex_width_mm: -13.459764 })
; None
G1 X97.097 Y83.046 E-0.04182 
; Some(Annotation { label: Wipe, dx: 0.08300018, dy: -0.08300018, dz: 0.0, de: -0.04182, dt: 0.0006916682, ex_width_mm: -13.460957 })
; None
G1 X97.066 Y82.934 E-0.0414 
; Some(Annotation { label: Wipe, dx: -0.03099823, dy: -0.11199951, dz: 0.0, de: -0.0414, dt: 0.0009333293, ex_width_mm: -13.45992 })
; None
G1 X97.044 Y84.312 E-0.49098 
; Some(Annotation { label: Wipe, dx: -0.022003174, dy: 1.3779984, dz: 0.0, de: -0.49098, dt: 0.01148332, ex_width_mm: -13.46002 })
; None
G1 X96.646 Y83.914 E-0.20068 
; Some(Annotation { label: Wipe, dx: -0.397995, dy: -0.397995, dz: 0.0, de: -0.20068, dt: 0.003316625, ex_width_mm: -13.470923 })
; None
G1 Z17.3 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999886, de: 0.0, dt: 0.01666657, ex_width_mm: 0.0 })
; None
G1 Z17.5 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 Z17.7 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 X97.736 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 1.0899963, dy: 13.821999, dz: 0.0, de: 0.0, dt: 0.09214666, ex_width_mm: 0.0 })
; None
G1 Z17.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 F1282 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 0.7241186, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 0.7241186, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 0.7241186, ex_width_mm: 5.115502 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 0.7185022, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
M204 P800
; LAYER END
G1 F1282 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
; LAYER START
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 0.8003123, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 0.8003123, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
M73 P94 R0
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 0.8003123, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 0.794696, ex_width_mm: 5.115511 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
M204 P1000
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
; LAYER END
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 Z17.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 X83.177 Y83.022 F9000 
; Some(Annotation { label: TravelMove, dx: -12.847, dy: -15.425995, dz: 0.0, de: 0.0, dt: 0.10283997, ex_width_mm: 0.0 })
; None
G1 Z17.5 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
; LAYER START
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
M204 P1500
G1 F1282 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X83.088 Y82.933 E0.02118 
; Some(Annotation { label: ExtrusionMove, dx: -0.08900452, dy: -0.08900452, dz: 0.0, de: 0.02118, dt: 0.004165578, ex_width_mm: 6.357477 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X82.966 Y82.966 E0.02126 
; Some(Annotation { label: ExtrusionMove, dx: -0.12199402, dy: 0.03300476, dz: 0.0, de: 0.02126, dt: 0.0057095485, ex_width_mm: 6.355819 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X82.933 Y83.088 E0.02126 
; Some(Annotation { label: ExtrusionMove, dx: -0.03300476, dy: 0.12199402, dz: 0.0, de: 0.02126, dt: 0.0057095485, ex_width_mm: 6.355819 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X83.022 Y83.177 E0.02118 
; Some(Annotation { label: ExtrusionMove, dx: 0.08900452, dy: 0.08900452, dz: 0.0, de: 0.02118, dt: 0.004165578, ex_width_mm: 6.357477 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X83.144 Y83.144 E0.02126 
; Some(Annotation { label: ExtrusionMove, dx: 0.12199402, dy: -0.03300476, dz: 0.0, de: 0.02126, dt: 0.0057095485, ex_width_mm: 6.355819 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X82.956 Y84.445 E0.17798 
; Some(Annotation { label: ExtrusionMove, dx: -0.18799591, dy: 1.3010025, dz: 0.0, de: 0.17798, dt: 0.060889352, ex_width_mm: 5.115541 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X84.445 Y82.956 E0.28511 
; Some(Annotation { label: ExtrusionMove, dx: 1.4889984, dy: -1.4889984, dz: 0.0, de: 0.28511, dt: 0.06968791, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X85.596 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.053869, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X82.956 Y85.596 E0.5055 
; Some(Annotation { label: ExtrusionMove, dx: -2.6399994, dy: 2.6399994, dz: 0.0, de: 0.5055, dt: 0.12355691, ex_width_mm: 5.1155024 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 Y86.748 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.1520004, dz: 0.0, de: 0.15598, dt: 0.053915776, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X86.748 Y82.956 E0.72608 
; Some(Annotation { label: ExtrusionMove, dx: 3.7919998, dy: -3.7919998, dz: 0.0, de: 0.72608, dt: 0.1774727, ex_width_mm: 5.115488 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X87.899 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.053869, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X82.956 Y87.899 E0.94647 
; Some(Annotation { label: ExtrusionMove, dx: -4.943001, dy: 4.943001, dz: 0.0, de: 0.94647, dt: 0.23134169, ex_width_mm: 5.1154885 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 Y89.05 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.151001, dz: 0.0, de: 0.15584, dt: 0.053869, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X89.05 Y82.956 E1.16687 
; Some(Annotation { label: ExtrusionMove, dx: 6.094002, dy: -6.094002, dz: 0.0, de: 1.16687, dt: 0.28521067, ex_width_mm: 5.1155324 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X90.202 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 1.1520004, dy: 0.0, dz: 0.0, de: 0.15598, dt: 0.053915776, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X82.956 Y90.202 E1.38745 
; Some(Annotation { label: ExtrusionMove, dx: -7.246002, dy: 7.246002, dz: 0.0, de: 1.38745, dt: 0.33912647, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 Y91.353 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.1509933, dz: 0.0, de: 0.15584, dt: 0.053868644, ex_width_mm: 5.1155467 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X91.353 Y82.956 E1.60784 
; Some(Annotation { label: ExtrusionMove, dx: 8.396996, dy: -8.396996, dz: 0.0, de: 1.60784, dt: 0.39299512, ex_width_mm: 5.1155205 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X92.505 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 1.1520004, dy: 0.0, dz: 0.0, de: 0.15598, dt: 0.053915776, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X82.956 Y92.505 E1.82842 
; Some(Annotation { label: ExtrusionMove, dx: -9.548996, dy: 9.548996, dz: 0.0, de: 1.82842, dt: 0.4469109, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 Y93.656 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.151001, dz: 0.0, de: 0.15584, dt: 0.053869, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
M73 P95 R0
G1 X93.656 Y82.956 E2.04881 
; Some(Annotation { label: ExtrusionMove, dx: 10.699997, dy: -10.699997, dz: 0.0, de: 2.04881, dt: 0.50077987, ex_width_mm: 5.11551 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X94.807 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.053869, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X82.956 Y94.807 E2.2692 
; Some(Annotation { label: ExtrusionMove, dx: -11.850998, dy: 11.850998, dz: 0.0, de: 2.2692, dt: 0.5546489, ex_width_mm: 5.1155086 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 Y95.959 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.1520004, dz: 0.0, de: 0.15598, dt: 0.053915776, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X95.959 Y82.956 E2.48978 
; Some(Annotation { label: ExtrusionMove, dx: 13.002998, dy: -13.002998, dz: 0.0, de: 2.48978, dt: 0.6085647, ex_width_mm: 5.115504 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X97.044 Y83.023 E0.14718 
; Some(Annotation { label: ExtrusionMove, dx: 1.0849991, dy: 0.06700134, dz: 0.0, de: 0.14718, dt: 0.05077999, ex_width_mm: 5.1153917 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X83.023 Y97.044 E2.68471 
; Some(Annotation { label: ExtrusionMove, dx: -14.020996, dy: 14.020996, dz: 0.0, de: 2.68471, dt: 0.6562089, ex_width_mm: 5.1155157 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X84.174 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.053869, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X97.044 Y84.174 E2.46432 
; Some(Annotation { label: ExtrusionMove, dx: 12.869995, dy: -12.869995, dz: 0.0, de: 2.46432, dt: 0.60233986, ex_width_mm: 5.115518 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 Y85.325 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.1509933, dz: 0.0, de: 0.15584, dt: 0.053868644, ex_width_mm: 5.1155467 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X85.325 Y97.044 E2.24393 
; Some(Annotation { label: ExtrusionMove, dx: -11.719002, dy: 11.719002, dz: 0.0, de: 2.24393, dt: 0.5484712, ex_width_mm: 5.115518 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X86.477 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 1.1520004, dy: 0.0, dz: 0.0, de: 0.15598, dt: 0.053915776, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X97.044 Y86.477 E2.02335 
; Some(Annotation { label: ExtrusionMove, dx: 10.567001, dy: -10.567001, dz: 0.0, de: 2.02335, dt: 0.4945554, ex_width_mm: 5.1155243 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 Y87.628 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.151001, dz: 0.0, de: 0.15584, dt: 0.053869, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X87.628 Y97.044 E1.80295 
; Some(Annotation { label: ExtrusionMove, dx: -9.416, dy: 9.416, dz: 0.0, de: 1.80295, dt: 0.44068643, ex_width_mm: 5.1155005 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X88.78 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 1.1520004, dy: 0.0, dz: 0.0, de: 0.15598, dt: 0.053915776, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X97.044 Y88.78 E1.58237 
; Some(Annotation { label: ExtrusionMove, dx: 8.264, dy: -8.264, dz: 0.0, de: 1.58237, dt: 0.38677067, ex_width_mm: 5.1155066 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
M73 P96 R0
G1 Y89.931 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.151001, dz: 0.0, de: 0.15584, dt: 0.053869, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X89.931 Y97.044 E1.36198 
; Some(Annotation { label: ExtrusionMove, dx: -7.112999, dy: 7.112999, dz: 0.0, de: 1.36198, dt: 0.3329017, ex_width_mm: 5.1155095 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X91.082 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.053869, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X97.044 Y91.082 E1.14159 
; Some(Annotation { label: ExtrusionMove, dx: 5.961998, dy: -5.961998, dz: 0.0, de: 1.14159, dt: 0.27903265, ex_width_mm: 5.115514 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 Y92.234 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.1520004, dz: 0.0, de: 0.15598, dt: 0.053915776, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X92.234 Y97.044 E0.92101 
; Some(Annotation { label: ExtrusionMove, dx: -4.8099976, dy: 4.8099976, dz: 0.0, de: 0.92101, dt: 0.2251169, ex_width_mm: 5.1155276 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X93.385 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 1.151001, dy: 0.0, dz: 0.0, de: 0.15584, dt: 0.053869, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X97.044 Y93.385 E0.70062 
; Some(Annotation { label: ExtrusionMove, dx: 3.6589966, dy: -3.6589966, dz: 0.0, de: 0.70062, dt: 0.17124788, ex_width_mm: 5.11554 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 Y94.536 E0.15584 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 1.151001, dz: 0.0, de: 0.15584, dt: 0.053869, ex_width_mm: 5.1155124 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X94.536 Y97.044 E0.48023 
; Some(Annotation { label: ExtrusionMove, dx: -2.5079956, dy: 2.5079956, dz: 0.0, de: 0.48023, dt: 0.11737889, ex_width_mm: 5.1155634 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X95.688 E0.15598 
; Some(Annotation { label: ExtrusionMove, dx: 1.1520004, dy: 0.0, dz: 0.0, de: 0.15598, dt: 0.053915776, ex_width_mm: 5.1156664 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X97.044 Y95.688 E0.25964 
; Some(Annotation { label: ExtrusionMove, dx: 1.3559952, dy: -1.3559952, dz: 0.0, de: 0.25964, dt: 0.063463114, ex_width_mm: 5.1154566 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X97.097 Y96.954 E0.17156 
; Some(Annotation { label: ExtrusionMove, dx: 0.053001404, dy: 1.2659988, dz: 0.0, de: 0.17156, dt: 0.059251115, ex_width_mm: 5.115504 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X97.014 Y96.871 E0.01823 
; Some(Annotation { label: ExtrusionMove, dx: -0.08300018, dy: -0.08300018, dz: 0.0, de: 0.01823, dt: 0.0038845637, ex_width_mm: 5.8678436 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X96.901 Y96.901 E0.01816 
; Some(Annotation { label: ExtrusionMove, dx: -0.11299896, dy: 0.02999878, dz: 0.0, de: 0.01816, dt: 0.005288563, ex_width_mm: 5.8686514 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X96.871 Y97.014 E0.01816 
; Some(Annotation { label: ExtrusionMove, dx: -0.02999878, dy: 0.11299896, dz: 0.0, de: 0.01816, dt: 0.005288563, ex_width_mm: 5.8686514 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X96.954 Y97.097 E0.01823 
; Some(Annotation { label: ExtrusionMove, dx: 0.08300018, dy: 0.08300018, dz: 0.0, de: 0.01823, dt: 0.0038845637, ex_width_mm: 5.8678436 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
G1 X97.066 Y97.066 E0.01805 
; Some(Annotation { label: ExtrusionMove, dx: 0.11199951, dy: -0.03099823, dz: 0.0, de: 0.01805, dt: 0.005241787, ex_width_mm: 5.868395 })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
M204 P1000
G92 E0
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; Some(Layer { start_id: 3477, end_id: 3555, z: 17.5 })
; LAYER END
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.954 Y97.097 E-0.0414 
; Some(Annotation { label: Wipe, dx: -0.11199951, dy: 0.03099823, dz: 0.0, de: -0.0414, dt: 0.0009333293, ex_width_mm: -13.45992 })
; None
G1 X96.871 Y97.014 E-0.04182 
; Some(Annotation { label: Wipe, dx: -0.08300018, dy: -0.08300018, dz: 0.0, de: -0.04182, dt: 0.0006916682, ex_width_mm: -13.460957 })
; None
G1 X96.901 Y96.901 E-0.04165 
; Some(Annotation { label: Wipe, dx: 0.02999878, dy: -0.11299896, dz: 0.0, de: -0.04165, dt: 0.00094165804, ex_width_mm: -13.459764 })
; None
G1 X97.014 Y96.871 E-0.04165 
; Some(Annotation { label: Wipe, dx: 0.11299896, dy: -0.02999878, dz: 0.0, de: -0.04165, dt: 0.00094165804, ex_width_mm: -13.459764 })
; None
G1 X97.097 Y96.954 E-0.04182 
; Some(Annotation { label: Wipe, dx: 0.08300018, dy: 0.08300018, dz: 0.0, de: -0.04182, dt: 0.0006916682, ex_width_mm: -13.460957 })
; None
G1 X97.044 Y95.688 E-0.45141 
; Some(Annotation { label: Wipe, dx: -0.053001404, dy: -1.2659988, dz: 0.0, de: -0.45141, dt: 0.01054999, ex_width_mm: -13.459951 })
; None
G1 X96.567 Y96.165 E-0.24025 
; Some(Annotation { label: Wipe, dx: -0.47699738, dy: 0.47699738, dz: 0.0, de: -0.24025, dt: 0.0039749783, ex_width_mm: -13.456073 })
; None
G1 Z17.7 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 Z17.9 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.19999886, de: 0.0, dt: 0.01666657, ex_width_mm: 0.0 })
; None
G1 X106.2237 Z18.1 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 X107.509605 Y97.736 F9000 
; Some(Annotation { label: TravelMove, dx: 1.1689987, dy: 1.5709991, dz: 0.0, de: 0.0, dt: 0.010473328, ex_width_mm: 0.0 })
; None
G1 Z17.9 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; None
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: -15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 0.6221984, ex_width_mm: 5.115502 })
; None
G1 Y82.264 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -15.472, dz: 0.0, de: 2.09483, dt: 0.6221984, ex_width_mm: 5.115502 })
; None
G1 X97.736 E2.09483 
; Some(Annotation { label: ExtrusionMove, dx: 15.472, dy: 0.0, dz: 0.0, de: 2.09483, dt: 0.6221984, ex_width_mm: 5.115502 })
; None
G1 Y97.616 E2.07859 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 15.351997, dz: 0.0, de: 2.07859, dt: 0.6173725, ex_width_mm: 5.1155205 })
; None
G1 X98.55 Y98.55 F9000 
; Some(Annotation { label: TravelMove, dx: 0.814003, dy: 0.93400574, dz: 0.0, de: 0.0, dt: 0.006226705, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: -17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 0.68766785, ex_width_mm: 5.1155157 })
; None
G1 Y81.45 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: -17.100006, dz: 0.0, de: 2.31526, dt: 0.68766785, ex_width_mm: 5.1155157 })
; None
G1 X98.55 E2.31526 
; Some(Annotation { label: ExtrusionMove, dx: 17.100006, dy: 0.0, dz: 0.0, de: 2.31526, dt: 0.68766785, ex_width_mm: 5.1155157 })
; None
M73 P97 R0
G1 Y98.43 E2.29901 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 16.980003, dz: 0.0, de: 2.29901, dt: 0.68284196, ex_width_mm: 5.115511 })
; None
M204 P1000
G1 X97.777 Y98.343 F9000 
; Some(Annotation { label: TravelMove, dx: -0.7730026, dy: -0.086997986, dz: 0.0, de: 0.0, dt: 0.005153351, ex_width_mm: 0.0 })
; None
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.024 Y98.448 E-0.9 
; Some(Annotation { label: Wipe, dx: -1.7529984, dy: 0.10499573, dz: 0.0, de: -0.9, dt: 0.01460832, ex_width_mm: -19.36285 })
; None
G1 X105.6264 Z18.1 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 X105.539505 Y82.585 F9000 
; Some(Annotation { label: TravelMove, dx: -0.07900238, dy: -15.862999, dz: 0.0, de: 0.0, dt: 0.105753325, ex_width_mm: 0.0 })
; None
G1 Z17.9 F720 
; Some(Annotation { label: LowerZ, dx: 0.0, dy: 0.0, dz: -0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
G1 E3 F1200 
; Some(Annotation { label: ExtrusionMove, dx: 0.0, dy: 0.0, dz: 0.0, de: 3.0, dt: 0.14999999, ex_width_mm: inf })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X97.415 Y84.055 E0.25124 
; Some(Annotation { label: ExtrusionMove, dx: 1.4700012, dy: 1.4700012, dz: 0.0, de: 0.25124, dt: 0.059115328, ex_width_mm: 4.5660634 })
; None
M204 P1000
G1 Y85.083 F9000 
; Some(Annotation { label: TravelMove, dx: 0.0, dy: 1.0279999, dz: 0.0, de: 0.0, dt: 0.0068533327, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X94.917 Y82.585 E0.42693 
; Some(Annotation { label: ExtrusionMove, dx: -2.498001, dy: -2.498001, dz: 0.0, de: 0.42693, dt: 0.10045581, ex_width_mm: 4.56599 })
; None
M204 P1000
G1 X93.89 F9000 
; Some(Annotation { label: TravelMove, dx: -1.0270004, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0068466696, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X97.415 Y86.11 E0.60245 
; Some(Annotation { label: ExtrusionMove, dx: 3.5250015, dy: 3.5250015, dz: 0.0, de: 0.60245, dt: 0.14175609, ex_width_mm: 4.565965 })
; None
M204 P1000
G1 Y87.138 F9000 
; Some(Annotation { label: TravelMove, dx: 0.0, dy: 1.0279999, dz: 0.0, de: 0.0, dt: 0.0068533327, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X92.862 Y82.585 E0.77815 
; Some(Annotation { label: ExtrusionMove, dx: -4.5530014, dy: -4.5530014, dz: 0.0, de: 0.77815, dt: 0.18309657, ex_width_mm: 4.5660057 })
; None
M204 P1000
G1 X91.834 F9000 
; Some(Annotation { label: TravelMove, dx: -1.0279999, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0068533327, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X97.415 Y88.166 E0.95384 
; Some(Annotation { label: ExtrusionMove, dx: 5.5810013, dy: 5.5810013, dz: 0.0, de: 0.95384, dt: 0.22443706, ex_width_mm: 4.5659833 })
; None
M204 P1000
G1 Y89.194 F9000 
; Some(Annotation { label: TravelMove, dx: 0.0, dy: 1.0279999, dz: 0.0, de: 0.0, dt: 0.0068533327, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X90.806 Y82.585 E1.12953 
; Some(Annotation { label: ExtrusionMove, dx: -6.609001, dy: -6.609001, dz: 0.0, de: 1.12953, dt: 0.26577753, ex_width_mm: 4.5659676 })
; None
M204 P1000
G1 X89.779 F9000 
; Some(Annotation { label: TravelMove, dx: -1.0270004, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0068466696, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X97.415 Y90.221 E1.30506 
; Some(Annotation { label: ExtrusionMove, dx: 7.6360016, dy: 7.6360016, dz: 0.0, de: 1.30506, dt: 0.30707783, ex_width_mm: 4.5659947 })
; None
M204 P1000
G1 Y91.249 F9000 
; Some(Annotation { label: TravelMove, dx: 0.0, dy: 1.0279999, dz: 0.0, de: 0.0, dt: 0.0068533327, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X88.751 Y82.585 E1.48075 
; Some(Annotation { label: ExtrusionMove, dx: -8.664001, dy: -8.664001, dz: 0.0, de: 1.48075, dt: 0.3484183, ex_width_mm: 4.5659814 })
; None
M204 P1000
G1 X87.723 F9000 
; Some(Annotation { label: TravelMove, dx: -1.0279999, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0068533327, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X97.415 Y92.277 E1.65644 
; Some(Annotation { label: ExtrusionMove, dx: 9.692001, dy: 9.692001, dz: 0.0, de: 1.65644, dt: 0.38975877, ex_width_mm: 4.565971 })
; None
M204 P1000
G1 Y93.304 F9000 
; Some(Annotation { label: TravelMove, dx: 0.0, dy: 1.0270004, dz: 0.0, de: 0.0, dt: 0.0068466696, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X86.696 Y82.585 E1.83197 
; Some(Annotation { label: ExtrusionMove, dx: -10.719002, dy: -10.719002, dz: 0.0, de: 1.83197, dt: 0.43105903, ex_width_mm: 4.56599 })
; None
M204 P1000
G1 X85.668 F9000 
; Some(Annotation { label: TravelMove, dx: -1.0279999, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0068533327, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X97.415 Y94.332 E2.00766 
; Some(Annotation { label: ExtrusionMove, dx: 11.747002, dy: 11.747002, dz: 0.0, de: 2.00766, dt: 0.47239953, ex_width_mm: 4.56598 })
; None
M204 P1000
G1 Y95.36 F9000 
; Some(Annotation { label: TravelMove, dx: 0.0, dy: 1.0279999, dz: 0.0, de: 0.0, dt: 0.0068533327, ex_width_mm: 0.0 })
; None
M204 P800
M73 P98 R0
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X84.64 Y82.585 E2.18336 
; Some(Annotation { label: ExtrusionMove, dx: -12.775002, dy: -12.775002, dz: 0.0, de: 2.18336, dt: 0.51374006, ex_width_mm: 4.565994 })
; None
M204 P1000
G1 X83.612 F9000 
; Some(Annotation { label: TravelMove, dx: -1.0279999, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0068533327, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X97.415 Y96.388 E2.35905 
; Some(Annotation { label: ExtrusionMove, dx: 13.803001, dy: 13.803001, dz: 0.0, de: 2.35905, dt: 0.5550805, ex_width_mm: 4.5659857 })
; None
M204 P1000
G1 Y97.415 F9000 
; Some(Annotation { label: TravelMove, dx: 0.0, dy: 1.0270004, dz: 0.0, de: 0.0, dt: 0.0068466696, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X82.585 Y82.585 E2.53457 
; Some(Annotation { label: ExtrusionMove, dx: -14.830002, dy: -14.830002, dz: 0.0, de: 2.53457, dt: 0.5963808, ex_width_mm: 4.56598 })
; None
M204 P1000
G1 Y83.613 F9000 
; Some(Annotation { label: TravelMove, dx: 0.0, dy: 1.0279999, dz: 0.0, de: 0.0, dt: 0.0068533327, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X96.387 Y97.415 E2.35888 
; Some(Annotation { label: ExtrusionMove, dx: 13.802002, dy: 13.802002, dz: 0.0, de: 2.35888, dt: 0.5550403, ex_width_mm: 4.565987 })
; None
M204 P1000
G1 X95.36 F9000 
; Some(Annotation { label: TravelMove, dx: -1.0270004, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0068466696, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X82.585 Y84.64 E2.18336 
; Some(Annotation { label: ExtrusionMove, dx: -12.775002, dy: -12.775002, dz: 0.0, de: 2.18336, dt: 0.51374006, ex_width_mm: 4.565994 })
; None
M204 P1000
G1 Y85.668 F9000 
; Some(Annotation { label: TravelMove, dx: 0.0, dy: 1.0279999, dz: 0.0, de: 0.0, dt: 0.0068533327, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X94.332 Y97.415 E2.00766 
; Some(Annotation { label: ExtrusionMove, dx: 11.747002, dy: 11.747002, dz: 0.0, de: 2.00766, dt: 0.47239953, ex_width_mm: 4.56598 })
; None
M204 P1000
G1 X93.304 F9000 
; Some(Annotation { label: TravelMove, dx: -1.0279999, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0068533327, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X82.585 Y86.696 E1.83197 
; Some(Annotation { label: ExtrusionMove, dx: -10.719002, dy: -10.719002, dz: 0.0, de: 1.83197, dt: 0.43105903, ex_width_mm: 4.56599 })
; None
M204 P1000
G1 Y87.723 F9000 
; Some(Annotation { label: TravelMove, dx: 0.0, dy: 1.0270004, dz: 0.0, de: 0.0, dt: 0.0068466696, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X92.277 Y97.415 E1.65644 
; Some(Annotation { label: ExtrusionMove, dx: 9.692001, dy: 9.692001, dz: 0.0, de: 1.65644, dt: 0.38975877, ex_width_mm: 4.565971 })
; None
M204 P1000
G1 X91.249 F9000 
; Some(Annotation { label: TravelMove, dx: -1.0279999, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0068533327, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X82.585 Y88.751 E1.48075 
; Some(Annotation { label: ExtrusionMove, dx: -8.664001, dy: -8.664001, dz: 0.0, de: 1.48075, dt: 0.3484183, ex_width_mm: 4.5659814 })
; None
M204 P1000
G1 Y89.779 F9000 
; Some(Annotation { label: TravelMove, dx: 0.0, dy: 1.0279999, dz: 0.0, de: 0.0, dt: 0.0068533327, ex_width_mm: 0.0 })
; None
M204 P800
M73 P99 R0
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X90.221 Y97.415 E1.30506 
; Some(Annotation { label: ExtrusionMove, dx: 7.6360016, dy: 7.6360016, dz: 0.0, de: 1.30506, dt: 0.30707783, ex_width_mm: 4.5659947 })
; None
M204 P1000
G1 X89.193 F9000 
; Some(Annotation { label: TravelMove, dx: -1.0279999, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0068533327, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X82.585 Y90.807 E1.12936 
; Some(Annotation { label: ExtrusionMove, dx: -6.6080017, dy: -6.6080017, dz: 0.0, de: 1.12936, dt: 0.26573735, ex_width_mm: 4.565971 })
; None
M204 P1000
G1 Y91.834 F9000 
; Some(Annotation { label: TravelMove, dx: 0.0, dy: 1.0270004, dz: 0.0, de: 0.0, dt: 0.0068466696, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X88.166 Y97.415 E0.95384 
; Some(Annotation { label: ExtrusionMove, dx: 5.5810013, dy: 5.5810013, dz: 0.0, de: 0.95384, dt: 0.22443706, ex_width_mm: 4.5659833 })
; None
M204 P1000
G1 X87.138 F9000 
; Some(Annotation { label: TravelMove, dx: -1.0279999, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0068533327, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X82.585 Y92.862 E0.77815 
; Some(Annotation { label: ExtrusionMove, dx: -4.5530014, dy: -4.5530014, dz: 0.0, de: 0.77815, dt: 0.18309657, ex_width_mm: 4.5660057 })
; None
M204 P1000
G1 Y93.89 F9000 
; Some(Annotation { label: TravelMove, dx: 0.0, dy: 1.0279999, dz: 0.0, de: 0.0, dt: 0.0068533327, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X86.11 Y97.415 E0.60245 
; Some(Annotation { label: ExtrusionMove, dx: 3.5250015, dy: 3.5250015, dz: 0.0, de: 0.60245, dt: 0.14175609, ex_width_mm: 4.565965 })
; None
M204 P1000
G1 X85.083 F9000 
; Some(Annotation { label: TravelMove, dx: -1.0270004, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0068466696, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X82.585 Y94.917 E0.42693 
; Some(Annotation { label: ExtrusionMove, dx: -2.498001, dy: -2.498001, dz: 0.0, de: 0.42693, dt: 0.10045581, ex_width_mm: 4.56599 })
; None
M204 P1000
G1 Y95.945 F9000 
; Some(Annotation { label: TravelMove, dx: 0.0, dy: 1.0279999, dz: 0.0, de: 0.0, dt: 0.0068533327, ex_width_mm: 0.0 })
; None
M204 P800
G1 F1492 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X84.055 Y97.415 E0.25124 
; Some(Annotation { label: ExtrusionMove, dx: 1.4700012, dy: 1.4700012, dz: 0.0, de: 0.25124, dt: 0.059115328, ex_width_mm: 4.5660634 })
; None
M204 P1000
G1 E-2.1 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -2.1, dt: 0.046666667, ex_width_mm: -inf })
; None
G1 F7200 
; Some(Annotation { label: FeedrateChangeOnly, dx: 0.0, dy: 0.0, dz: 0.0, de: 0.0, dt: 0.0, ex_width_mm: NaN })
; None
G1 X82.585 Y95.945 E-0.74061 
; Some(Annotation { label: Wipe, dx: -1.4700012, dy: -1.4700012, dz: 0.0, de: -0.74061, dt: 0.01225001, ex_width_mm: -13.459928 })
; None
G1 E-0.15939 F2700 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -0.15939, dt: 0.003542, ex_width_mm: -inf })
; None
G1 X90.8435 Z18.1 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 0.20000076, de: 0.0, dt: 0.016666729, ex_width_mm: 0.0 })
; None
M107
G1 X90.8435 E-1 F2100 
; Some(Annotation { label: Retraction, dx: 0.0, dy: 0.0, dz: 0.0, de: -1.0, dt: 0.028571429, ex_width_mm: -inf })
; None
G1 Z19.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 1.7999992, de: 0.0, dt: 0.14999995, ex_width_mm: 0.0 })
; None
G1 X178 Y178 F4200 
; Some(Annotation { label: TravelMove, dx: 95.415, dy: 82.055, dz: 0.0, de: 0.0, dt: 1.3630714, ex_width_mm: 0.0 })
; None
G1 Z47.9 F720 
; Some(Annotation { label: LiftZ, dx: 0.0, dy: 0.0, dz: 28.000002, de: 0.0, dt: 2.3333335, ex_width_mm: 0.0 })
; None
G4
M104 S0
M140 S0
M107
M221 S100
M900 K0
M84
M73 P100 R0
