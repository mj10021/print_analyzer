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
G29
M204 T2500
M104 S220
G92 E0
G1 X179 Y-2 F2400
; id:1 | label: FirstG1 | feature: None
G1 Z3 F720
; id:2 | label: PrePrintMove | feature: None
M109 S220
G1 X170 F1000
; id:3 | label: PrePrintMove | feature: None
G1 Z0.2 F720
; id:4 | label: PrePrintMove | feature: None
G1 X110 E8 F900
; id:5 | label: PrePrintMove | feature: Some(ShapeStart)
G1 X40 E10 F700
; id:6 | label: PrePrintMove | feature: Some(ShapeEnd)
G92 E0
M221 S95
G21
G90
M83
M900 K0.06
M107
G92 E0
M73 P1 R11
G1 E-3 F2700
; id:7 | label: PrePrintMove | feature: Some(Retraction)
M73 P2 R11
G1 Z0.2 F720
; id:8 | label: PrePrintMove | feature: None
G1 Z0.3
; id:9 | label: PrePrintMove | feature: None
G1 Z0.5
; id:10 | label: PrePrintMove | feature: None
G1 X78.662 Y77.959 F9000
; id:11 | label: TravelMove | feature: None
G1 Z0.3 F720
; id:12 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:13 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P800
G1 X81 Y77.164 E0.25738
; id:14 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X99 Y77.164 E1.87602
; id:15 | label: ExtrusionMove | feature: None
G1 X100.695 Y77.559 E0.18139
; id:16 | label: ExtrusionMove | feature: None
G1 X102.041 Y78.662 E0.18137
; id:17 | label: ExtrusionMove | feature: None
G1 X102.836 Y81 E0.25738
; id:18 | label: ExtrusionMove | feature: None
G1 X102.836 Y99 E1.87602
; id:19 | label: ExtrusionMove | feature: None
G1 X102.441 Y100.695 E0.18139
; id:20 | label: ExtrusionMove | feature: None
G1 X101.338 Y102.041 E0.18137
; id:21 | label: ExtrusionMove | feature: None
G1 X99 Y102.836 E0.25738
; id:22 | label: ExtrusionMove | feature: None
G1 X81 Y102.836 E1.87602
; id:23 | label: ExtrusionMove | feature: None
M73 P2 R10
G1 X79.305 Y102.441 E0.18139
; id:24 | label: ExtrusionMove | feature: None
G1 X77.959 Y101.338 E0.18137
; id:25 | label: ExtrusionMove | feature: None
G1 X77.164 Y99 E0.25738
; id:26 | label: ExtrusionMove | feature: None
G1 X77.164 Y81 E1.87602
; id:27 | label: ExtrusionMove | feature: None
G1 X77.559 Y79.305 E0.18139
; id:28 | label: ExtrusionMove | feature: None
M73 P3 R10
G1 X78.586 Y78.052 E0.16885
; id:29 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 E-2.1 F2700
; id:30 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:31 | label: FeedrateChangeOnly | feature: None
G1 X80.957 Y77.18 E-0.9
; id:32 | label: TravelMove | feature: Some(Retraction)
G1 Z0.5 F720
; id:33 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.514 Y97.514 F9000
; id:34 | label: TravelMove | feature: None
G1 Z0.3 F720
; id:35 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:36 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P800
G1 X82.486 Y97.514 E1.56626
; id:37 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.486 Y82.486 E1.56626
; id:38 | label: ExtrusionMove | feature: None
G1 X97.514 Y82.486 E1.56626
; id:39 | label: ExtrusionMove | feature: None
G1 X97.514 Y97.394 E1.55376
; id:40 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X98.35 Y98.35 F9000
; id:41 | label: TravelMove | feature: None
M204 P800
G1 F1200
; id:42 | label: FeedrateChangeOnly | feature: None
G1 X81.65 Y98.35 E1.74052
; id:43 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.65 Y81.65 E1.74052
; id:44 | label: ExtrusionMove | feature: None
G1 X98.35 Y81.65 E1.74052
; id:45 | label: ExtrusionMove | feature: None
G1 X98.35 Y98.23 E1.72802
; id:46 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
M73 P4 R10
G1 X97.577 Y98.143 F9000
; id:47 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:48 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:49 | label: FeedrateChangeOnly | feature: None
G1 X95.824 Y98.248 E-0.9
; id:50 | label: TravelMove | feature: Some(Retraction)
G1 Z0.5 F720
; id:51 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.18 Y84.542 F9000
; id:52 | label: TravelMove | feature: None
G1 Z0.3 F720
; id:53 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:54 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P800
G1 X95.834 Y83.196 E0.20207
; id:55 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X94.631 Y83.196 E0.1277
; id:56 | label: ExtrusionMove | feature: None
G1 X96.804 Y85.369 E0.32622
; id:57 | label: ExtrusionMove | feature: None
G1 X96.804 Y86.573 E0.12781
; id:58 | label: ExtrusionMove | feature: None
G1 X93.427 Y83.196 E0.50698
; id:59 | label: ExtrusionMove | feature: None
G1 X92.223 Y83.196 E0.12781
; id:60 | label: ExtrusionMove | feature: None
G1 X96.804 Y87.777 E0.68773
; id:61 | label: ExtrusionMove | feature: None
G1 X96.804 Y88.98 E0.1277
; id:62 | label: ExtrusionMove | feature: None
G1 X91.02 Y83.196 E0.86833
; id:63 | label: ExtrusionMove | feature: None
G1 X89.816 Y83.196 E0.12781
; id:64 | label: ExtrusionMove | feature: None
G1 X96.804 Y90.184 E1.04908
; id:65 | label: ExtrusionMove | feature: None
G1 X96.804 Y91.388 E0.12781
; id:66 | label: ExtrusionMove | feature: None
G1 X88.612 Y83.196 E1.22983
; id:67 | label: ExtrusionMove | feature: None
G1 X87.409 Y83.196 E0.1277
; id:68 | label: ExtrusionMove | feature: None
G1 X96.804 Y92.591 E1.41043
; id:69 | label: ExtrusionMove | feature: None
G1 X96.804 Y93.795 E0.12781
; id:70 | label: ExtrusionMove | feature: None
G1 X86.205 Y83.196 E1.59119
; id:71 | label: ExtrusionMove | feature: None
G1 X85.001 Y83.196 E0.12781
; id:72 | label: ExtrusionMove | feature: None
G1 X96.804 Y94.999 E1.77194
; id:73 | label: ExtrusionMove | feature: None
G1 X96.804 Y96.202 E0.1277
; id:74 | label: ExtrusionMove | feature: None
M73 P5 R10
G1 X83.798 Y83.196 E1.95254
; id:75 | label: ExtrusionMove | feature: None
G1 X83.196 Y83.196 E0.06391
; id:76 | label: ExtrusionMove | feature: None
G1 X83.196 Y83.798 E0.06391
; id:77 | label: ExtrusionMove | feature: None
G1 X96.202 Y96.804 E1.95254
; id:78 | label: ExtrusionMove | feature: None
G1 X94.999 Y96.804 E0.1277
; id:79 | label: ExtrusionMove | feature: None
G1 X83.196 Y85.001 E1.77194
; id:80 | label: ExtrusionMove | feature: None
G1 X83.196 Y86.205 E0.12781
; id:81 | label: ExtrusionMove | feature: None
G1 X93.795 Y96.804 E1.59119
; id:82 | label: ExtrusionMove | feature: None
G1 X92.591 Y96.804 E0.12781
; id:83 | label: ExtrusionMove | feature: None
G1 X83.196 Y87.409 E1.41043
; id:84 | label: ExtrusionMove | feature: None
G1 X83.196 Y88.612 E0.1277
; id:85 | label: ExtrusionMove | feature: None
G1 X91.388 Y96.804 E1.22983
; id:86 | label: ExtrusionMove | feature: None
G1 X90.184 Y96.804 E0.12781
; id:87 | label: ExtrusionMove | feature: None
G1 X83.196 Y89.816 E1.04908
; id:88 | label: ExtrusionMove | feature: None
G1 X83.196 Y91.02 E0.12781
; id:89 | label: ExtrusionMove | feature: None
G1 X88.98 Y96.804 E0.86833
; id:90 | label: ExtrusionMove | feature: None
G1 X87.777 Y96.804 E0.1277
; id:91 | label: ExtrusionMove | feature: None
G1 X83.196 Y92.223 E0.68773
; id:92 | label: ExtrusionMove | feature: None
G1 X83.196 Y93.427 E0.12781
; id:93 | label: ExtrusionMove | feature: None
G1 X86.573 Y96.804 E0.50698
; id:94 | label: ExtrusionMove | feature: None
M73 P6 R10
G1 X85.369 Y96.804 E0.12781
; id:95 | label: ExtrusionMove | feature: None
G1 X83.196 Y94.631 E0.32622
; id:96 | label: ExtrusionMove | feature: None
G1 X83.196 Y95.834 E0.1277
; id:97 | label: ExtrusionMove | feature: None
G1 X84.542 Y97.18 E0.20207
; id:98 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
M106 S84.15
G92 E0
G1 E-2.1 F2700
; id:99 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:100 | label: FeedrateChangeOnly | feature: None
G1 X83.196 Y95.834 E-0.67813
; id:101 | label: TravelMove | feature: Some(Retraction)
G1 X83.196 Y95.211 E-0.22187
; id:102 | label: TravelMove | feature: Some(Retraction)
G1 Z0.5 F720
; id:103 | label: LiftZ | feature: None
G1 Z0.7
; id:104 | label: LiftZ | feature: None
G1 Z0.9
; id:105 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X77.164 Y95.211 F9000
; id:106 | label: TravelMove | feature: None
G1 Z0.7 F720
; id:107 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:108 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F1642
; id:109 | label: FeedrateChangeOnly | feature: None
G1 X77.164 Y81 E1.9241
; id:110 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X77.559 Y79.305 E0.23564
; id:111 | label: ExtrusionMove | feature: None
G1 X78.662 Y77.959 E0.23562
; id:112 | label: ExtrusionMove | feature: None
G1 X81 Y77.164 E0.33435
; id:113 | label: ExtrusionMove | feature: None
G1 X99 Y77.164 E2.43711
; id:114 | label: ExtrusionMove | feature: None
G1 X100.695 Y77.559 E0.23564
; id:115 | label: ExtrusionMove | feature: None
G1 X102.041 Y78.662 E0.23562
; id:116 | label: ExtrusionMove | feature: None
G1 X102.836 Y81 E0.33435
; id:117 | label: ExtrusionMove | feature: None
G1 X102.836 Y99 E2.43711
; id:118 | label: ExtrusionMove | feature: None
G1 X102.441 Y100.695 E0.23564
; id:119 | label: ExtrusionMove | feature: None
G1 X101.338 Y102.041 E0.23562
; id:120 | label: ExtrusionMove | feature: None
G1 X99 Y102.836 E0.33435
; id:121 | label: ExtrusionMove | feature: None
G1 X81 Y102.836 E2.43711
; id:122 | label: ExtrusionMove | feature: None
G1 X79.305 Y102.441 E0.23564
; id:123 | label: ExtrusionMove | feature: None
G1 X77.959 Y101.338 E0.23562
; id:124 | label: ExtrusionMove | feature: None
G1 X77.164 Y99 E0.33435
; id:125 | label: ExtrusionMove | feature: None
G1 X77.164 Y95.331 E0.49677
; id:126 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 E-2.1 F2700
; id:127 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:128 | label: FeedrateChangeOnly | feature: None
G1 X77.164 Y92.805 E-0.9
; id:129 | label: TravelMove | feature: Some(Retraction)
G1 Z0.9 F720
; id:130 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:131 | label: TravelMove | feature: None
G1 Z0.7 F720
; id:132 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:133 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F1642
; id:134 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:135 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:136 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:137 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:138 | label: ExtrusionMove | feature: Some(ShapeEnd)
M73 P7 R10
G1 X98.55 Y98.55 F9000
; id:139 | label: TravelMove | feature: None
M204 P800
G1 F1500
; id:140 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:141 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:142 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:143 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:144 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:145 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:146 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:147 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:148 | label: TravelMove | feature: Some(Retraction)
G1 Z0.9 F720
; id:149 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X83.177 Y83.022 F9000
; id:150 | label: TravelMove | feature: None
G1 Z0.7 F720
; id:151 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:152 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F1642
; id:153 | label: FeedrateChangeOnly | feature: None
G1 X83.088 Y82.933 E0.02118
; id:154 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.966 Y82.966 E0.02126
; id:155 | label: ExtrusionMove | feature: None
G1 X82.933 Y83.088 E0.02126
; id:156 | label: ExtrusionMove | feature: None
G1 X83.022 Y83.177 E0.02118
; id:157 | label: ExtrusionMove | feature: None
G1 X83.144 Y83.144 E0.02126
; id:158 | label: ExtrusionMove | feature: None
G1 X82.956 Y84.445 E0.17798
; id:159 | label: ExtrusionMove | feature: None
G1 X84.445 Y82.956 E0.28511
; id:160 | label: ExtrusionMove | feature: None
G1 X85.596 Y82.956 E0.15584
; id:161 | label: ExtrusionMove | feature: None
G1 X82.956 Y85.596 E0.5055
; id:162 | label: ExtrusionMove | feature: None
G1 X82.956 Y86.748 E0.15598
; id:163 | label: ExtrusionMove | feature: None
G1 X86.748 Y82.956 E0.72608
; id:164 | label: ExtrusionMove | feature: None
G1 X87.899 Y82.956 E0.15584
; id:165 | label: ExtrusionMove | feature: None
G1 X82.956 Y87.899 E0.94647
; id:166 | label: ExtrusionMove | feature: None
G1 X82.956 Y89.05 E0.15584
; id:167 | label: ExtrusionMove | feature: None
G1 X89.05 Y82.956 E1.16687
; id:168 | label: ExtrusionMove | feature: None
G1 X90.202 Y82.956 E0.15598
; id:169 | label: ExtrusionMove | feature: None
G1 X82.956 Y90.202 E1.38745
; id:170 | label: ExtrusionMove | feature: None
G1 X82.956 Y91.353 E0.15584
; id:171 | label: ExtrusionMove | feature: None
G1 X91.353 Y82.956 E1.60784
; id:172 | label: ExtrusionMove | feature: None
G1 X92.505 Y82.956 E0.15598
; id:173 | label: ExtrusionMove | feature: None
G1 X82.956 Y92.505 E1.82842
; id:174 | label: ExtrusionMove | feature: None
G1 X82.956 Y93.656 E0.15584
; id:175 | label: ExtrusionMove | feature: None
M73 P8 R10
G1 X93.656 Y82.956 E2.04881
; id:176 | label: ExtrusionMove | feature: None
G1 X94.807 Y82.956 E0.15584
; id:177 | label: ExtrusionMove | feature: None
G1 X82.956 Y94.807 E2.2692
; id:178 | label: ExtrusionMove | feature: None
G1 X82.956 Y95.959 E0.15598
; id:179 | label: ExtrusionMove | feature: None
G1 X95.959 Y82.956 E2.48978
; id:180 | label: ExtrusionMove | feature: None
G1 X97.044 Y83.023 E0.14718
; id:181 | label: ExtrusionMove | feature: None
G1 X83.023 Y97.044 E2.68471
; id:182 | label: ExtrusionMove | feature: None
G1 X84.174 Y97.044 E0.15584
; id:183 | label: ExtrusionMove | feature: None
G1 X97.044 Y84.174 E2.46432
; id:184 | label: ExtrusionMove | feature: None
G1 X97.044 Y85.325 E0.15584
; id:185 | label: ExtrusionMove | feature: None
G1 X85.325 Y97.044 E2.24393
; id:186 | label: ExtrusionMove | feature: None
G1 X86.477 Y97.044 E0.15598
; id:187 | label: ExtrusionMove | feature: None
G1 X97.044 Y86.477 E2.02335
; id:188 | label: ExtrusionMove | feature: None
G1 X97.044 Y87.628 E0.15584
; id:189 | label: ExtrusionMove | feature: None
G1 X87.628 Y97.044 E1.80295
; id:190 | label: ExtrusionMove | feature: None
G1 X88.78 Y97.044 E0.15598
; id:191 | label: ExtrusionMove | feature: None
G1 X97.044 Y88.78 E1.58237
; id:192 | label: ExtrusionMove | feature: None
G1 X97.044 Y89.931 E0.15584
; id:193 | label: ExtrusionMove | feature: None
G1 X89.931 Y97.044 E1.36198
; id:194 | label: ExtrusionMove | feature: None
G1 X91.082 Y97.044 E0.15584
; id:195 | label: ExtrusionMove | feature: None
G1 X97.044 Y91.082 E1.14159
; id:196 | label: ExtrusionMove | feature: None
G1 X97.044 Y92.234 E0.15598
; id:197 | label: ExtrusionMove | feature: None
M73 P9 R10
G1 X92.234 Y97.044 E0.92101
; id:198 | label: ExtrusionMove | feature: None
G1 X93.385 Y97.044 E0.15584
; id:199 | label: ExtrusionMove | feature: None
G1 X97.044 Y93.385 E0.70062
; id:200 | label: ExtrusionMove | feature: None
G1 X97.044 Y94.536 E0.15584
; id:201 | label: ExtrusionMove | feature: None
G1 X94.536 Y97.044 E0.48023
; id:202 | label: ExtrusionMove | feature: None
G1 X95.688 Y97.044 E0.15598
; id:203 | label: ExtrusionMove | feature: None
G1 X97.044 Y95.688 E0.25964
; id:204 | label: ExtrusionMove | feature: None
G1 X97.097 Y96.954 E0.17156
; id:205 | label: ExtrusionMove | feature: None
G1 X97.014 Y96.871 E0.01823
; id:206 | label: ExtrusionMove | feature: None
G1 X96.901 Y96.901 E0.01816
; id:207 | label: ExtrusionMove | feature: None
G1 X96.871 Y97.014 E0.01816
; id:208 | label: ExtrusionMove | feature: None
G1 X96.954 Y97.097 E0.01823
; id:209 | label: ExtrusionMove | feature: None
G1 X97.066 Y97.066 E0.01805
; id:210 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
M106 S170.85
G92 E0
G1 E-2.1 F2700
; id:211 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:212 | label: FeedrateChangeOnly | feature: None
G1 X96.954 Y97.097 E-0.0414
; id:213 | label: TravelMove | feature: Some(Retraction)
G1 X96.871 Y97.014 E-0.04182
; id:214 | label: TravelMove | feature: Some(Retraction)
G1 X96.901 Y96.901 E-0.04165
; id:215 | label: TravelMove | feature: Some(Retraction)
G1 X97.014 Y96.871 E-0.04165
; id:216 | label: TravelMove | feature: Some(Retraction)
G1 X97.097 Y96.954 E-0.04182
; id:217 | label: TravelMove | feature: Some(Retraction)
G1 X97.044 Y95.688 E-0.45141
; id:218 | label: TravelMove | feature: Some(Retraction)
G1 X96.567 Y96.165 E-0.24025
; id:219 | label: TravelMove | feature: Some(Retraction)
G1 Z0.9 F720
; id:220 | label: LiftZ | feature: None
G1 Z1.1
; id:221 | label: LiftZ | feature: None
G1 Z1.3
; id:222 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:223 | label: TravelMove | feature: None
G1 Z1.1 F720
; id:224 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:225 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F1287
; id:226 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:227 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:228 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:229 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:230 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:231 | label: TravelMove | feature: None
M204 P800
G1 F1287
; id:232 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:233 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:234 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:235 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:236 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
M73 P10 R10
G1 X97.777 Y98.343 F9000
; id:237 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:238 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:239 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:240 | label: TravelMove | feature: Some(Retraction)
G1 Z1.3 F720
; id:241 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X83.022 Y96.823 F9000
; id:242 | label: TravelMove | feature: None
G1 Z1.1 F720
; id:243 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:244 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F1287
; id:245 | label: FeedrateChangeOnly | feature: None
G1 X82.933 Y96.912 E0.02118
; id:246 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.966 Y97.034 E0.02126
; id:247 | label: ExtrusionMove | feature: None
G1 X83.088 Y97.067 E0.02126
; id:248 | label: ExtrusionMove | feature: None
G1 X83.177 Y96.978 E0.02118
; id:249 | label: ExtrusionMove | feature: None
G1 X83.144 Y96.856 E0.02126
; id:250 | label: ExtrusionMove | feature: None
G1 X82.956 Y95.555 E0.17798
; id:251 | label: ExtrusionMove | feature: None
G1 X84.445 Y97.044 E0.28511
; id:252 | label: ExtrusionMove | feature: None
G1 X85.596 Y97.044 E0.15584
; id:253 | label: ExtrusionMove | feature: None
G1 X82.956 Y94.404 E0.5055
; id:254 | label: ExtrusionMove | feature: None
G1 X82.956 Y93.252 E0.15598
; id:255 | label: ExtrusionMove | feature: None
G1 X86.748 Y97.044 E0.72608
; id:256 | label: ExtrusionMove | feature: None
G1 X87.899 Y97.044 E0.15584
; id:257 | label: ExtrusionMove | feature: None
G1 X82.956 Y92.101 E0.94647
; id:258 | label: ExtrusionMove | feature: None
G1 X82.956 Y90.95 E0.15584
; id:259 | label: ExtrusionMove | feature: None
G1 X89.05 Y97.044 E1.16687
; id:260 | label: ExtrusionMove | feature: None
G1 X90.202 Y97.044 E0.15598
; id:261 | label: ExtrusionMove | feature: None
G1 X82.956 Y89.798 E1.38745
; id:262 | label: ExtrusionMove | feature: None
G1 X82.956 Y88.647 E0.15584
; id:263 | label: ExtrusionMove | feature: None
G1 X91.353 Y97.044 E1.60784
; id:264 | label: ExtrusionMove | feature: None
G1 X92.505 Y97.044 E0.15598
; id:265 | label: ExtrusionMove | feature: None
G1 X82.956 Y87.495 E1.82842
; id:266 | label: ExtrusionMove | feature: None
G1 X82.956 Y86.344 E0.15584
; id:267 | label: ExtrusionMove | feature: None
G1 X93.656 Y97.044 E2.04881
; id:268 | label: ExtrusionMove | feature: None
G1 X94.807 Y97.044 E0.15584
; id:269 | label: ExtrusionMove | feature: None
G1 X82.956 Y85.193 E2.2692
; id:270 | label: ExtrusionMove | feature: None
G1 X82.956 Y84.041 E0.15598
; id:271 | label: ExtrusionMove | feature: None
G1 X95.959 Y97.044 E2.48978
; id:272 | label: ExtrusionMove | feature: None
G1 X97.044 Y96.977 E0.14718
; id:273 | label: ExtrusionMove | feature: None
M73 P11 R10
G1 X83.023 Y82.956 E2.68471
; id:274 | label: ExtrusionMove | feature: None
G1 X84.174 Y82.956 E0.15584
; id:275 | label: ExtrusionMove | feature: None
G1 X97.044 Y95.826 E2.46432
; id:276 | label: ExtrusionMove | feature: None
G1 X97.044 Y94.675 E0.15584
; id:277 | label: ExtrusionMove | feature: None
G1 X85.325 Y82.956 E2.24393
; id:278 | label: ExtrusionMove | feature: None
G1 X86.477 Y82.956 E0.15598
; id:279 | label: ExtrusionMove | feature: None
G1 X97.044 Y93.523 E2.02335
; id:280 | label: ExtrusionMove | feature: None
G1 X97.044 Y92.372 E0.15584
; id:281 | label: ExtrusionMove | feature: None
G1 X87.628 Y82.956 E1.80295
; id:282 | label: ExtrusionMove | feature: None
G1 X88.78 Y82.956 E0.15598
; id:283 | label: ExtrusionMove | feature: None
M73 P11 R9
G1 X97.044 Y91.22 E1.58237
; id:284 | label: ExtrusionMove | feature: None
G1 X97.044 Y90.069 E0.15584
; id:285 | label: ExtrusionMove | feature: None
G1 X89.931 Y82.956 E1.36198
; id:286 | label: ExtrusionMove | feature: None
G1 X91.082 Y82.956 E0.15584
; id:287 | label: ExtrusionMove | feature: None
G1 X97.044 Y88.918 E1.14159
; id:288 | label: ExtrusionMove | feature: None
G1 X97.044 Y87.766 E0.15598
; id:289 | label: ExtrusionMove | feature: None
G1 X92.234 Y82.956 E0.92101
; id:290 | label: ExtrusionMove | feature: None
G1 X93.385 Y82.956 E0.15584
; id:291 | label: ExtrusionMove | feature: None
M73 P12 R9
G1 X97.044 Y86.615 E0.70062
; id:292 | label: ExtrusionMove | feature: None
G1 X97.044 Y85.464 E0.15584
; id:293 | label: ExtrusionMove | feature: None
G1 X94.536 Y82.956 E0.48023
; id:294 | label: ExtrusionMove | feature: None
G1 X95.688 Y82.956 E0.15598
; id:295 | label: ExtrusionMove | feature: None
G1 X97.044 Y84.312 E0.25964
; id:296 | label: ExtrusionMove | feature: None
G1 X97.066 Y82.934 E0.1866
; id:297 | label: ExtrusionMove | feature: None
G1 X97.097 Y83.046 E0.01805
; id:298 | label: ExtrusionMove | feature: None
G1 X97.014 Y83.129 E0.01823
; id:299 | label: ExtrusionMove | feature: None
G1 X96.901 Y83.099 E0.01816
; id:300 | label: ExtrusionMove | feature: None
G1 X96.871 Y82.986 E0.01816
; id:301 | label: ExtrusionMove | feature: None
G1 X96.954 Y82.903 E0.01823
; id:302 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
M106 S255
G92 E0
G1 E-2.1 F2700
; id:303 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:304 | label: FeedrateChangeOnly | feature: None
G1 X96.871 Y82.986 E-0.04182
; id:305 | label: TravelMove | feature: Some(Retraction)
G1 X96.901 Y83.099 E-0.04165
; id:306 | label: TravelMove | feature: Some(Retraction)
G1 X97.014 Y83.129 E-0.04165
; id:307 | label: TravelMove | feature: Some(Retraction)
G1 X97.097 Y83.046 E-0.04182
; id:308 | label: TravelMove | feature: Some(Retraction)
G1 X97.066 Y82.934 E-0.0414
; id:309 | label: TravelMove | feature: Some(Retraction)
G1 X97.044 Y84.312 E-0.49098
; id:310 | label: TravelMove | feature: Some(Retraction)
G1 X96.646 Y83.914 E-0.20068
; id:311 | label: TravelMove | feature: Some(Retraction)
G1 Z1.3 F720
; id:312 | label: LiftZ | feature: None
G1 Z1.5
; id:313 | label: LiftZ | feature: None
G1 Z1.7
; id:314 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:315 | label: TravelMove | feature: None
G1 Z1.5 F720
; id:316 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:317 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:318 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:319 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:320 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:321 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:322 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:323 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:324 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:325 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:326 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:327 | label: ExtrusionMove | feature: None
M73 P13 R9
G1 X98.55 Y98.43 E2.29901
; id:328 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:329 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:330 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:331 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:332 | label: TravelMove | feature: Some(Retraction)
G1 Z1.7 F720
; id:333 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.044 Y93.712 F9000
; id:334 | label: TravelMove | feature: None
G1 Z1.5 F720
; id:335 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:336 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:337 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y91.212 E0.33849
; id:338 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X96.886 Y91.31 E0.02517
; id:339 | label: ExtrusionMove | feature: None
G1 X96.314 Y91.747 E0.09746
; id:340 | label: ExtrusionMove | feature: None
G1 X95.859 Y92.184 E0.08542
; id:341 | label: ExtrusionMove | feature: None
G1 X95.498 Y92.621 E0.07675
; id:342 | label: ExtrusionMove | feature: None
G1 X94.969 Y93.494 E0.13821
; id:343 | label: ExtrusionMove | feature: None
G1 X94.613 Y94.368 E0.12778
; id:344 | label: ExtrusionMove | feature: None
G1 X94.39 Y95.241 E0.122
; id:345 | label: ExtrusionMove | feature: None
G1 X94.362 Y96.115 E0.1184
; id:346 | label: ExtrusionMove | feature: None
G1 X94.522 Y96.552 E0.06301
; id:347 | label: ExtrusionMove | feature: None
G1 X94.928 Y96.988 E0.08066
; id:348 | label: ExtrusionMove | feature: None
G1 X95.015 Y97.044 E0.01401
; id:349 | label: ExtrusionMove | feature: None
G1 X92.112 Y97.044 E0.39305
; id:350 | label: ExtrusionMove | feature: None
G1 X92.06 Y96.988 E0.01035
; id:351 | label: ExtrusionMove | feature: None
G1 X91.378 Y96.552 E0.1096
; id:352 | label: ExtrusionMove | feature: None
G1 X90.599 Y96.115 E0.12094
; id:353 | label: ExtrusionMove | feature: None
G1 X89.898 Y95.678 E0.11184
; id:354 | label: ExtrusionMove | feature: None
G1 X89.325 Y95.241 E0.09757
; id:355 | label: ExtrusionMove | feature: None
G1 X88.871 Y94.805 E0.08523
; id:356 | label: ExtrusionMove | feature: None
G1 X88.509 Y94.368 E0.07683
; id:357 | label: ExtrusionMove | feature: None
G1 X87.981 Y93.494 E0.13825
; id:358 | label: ExtrusionMove | feature: None
G1 X87.625 Y92.621 E0.12765
; id:359 | label: ExtrusionMove | feature: None
G1 X87.402 Y91.747 E0.12213
; id:360 | label: ExtrusionMove | feature: None
G1 X87.374 Y90.874 E0.11826
; id:361 | label: ExtrusionMove | feature: None
G1 X87.533 Y90.437 E0.06296
; id:362 | label: ExtrusionMove | feature: None
G1 X87.94 Y90 E0.08085
; id:363 | label: ExtrusionMove | feature: None
G1 X88.622 Y89.563 E0.10967
; id:364 | label: ExtrusionMove | feature: None
G1 X89.401 Y89.126 E0.12094
; id:365 | label: ExtrusionMove | feature: None
G1 X90.102 Y88.69 E0.11177
; id:366 | label: ExtrusionMove | feature: None
G1 X90.675 Y88.253 E0.09757
; id:367 | label: ExtrusionMove | feature: None
G1 X91.129 Y87.816 E0.08532
; id:368 | label: ExtrusionMove | feature: None
G1 X91.491 Y87.379 E0.07683
; id:369 | label: ExtrusionMove | feature: None
G1 X92.019 Y86.506 E0.13814
; id:370 | label: ExtrusionMove | feature: None
G1 X92.375 Y85.632 E0.12778
; id:371 | label: ExtrusionMove | feature: None
G1 X92.598 Y84.759 E0.122
; id:372 | label: ExtrusionMove | feature: None
G1 X92.626 Y83.885 E0.1184
; id:373 | label: ExtrusionMove | feature: None
G1 X92.467 Y83.448 E0.06296
; id:374 | label: ExtrusionMove | feature: None
G1 X92.06 Y83.012 E0.08076
; id:375 | label: ExtrusionMove | feature: None
G1 X91.974 Y82.956 E0.0139
; id:376 | label: ExtrusionMove | feature: None
G1 X94.877 Y82.956 E0.39305
; id:377 | label: ExtrusionMove | feature: None
G1 X94.928 Y83.012 E0.01026
; id:378 | label: ExtrusionMove | feature: None
G1 X95.61 Y83.448 E0.1096
; id:379 | label: ExtrusionMove | feature: None
G1 X96.389 Y83.885 E0.12094
; id:380 | label: ExtrusionMove | feature: None
G1 X97.044 Y84.293 E0.10448
; id:381 | label: ExtrusionMove | feature: None
G1 X97.044 Y86.793 E0.33849
; id:382 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 E-2.1 F2700
; id:383 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:384 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y84.293 E-0.89063
; id:385 | label: TravelMove | feature: Some(Retraction)
G1 X97.022 Y84.279 E-0.00937
; id:386 | label: TravelMove | feature: Some(Retraction)
G1 Z1.7 F720
; id:387 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X84.189 Y82.956 F9000
; id:388 | label: TravelMove | feature: None
G1 Z1.5 F720
; id:389 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:390 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
M73 P14 R9
G1 F900
; id:391 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y82.956 E0.16694
; id:392 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.956 Y84.224 E0.17168
; id:393 | label: ExtrusionMove | feature: None
G1 X83.114 Y84.322 E0.02517
; id:394 | label: ExtrusionMove | feature: None
G1 X83.686 Y84.759 E0.09746
; id:395 | label: ExtrusionMove | feature: None
G1 X84.141 Y85.195 E0.08532
; id:396 | label: ExtrusionMove | feature: None
G1 X84.502 Y85.632 E0.07675
; id:397 | label: ExtrusionMove | feature: None
G1 X85.031 Y86.506 E0.13832
; id:398 | label: ExtrusionMove | feature: None
G1 X85.387 Y87.379 E0.12765
; id:399 | label: ExtrusionMove | feature: None
G1 X85.61 Y88.253 E0.12213
; id:400 | label: ExtrusionMove | feature: None
G1 X85.638 Y89.126 E0.11826
; id:401 | label: ExtrusionMove | feature: None
G1 X85.478 Y89.563 E0.06301
; id:402 | label: ExtrusionMove | feature: None
G1 X85.072 Y90 E0.08076
; id:403 | label: ExtrusionMove | feature: None
G1 X84.39 Y90.437 E0.10967
; id:404 | label: ExtrusionMove | feature: None
G1 X83.611 Y90.874 E0.12094
; id:405 | label: ExtrusionMove | feature: None
G1 X82.956 Y91.281 E0.10441
; id:406 | label: ExtrusionMove | feature: None
G1 X82.956 Y93.781 E0.33849
; id:407 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:408 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:409 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y91.281 E-0.89063
; id:410 | label: TravelMove | feature: Some(Retraction)
G1 X82.978 Y91.267 E-0.00937
; id:411 | label: TravelMove | feature: Some(Retraction)
G1 Z1.7 F720
; id:412 | label: LiftZ | feature: None
G1 Z1.9
; id:413 | label: LiftZ | feature: None
G1 Z2.1
; id:414 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:415 | label: TravelMove | feature: None
G1 Z1.9 F720
; id:416 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:417 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:418 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:419 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:420 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:421 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:422 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:423 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:424 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:425 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:426 | label: ExtrusionMove | feature: None
M73 P15 R9
G1 X98.55 Y81.45 E2.31526
; id:427 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:428 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:429 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:430 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:431 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:432 | label: TravelMove | feature: Some(Retraction)
G1 Z2.1 F720
; id:433 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X82.956 Y93.973 F9000
; id:434 | label: TravelMove | feature: None
G1 Z1.9 F720
; id:435 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:436 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:437 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y91.473 E0.33849
; id:438 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X83.885 Y91.05 E0.13821
; id:439 | label: ExtrusionMove | feature: None
G1 X84.759 Y90.782 E0.12377
; id:440 | label: ExtrusionMove | feature: None
G1 X85.632 Y90.669 E0.11919
; id:441 | label: ExtrusionMove | feature: None
G1 X86.069 Y90.764 E0.06055
; id:442 | label: ExtrusionMove | feature: None
G1 X86.506 Y91.142 E0.07823
; id:443 | label: ExtrusionMove | feature: None
G1 X86.943 Y91.891 E0.11741
; id:444 | label: ExtrusionMove | feature: None
G1 X87.379 Y92.758 E0.1314
; id:445 | label: ExtrusionMove | feature: None
G1 X87.816 Y93.522 E0.11917
; id:446 | label: ExtrusionMove | feature: None
G1 X88.253 Y94.133 E0.10171
; id:447 | label: ExtrusionMove | feature: None
G1 X88.69 Y94.613 E0.08789
; id:448 | label: ExtrusionMove | feature: None
G1 X89.126 Y94.993 E0.07831
; id:449 | label: ExtrusionMove | feature: None
G1 X90 Y95.551 E0.1404
; id:450 | label: ExtrusionMove | feature: None
G1 X90.874 Y95.938 E0.12942
; id:451 | label: ExtrusionMove | feature: None
G1 X91.747 Y96.207 E0.12368
; id:452 | label: ExtrusionMove | feature: None
G1 X92.621 Y96.32 E0.11932
; id:453 | label: ExtrusionMove | feature: None
G1 X93.057 Y96.224 E0.06045
; id:454 | label: ExtrusionMove | feature: None
G1 X93.494 Y95.847 E0.07814
; id:455 | label: ExtrusionMove | feature: None
G1 X93.931 Y95.098 E0.11741
; id:456 | label: ExtrusionMove | feature: None
G1 X94.368 Y94.23 E0.13158
; id:457 | label: ExtrusionMove | feature: None
G1 X94.805 Y93.467 E0.11905
; id:458 | label: ExtrusionMove | feature: None
G1 X95.241 Y92.855 E0.10174
; id:459 | label: ExtrusionMove | feature: None
G1 X95.678 Y92.375 E0.08789
; id:460 | label: ExtrusionMove | feature: None
G1 X96.115 Y91.995 E0.07841
; id:461 | label: ExtrusionMove | feature: None
G1 X97.044 Y91.413 E0.14843
; id:462 | label: ExtrusionMove | feature: None
G1 X97.044 Y84.484 E0.93815
; id:463 | label: ExtrusionMove | feature: None
G1 X96.115 Y84.062 E0.13815
; id:464 | label: ExtrusionMove | feature: None
G1 X95.241 Y83.793 E0.12381
; id:465 | label: ExtrusionMove | feature: None
G1 X94.368 Y83.68 E0.11919
; id:466 | label: ExtrusionMove | feature: None
G1 X93.931 Y83.776 E0.06058
; id:467 | label: ExtrusionMove | feature: None
G1 X93.494 Y84.153 E0.07814
; id:468 | label: ExtrusionMove | feature: None
G1 X93.057 Y84.902 E0.11741
; id:469 | label: ExtrusionMove | feature: None
G1 X92.621 Y85.77 E0.13152
; id:470 | label: ExtrusionMove | feature: None
G1 X92.184 Y86.533 E0.11905
; id:471 | label: ExtrusionMove | feature: None
G1 X91.747 Y87.145 E0.10182
; id:472 | label: ExtrusionMove | feature: None
G1 X91.31 Y87.625 E0.08789
; id:473 | label: ExtrusionMove | feature: None
G1 X90.874 Y88.005 E0.07831
; id:474 | label: ExtrusionMove | feature: None
G1 X90 Y88.563 E0.1404
; id:475 | label: ExtrusionMove | feature: None
G1 X89.126 Y88.95 E0.12942
; id:476 | label: ExtrusionMove | feature: None
G1 X88.253 Y89.218 E0.12364
; id:477 | label: ExtrusionMove | feature: None
M73 P16 R9
G1 X87.379 Y89.331 E0.11932
; id:478 | label: ExtrusionMove | feature: None
G1 X86.943 Y89.236 E0.06042
; id:479 | label: ExtrusionMove | feature: None
G1 X86.506 Y88.858 E0.07823
; id:480 | label: ExtrusionMove | feature: None
G1 X86.069 Y88.109 E0.11741
; id:481 | label: ExtrusionMove | feature: None
G1 X85.632 Y87.242 E0.13146
; id:482 | label: ExtrusionMove | feature: None
G1 X85.195 Y86.478 E0.11917
; id:483 | label: ExtrusionMove | feature: None
G1 X84.759 Y85.867 E0.10163
; id:484 | label: ExtrusionMove | feature: None
G1 X84.322 Y85.387 E0.08789
; id:485 | label: ExtrusionMove | feature: None
G1 X83.885 Y85.007 E0.07841
; id:486 | label: ExtrusionMove | feature: None
G1 X82.956 Y84.424 E0.1485
; id:487 | label: ExtrusionMove | feature: None
G1 X82.956 Y82.956 E0.19876
; id:488 | label: ExtrusionMove | feature: None
G1 X83.988 Y82.956 E0.13973
; id:489 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:490 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:491 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y82.956 E-0.36765
; id:492 | label: TravelMove | feature: Some(Retraction)
G1 X82.956 Y84.424 E-0.52298
; id:493 | label: TravelMove | feature: Some(Retraction)
G1 X82.978 Y84.438 E-0.00937
; id:494 | label: TravelMove | feature: Some(Retraction)
G1 Z2.1 F720
; id:495 | label: LiftZ | feature: None
G1 Z2.3
; id:496 | label: LiftZ | feature: None
G1 Z2.5
; id:497 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:498 | label: TravelMove | feature: None
G1 Z2.3 F720
; id:499 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:500 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:501 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:502 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:503 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:504 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:505 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:506 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:507 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:508 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:509 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:510 | label: ExtrusionMove | feature: None
M73 P17 R9
G1 X98.55 Y98.43 E2.29901
; id:511 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:512 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:513 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:514 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:515 | label: TravelMove | feature: Some(Retraction)
G1 Z2.5 F720
; id:516 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X82.956 Y94.107 F9000
; id:517 | label: TravelMove | feature: None
G1 Z2.3 F720
; id:518 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:519 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:520 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y91.607 E0.33849
; id:521 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X83.885 Y91.32 E0.13165
; id:522 | label: ExtrusionMove | feature: None
G1 X84.759 Y91.226 E0.11902
; id:523 | label: ExtrusionMove | feature: None
G1 X85.632 Y91.392 E0.12032
; id:524 | label: ExtrusionMove | feature: None
G1 X86.069 Y91.651 E0.06878
; id:525 | label: ExtrusionMove | feature: None
G1 X86.506 Y92.076 E0.08253
; id:526 | label: ExtrusionMove | feature: None
G1 X87.379 Y93.256 E0.19874
; id:527 | label: ExtrusionMove | feature: None
G1 X88.253 Y94.29 E0.18331
; id:528 | label: ExtrusionMove | feature: None
G1 X89.126 Y94.975 E0.15024
; id:529 | label: ExtrusionMove | feature: None
G1 X90 Y95.409 E0.13212
; id:530 | label: ExtrusionMove | feature: None
G1 X90.874 Y95.668 E0.12342
; id:531 | label: ExtrusionMove | feature: None
G1 X91.747 Y95.762 E0.11888
; id:532 | label: ExtrusionMove | feature: None
G1 X92.621 Y95.597 E0.12043
; id:533 | label: ExtrusionMove | feature: None
G1 X93.057 Y95.338 E0.06866
; id:534 | label: ExtrusionMove | feature: None
G1 X93.494 Y94.912 E0.08263
; id:535 | label: ExtrusionMove | feature: None
G1 X94.368 Y93.733 E0.19871
; id:536 | label: ExtrusionMove | feature: None
G1 X95.241 Y92.699 E0.18322
; id:537 | label: ExtrusionMove | feature: None
G1 X96.115 Y92.013 E0.15043
; id:538 | label: ExtrusionMove | feature: None
G1 X97.044 Y91.563 E0.13976
; id:539 | label: ExtrusionMove | feature: None
G1 X97.044 Y84.618 E0.94032
; id:540 | label: ExtrusionMove | feature: None
G1 X96.115 Y84.332 E0.13161
; id:541 | label: ExtrusionMove | feature: None
G1 X95.241 Y84.238 E0.11902
; id:542 | label: ExtrusionMove | feature: None
G1 X94.368 Y84.403 E0.12029
; id:543 | label: ExtrusionMove | feature: None
G1 X93.931 Y84.662 E0.06878
; id:544 | label: ExtrusionMove | feature: None
G1 X93.494 Y85.088 E0.08263
; id:545 | label: ExtrusionMove | feature: None
G1 X92.621 Y86.267 E0.19863
; id:546 | label: ExtrusionMove | feature: None
G1 X91.747 Y87.301 E0.18331
; id:547 | label: ExtrusionMove | feature: None
G1 X90.874 Y87.987 E0.15033
; id:548 | label: ExtrusionMove | feature: None
G1 X90 Y88.421 E0.13212
; id:549 | label: ExtrusionMove | feature: None
G1 X89.126 Y88.68 E0.12342
; id:550 | label: ExtrusionMove | feature: None
G1 X88.253 Y88.774 E0.11888
; id:551 | label: ExtrusionMove | feature: None
G1 X87.379 Y88.608 E0.12045
; id:552 | label: ExtrusionMove | feature: None
G1 X86.943 Y88.349 E0.06866
; id:553 | label: ExtrusionMove | feature: None
G1 X86.506 Y87.924 E0.08253
; id:554 | label: ExtrusionMove | feature: None
G1 X85.632 Y86.744 E0.19882
; id:555 | label: ExtrusionMove | feature: None
G1 X84.759 Y85.71 E0.18322
; id:556 | label: ExtrusionMove | feature: None
G1 X83.885 Y85.025 E0.15035
; id:557 | label: ExtrusionMove | feature: None
G1 X82.956 Y84.574 E0.13982
; id:558 | label: ExtrusionMove | feature: None
G1 X82.956 Y82.956 E0.21907
; id:559 | label: ExtrusionMove | feature: None
M73 P18 R9
G1 X83.838 Y82.956 E0.11942
; id:560 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:561 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:562 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y82.956 E-0.31421
; id:563 | label: TravelMove | feature: Some(Retraction)
G1 X82.956 Y84.574 E-0.57641
; id:564 | label: TravelMove | feature: Some(Retraction)
G1 X82.98 Y84.585 E-0.00938
; id:565 | label: TravelMove | feature: Some(Retraction)
G1 Z2.5 F720
; id:566 | label: LiftZ | feature: None
G1 Z2.7
; id:567 | label: LiftZ | feature: None
G1 Z2.9
; id:568 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:569 | label: TravelMove | feature: None
G1 Z2.7 F720
; id:570 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:571 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:572 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:573 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:574 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:575 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:576 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:577 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:578 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:579 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:580 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:581 | label: ExtrusionMove | feature: None
M73 P19 R9
G1 X98.55 Y98.43 E2.29901
; id:582 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:583 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:584 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:585 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:586 | label: TravelMove | feature: Some(Retraction)
G1 Z2.9 F720
; id:587 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X82.956 Y94.195 F9000
; id:588 | label: TravelMove | feature: None
G1 Z2.7 F720
; id:589 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:590 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:591 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y91.695 E0.33849
; id:592 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X83.885 Y91.536 E0.12761
; id:593 | label: ExtrusionMove | feature: None
G1 X84.759 Y91.584 E0.11851
; id:594 | label: ExtrusionMove | feature: None
G1 X85.632 Y91.909 E0.12613
; id:595 | label: ExtrusionMove | feature: None
G1 X86.069 Y92.223 E0.07286
; id:596 | label: ExtrusionMove | feature: None
G1 X86.506 Y92.644 E0.08216
; id:597 | label: ExtrusionMove | feature: None
G1 X87.379 Y93.634 E0.17871
; id:598 | label: ExtrusionMove | feature: None
G1 X88.253 Y94.46 E0.16282
; id:599 | label: ExtrusionMove | feature: None
G1 X89.126 Y94.999 E0.13891
; id:600 | label: ExtrusionMove | feature: None
G1 X90 Y95.314 E0.12579
; id:601 | label: ExtrusionMove | feature: None
G1 X90.874 Y95.452 E0.1198
; id:602 | label: ExtrusionMove | feature: None
G1 X91.747 Y95.404 E0.11838
; id:603 | label: ExtrusionMove | feature: None
G1 X92.621 Y95.079 E0.12625
; id:604 | label: ExtrusionMove | feature: None
G1 X93.057 Y94.766 E0.07267
; id:605 | label: ExtrusionMove | feature: None
G1 X93.494 Y94.345 E0.08216
; id:606 | label: ExtrusionMove | feature: None
G1 X94.368 Y93.354 E0.1789
; id:607 | label: ExtrusionMove | feature: None
G1 X95.241 Y92.528 E0.16272
; id:608 | label: ExtrusionMove | feature: None
G1 X96.115 Y91.989 E0.13903
; id:609 | label: ExtrusionMove | feature: None
G1 X97.044 Y91.666 E0.13317
; id:610 | label: ExtrusionMove | feature: None
G1 X97.044 Y84.706 E0.94235
; id:611 | label: ExtrusionMove | feature: None
G1 X96.115 Y84.548 E0.12759
; id:612 | label: ExtrusionMove | feature: None
G1 X95.241 Y84.596 E0.11851
; id:613 | label: ExtrusionMove | feature: None
G1 X94.368 Y84.921 E0.12613
; id:614 | label: ExtrusionMove | feature: None
G1 X93.931 Y85.234 E0.07278
; id:615 | label: ExtrusionMove | feature: None
G1 X93.494 Y85.655 E0.08216
; id:616 | label: ExtrusionMove | feature: None
G1 X92.621 Y86.646 E0.17881
; id:617 | label: ExtrusionMove | feature: None
G1 X91.747 Y87.472 E0.16282
; id:618 | label: ExtrusionMove | feature: None
G1 X90.874 Y88.011 E0.13891
; id:619 | label: ExtrusionMove | feature: None
G1 X90 Y88.325 E0.12574
; id:620 | label: ExtrusionMove | feature: None
G1 X89.126 Y88.464 E0.11982
; id:621 | label: ExtrusionMove | feature: None
G1 X88.253 Y88.416 E0.11838
; id:622 | label: ExtrusionMove | feature: None
G1 X87.379 Y88.091 E0.12625
; id:623 | label: ExtrusionMove | feature: None
G1 X86.943 Y87.777 E0.07275
; id:624 | label: ExtrusionMove | feature: None
G1 X86.506 Y87.356 E0.08216
; id:625 | label: ExtrusionMove | feature: None
G1 X85.632 Y86.366 E0.1788
; id:626 | label: ExtrusionMove | feature: None
G1 X84.759 Y85.54 E0.16272
; id:627 | label: ExtrusionMove | feature: None
G1 X83.885 Y85.001 E0.13903
; id:628 | label: ExtrusionMove | feature: None
G1 X82.956 Y84.678 E0.13317
; id:629 | label: ExtrusionMove | feature: None
G1 X82.956 Y82.956 E0.23315
; id:630 | label: ExtrusionMove | feature: None
G1 X83.735 Y82.956 E0.10547
; id:631 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:632 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:633 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y82.956 E-0.27752
; id:634 | label: TravelMove | feature: Some(Retraction)
G1 X82.956 Y84.678 E-0.61346
; id:635 | label: TravelMove | feature: Some(Retraction)
G1 X82.98 Y84.686 E-0.00902
; id:636 | label: TravelMove | feature: Some(Retraction)
G1 Z2.9 F720
; id:637 | label: LiftZ | feature: None
G1 Z3.1
; id:638 | label: LiftZ | feature: None
G1 Z3.3
; id:639 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:640 | label: TravelMove | feature: None
G1 Z3.1 F720
; id:641 | label: LowerZ | feature: None
M73 P20 R9
G1 E3 F1200
; id:642 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:643 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:644 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:645 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:646 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:647 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:648 | label: TravelMove | feature: None
M204 P800
M73 P20 R8
G1 F900
; id:649 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:650 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:651 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:652 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:653 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
M73 P21 R8
G1 X97.777 Y98.343 F9000
; id:654 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:655 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:656 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:657 | label: TravelMove | feature: Some(Retraction)
G1 Z3.3 F720
; id:658 | label: LiftZ | feature: None
G1 X82.956 Y94.242 F9000
; id:659 | label: TravelMove | feature: None
G1 Z3.1 F720
; id:660 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:661 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:662 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y91.742 E0.33849
; id:663 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X83.012 Y91.73 E0.00775
; id:664 | label: ExtrusionMove | feature: None
G1 X83.885 Y91.706 E0.11824
; id:665 | label: ExtrusionMove | feature: None
G1 X84.759 Y91.879 E0.12063
; id:666 | label: ExtrusionMove | feature: None
G1 X85.632 Y92.325 E0.13273
; id:667 | label: ExtrusionMove | feature: None
G1 X86.506 Y93.094 E0.15762
; id:668 | label: ExtrusionMove | feature: None
G1 X87.379 Y93.975 E0.16793
; id:669 | label: ExtrusionMove | feature: None
G1 X88.253 Y94.651 E0.1496
; id:670 | label: ExtrusionMove | feature: None
G1 X89.126 Y95.06 E0.13053
; id:671 | label: ExtrusionMove | feature: None
G1 X90 Y95.259 E0.12136
; id:672 | label: ExtrusionMove | feature: None
G1 X90.874 Y95.282 E0.11838
; id:673 | label: ExtrusionMove | feature: None
G1 X91.747 Y95.109 E0.1205
; id:674 | label: ExtrusionMove | feature: None
G1 X92.621 Y94.663 E0.13285
; id:675 | label: ExtrusionMove | feature: None
G1 X93.494 Y93.895 E0.15743
; id:676 | label: ExtrusionMove | feature: None
G1 X94.368 Y93.014 E0.16802
; id:677 | label: ExtrusionMove | feature: None
G1 X95.241 Y92.338 E0.14949
; id:678 | label: ExtrusionMove | feature: None
G1 X96.115 Y91.929 E0.13065
; id:679 | label: ExtrusionMove | feature: None
G1 X97.044 Y91.728 E0.12869
; id:680 | label: ExtrusionMove | feature: None
G1 X97.044 Y84.754 E0.94425
; id:681 | label: ExtrusionMove | feature: None
G1 X96.115 Y84.718 E0.12588
; id:682 | label: ExtrusionMove | feature: None
G1 X95.241 Y84.891 E0.12063
; id:683 | label: ExtrusionMove | feature: None
G1 X94.368 Y85.337 E0.13273
; id:684 | label: ExtrusionMove | feature: None
G1 X93.494 Y86.105 E0.15753
; id:685 | label: ExtrusionMove | feature: None
G1 X92.621 Y86.986 E0.16793
; id:686 | label: ExtrusionMove | feature: None
G1 X91.747 Y87.662 E0.1496
; id:687 | label: ExtrusionMove | feature: None
G1 X90.874 Y88.071 E0.13053
; id:688 | label: ExtrusionMove | feature: None
G1 X90 Y88.27 E0.12136
; id:689 | label: ExtrusionMove | feature: None
G1 X89.126 Y88.294 E0.11838
; id:690 | label: ExtrusionMove | feature: None
G1 X88.253 Y88.121 E0.1205
; id:691 | label: ExtrusionMove | feature: None
G1 X87.379 Y87.675 E0.13285
; id:692 | label: ExtrusionMove | feature: None
G1 X86.506 Y86.906 E0.15752
; id:693 | label: ExtrusionMove | feature: None
G1 X85.632 Y86.025 E0.16802
; id:694 | label: ExtrusionMove | feature: None
G1 X84.759 Y85.349 E0.14949
; id:695 | label: ExtrusionMove | feature: None
G1 X83.885 Y84.94 E0.13065
; id:696 | label: ExtrusionMove | feature: None
G1 X82.956 Y84.74 E0.12866
; id:697 | label: ExtrusionMove | feature: None
G1 X82.956 Y82.956 E0.24155
; id:698 | label: ExtrusionMove | feature: None
G1 X83.673 Y82.956 E0.09708
; id:699 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:700 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:701 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y82.956 E-0.25543
; id:702 | label: TravelMove | feature: Some(Retraction)
G1 X82.956 Y84.74 E-0.63555
; id:703 | label: TravelMove | feature: Some(Retraction)
G1 X82.981 Y84.745 E-0.00902
; id:704 | label: TravelMove | feature: Some(Retraction)
G1 Z3.3 F720
; id:705 | label: LiftZ | feature: None
G1 Z3.5
; id:706 | label: LiftZ | feature: None
G1 Z3.7
; id:707 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:708 | label: TravelMove | feature: None
G1 Z3.5 F720
; id:709 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:710 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:711 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:712 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:713 | label: ExtrusionMove | feature: None
M73 P22 R8
G1 X97.736 Y82.264 E2.09483
; id:714 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:715 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:716 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:717 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:718 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:719 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:720 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:721 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
M73 P23 R8
G1 X97.777 Y98.343 F9000
; id:722 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:723 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:724 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:725 | label: TravelMove | feature: Some(Retraction)
G1 Z3.7 F720
; id:726 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.044 Y94.253 F9000
; id:727 | label: TravelMove | feature: None
G1 Z3.5 F720
; id:728 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:729 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:730 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y91.753 E0.33849
; id:731 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X96.115 Y91.833 E0.12625
; id:732 | label: ExtrusionMove | feature: None
G1 X95.241 Y92.122 E0.12464
; id:733 | label: ExtrusionMove | feature: None
G1 X94.368 Y92.676 E0.13999
; id:734 | label: ExtrusionMove | feature: None
G1 X92.621 Y94.302 E0.32314
; id:735 | label: ExtrusionMove | feature: None
G1 X91.747 Y94.86 E0.1404
; id:736 | label: ExtrusionMove | feature: None
G1 X90.874 Y95.152 E0.12464
; id:737 | label: ExtrusionMove | feature: None
G1 X90 Y95.241 E0.11895
; id:738 | label: ExtrusionMove | feature: None
G1 X89.126 Y95.155 E0.11891
; id:739 | label: ExtrusionMove | feature: None
G1 X88.253 Y94.867 E0.12447
; id:740 | label: ExtrusionMove | feature: None
G1 X87.379 Y94.312 E0.14018
; id:741 | label: ExtrusionMove | feature: None
G1 X85.632 Y92.686 E0.32314
; id:742 | label: ExtrusionMove | feature: None
G1 X84.759 Y92.128 E0.14028
; id:743 | label: ExtrusionMove | feature: None
G1 X83.885 Y91.837 E0.12472
; id:744 | label: ExtrusionMove | feature: None
G1 X82.956 Y91.753 E0.1263
; id:745 | label: ExtrusionMove | feature: None
G1 X82.956 Y84.764 E0.94628
; id:746 | label: ExtrusionMove | feature: None
G1 X83.885 Y84.845 E0.12626
; id:747 | label: ExtrusionMove | feature: None
G1 X84.759 Y85.133 E0.12459
; id:748 | label: ExtrusionMove | feature: None
G1 X85.632 Y85.688 E0.14006
; id:749 | label: ExtrusionMove | feature: None
G1 X87.379 Y87.314 E0.32314
; id:750 | label: ExtrusionMove | feature: None
G1 X88.253 Y87.872 E0.1404
; id:751 | label: ExtrusionMove | feature: None
G1 X89.126 Y88.163 E0.12459
; id:752 | label: ExtrusionMove | feature: None
G1 X90 Y88.253 E0.11896
; id:753 | label: ExtrusionMove | feature: None
G1 X90.874 Y88.167 E0.11891
; id:754 | label: ExtrusionMove | feature: None
G1 X91.747 Y87.878 E0.12451
; id:755 | label: ExtrusionMove | feature: None
G1 X92.621 Y87.324 E0.14011
; id:756 | label: ExtrusionMove | feature: None
G1 X94.368 Y85.698 E0.32314
; id:757 | label: ExtrusionMove | feature: None
G1 X95.241 Y85.14 E0.14028
; id:758 | label: ExtrusionMove | feature: None
G1 X96.115 Y84.848 E0.12477
; id:759 | label: ExtrusionMove | feature: None
G1 X97.044 Y84.764 E0.1263
; id:760 | label: ExtrusionMove | feature: None
G1 X97.044 Y82.956 E0.24479
; id:761 | label: ExtrusionMove | feature: None
G1 X96.352 Y82.956 E0.09369
; id:762 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:763 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:764 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y82.956 E-0.24652
; id:765 | label: TravelMove | feature: Some(Retraction)
G1 X97.044 Y84.764 E-0.6441
; id:766 | label: TravelMove | feature: Some(Retraction)
G1 X97.018 Y84.766 E-0.00938
; id:767 | label: TravelMove | feature: Some(Retraction)
G1 Z3.7 F720
; id:768 | label: LiftZ | feature: None
G1 Z3.9
; id:769 | label: LiftZ | feature: None
G1 Z4.1
; id:770 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:771 | label: TravelMove | feature: None
G1 Z3.9 F720
; id:772 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:773 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:774 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:775 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:776 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:777 | label: ExtrusionMove | feature: None
M73 P24 R8
G1 X97.736 Y97.616 E2.07859
; id:778 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:779 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:780 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:781 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:782 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:783 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:784 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:785 | label: TravelMove | feature: None
M73 P25 R8
G1 E-2.1 F2700
; id:786 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:787 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:788 | label: TravelMove | feature: Some(Retraction)
G1 Z4.1 F720
; id:789 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.044 Y94.241 F9000
; id:790 | label: TravelMove | feature: None
G1 Z3.9 F720
; id:791 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:792 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:793 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y91.741 E0.33849
; id:794 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X96.988 Y91.728 E0.00778
; id:795 | label: ExtrusionMove | feature: None
G1 X96.115 Y91.702 E0.11825
; id:796 | label: ExtrusionMove | feature: None
G1 X95.241 Y91.871 E0.12053
; id:797 | label: ExtrusionMove | feature: None
G1 X94.368 Y92.314 E0.13255
; id:798 | label: ExtrusionMove | feature: None
G1 X93.494 Y93.081 E0.15744
; id:799 | label: ExtrusionMove | feature: None
G1 X92.621 Y93.965 E0.16822
; id:800 | label: ExtrusionMove | feature: None
G1 X91.747 Y94.645 E0.14993
; id:801 | label: ExtrusionMove | feature: None
G1 X90.874 Y95.057 E0.1307
; id:802 | label: ExtrusionMove | feature: None
G1 X90 Y95.26 E0.12149
; id:803 | label: ExtrusionMove | feature: None
G1 X89.126 Y95.286 E0.11839
; id:804 | label: ExtrusionMove | feature: None
G1 X88.253 Y95.117 E0.12039
; id:805 | label: ExtrusionMove | feature: None
G1 X87.379 Y94.675 E0.13261
; id:806 | label: ExtrusionMove | feature: None
G1 X86.506 Y93.907 E0.15743
; id:807 | label: ExtrusionMove | feature: None
G1 X85.632 Y93.023 E0.16831
; id:808 | label: ExtrusionMove | feature: None
G1 X84.759 Y92.344 E0.14974
; id:809 | label: ExtrusionMove | feature: None
G1 X83.885 Y91.931 E0.13088
; id:810 | label: ExtrusionMove | feature: None
G1 X82.956 Y91.727 E0.12878
; id:811 | label: ExtrusionMove | feature: None
G1 X82.956 Y84.753 E0.94425
; id:812 | label: ExtrusionMove | feature: None
G1 X83.885 Y84.714 E0.12589
; id:813 | label: ExtrusionMove | feature: None
G1 X84.759 Y84.883 E0.12053
; id:814 | label: ExtrusionMove | feature: None
G1 X85.632 Y85.325 E0.13249
; id:815 | label: ExtrusionMove | feature: None
G1 X86.506 Y86.093 E0.15753
; id:816 | label: ExtrusionMove | feature: None
G1 X87.379 Y86.977 E0.16822
; id:817 | label: ExtrusionMove | feature: None
G1 X88.253 Y87.656 E0.14985
; id:818 | label: ExtrusionMove | feature: None
G1 X89.126 Y88.069 E0.13076
; id:819 | label: ExtrusionMove | feature: None
G1 X90 Y88.272 E0.12149
; id:820 | label: ExtrusionMove | feature: None
G1 X90.874 Y88.298 E0.11839
; id:821 | label: ExtrusionMove | feature: None
G1 X91.747 Y88.129 E0.12039
; id:822 | label: ExtrusionMove | feature: None
G1 X92.621 Y87.686 E0.13267
; id:823 | label: ExtrusionMove | feature: None
G1 X93.494 Y86.919 E0.15734
; id:824 | label: ExtrusionMove | feature: None
G1 X94.368 Y86.035 E0.16831
; id:825 | label: ExtrusionMove | feature: None
G1 X95.241 Y85.355 E0.14983
; id:826 | label: ExtrusionMove | feature: None
G1 X96.115 Y84.943 E0.13082
; id:827 | label: ExtrusionMove | feature: None
G1 X97.044 Y84.738 E0.12881
; id:828 | label: ExtrusionMove | feature: None
G1 X97.044 Y82.956 E0.24127
; id:829 | label: ExtrusionMove | feature: None
G1 X96.326 Y82.956 E0.09721
; id:830 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:831 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:832 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y82.956 E-0.25579
; id:833 | label: TravelMove | feature: Some(Retraction)
G1 X97.044 Y84.738 E-0.63484
; id:834 | label: TravelMove | feature: Some(Retraction)
G1 X97.018 Y84.744 E-0.00937
; id:835 | label: TravelMove | feature: Some(Retraction)
G1 Z4.1 F720
; id:836 | label: LiftZ | feature: None
G1 Z4.3
; id:837 | label: LiftZ | feature: None
G1 Z4.5
; id:838 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:839 | label: TravelMove | feature: None
G1 Z4.3 F720
; id:840 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:841 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:842 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:843 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:844 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:845 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:846 | label: ExtrusionMove | feature: Some(ShapeEnd)
M73 P26 R8
G1 X98.55 Y98.55 F9000
; id:847 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:848 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:849 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:850 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:851 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:852 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:853 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:854 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:855 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:856 | label: TravelMove | feature: Some(Retraction)
G1 Z4.5 F720
; id:857 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.044 Y94.193 F9000
; id:858 | label: TravelMove | feature: None
M73 P27 R8
G1 Z4.3 F720
; id:859 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:860 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:861 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y91.693 E0.33849
; id:862 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X96.115 Y91.531 E0.12768
; id:863 | label: ExtrusionMove | feature: None
G1 X95.241 Y91.575 E0.11849
; id:864 | label: ExtrusionMove | feature: None
G1 X94.368 Y91.896 E0.12594
; id:865 | label: ExtrusionMove | feature: None
G1 X93.931 Y92.208 E0.0727
; id:866 | label: ExtrusionMove | feature: None
G1 X93.494 Y92.63 E0.08225
; id:867 | label: ExtrusionMove | feature: None
G1 X92.621 Y93.624 E0.17912
; id:868 | label: ExtrusionMove | feature: None
G1 X91.747 Y94.455 E0.16329
; id:869 | label: ExtrusionMove | feature: None
G1 X90.874 Y94.998 E0.1392
; id:870 | label: ExtrusionMove | feature: None
G1 X90 Y95.316 E0.12592
; id:871 | label: ExtrusionMove | feature: None
G1 X89.126 Y95.458 E0.11989
; id:872 | label: ExtrusionMove | feature: None
G1 X88.253 Y95.414 E0.11835
; id:873 | label: ExtrusionMove | feature: None
G1 X87.379 Y95.092 E0.12611
; id:874 | label: ExtrusionMove | feature: None
G1 X86.943 Y94.78 E0.07259
; id:875 | label: ExtrusionMove | feature: None
G1 X86.506 Y94.359 E0.08216
; id:876 | label: ExtrusionMove | feature: None
G1 X85.632 Y93.364 E0.17931
; id:877 | label: ExtrusionMove | feature: None
G1 X84.759 Y92.533 E0.16319
; id:878 | label: ExtrusionMove | feature: None
G1 X83.885 Y91.99 E0.13931
; id:879 | label: ExtrusionMove | feature: None
G1 X82.956 Y91.664 E0.1333
; id:880 | label: ExtrusionMove | feature: None
G1 X82.956 Y84.704 E0.94235
; id:881 | label: ExtrusionMove | feature: None
G1 X83.885 Y84.542 E0.12768
; id:882 | label: ExtrusionMove | feature: None
G1 X84.759 Y84.586 E0.11849
; id:883 | label: ExtrusionMove | feature: None
G1 X85.632 Y84.908 E0.12598
; id:884 | label: ExtrusionMove | feature: None
G1 X86.069 Y85.22 E0.0727
; id:885 | label: ExtrusionMove | feature: None
G1 X86.506 Y85.641 E0.08216
; id:886 | label: ExtrusionMove | feature: None
G1 X87.379 Y86.636 E0.17922
; id:887 | label: ExtrusionMove | feature: None
G1 X88.253 Y87.467 E0.16329
; id:888 | label: ExtrusionMove | feature: None
G1 X89.126 Y88.01 E0.1392
; id:889 | label: ExtrusionMove | feature: None
G1 X90 Y88.327 E0.12588
; id:890 | label: ExtrusionMove | feature: None
G1 X90.874 Y88.469 E0.11989
; id:891 | label: ExtrusionMove | feature: None
G1 X91.747 Y88.425 E0.11835
; id:892 | label: ExtrusionMove | feature: None
G1 X92.621 Y88.104 E0.12606
; id:893 | label: ExtrusionMove | feature: None
G1 X93.057 Y87.792 E0.07259
; id:894 | label: ExtrusionMove | feature: None
G1 X93.494 Y87.37 E0.08225
; id:895 | label: ExtrusionMove | feature: None
G1 X94.368 Y86.376 E0.17921
; id:896 | label: ExtrusionMove | feature: None
G1 X95.241 Y85.545 E0.16319
; id:897 | label: ExtrusionMove | feature: None
G1 X96.115 Y85.002 E0.13931
; id:898 | label: ExtrusionMove | feature: None
G1 X97.044 Y84.675 E0.13335
; id:899 | label: ExtrusionMove | feature: None
G1 X97.044 Y82.956 E0.23274
; id:900 | label: ExtrusionMove | feature: None
G1 X96.263 Y82.956 E0.10574
; id:901 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:902 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:903 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y82.956 E-0.27823
; id:904 | label: TravelMove | feature: Some(Retraction)
G1 X97.044 Y84.675 E-0.61239
; id:905 | label: TravelMove | feature: Some(Retraction)
G1 X97.019 Y84.684 E-0.00938
; id:906 | label: TravelMove | feature: Some(Retraction)
G1 Z4.5 F720
; id:907 | label: LiftZ | feature: None
G1 Z4.7
; id:908 | label: LiftZ | feature: None
G1 Z4.9
; id:909 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:910 | label: TravelMove | feature: None
G1 Z4.7 F720
; id:911 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:912 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:913 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:914 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:915 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:916 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:917 | label: ExtrusionMove | feature: Some(ShapeEnd)
M73 P28 R8
G1 X98.55 Y98.55 F9000
; id:918 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:919 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:920 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:921 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:922 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:923 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:924 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:925 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:926 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:927 | label: TravelMove | feature: Some(Retraction)
G1 Z4.9 F720
; id:928 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.044 Y94.103 F9000
; id:929 | label: TravelMove | feature: None
G1 Z4.7 F720
; id:930 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:931 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:932 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y91.603 E0.33849
; id:933 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X96.115 Y91.313 E0.13177
; id:934 | label: ExtrusionMove | feature: None
G1 X95.241 Y91.215 E0.11908
; id:935 | label: ExtrusionMove | feature: None
G1 X94.368 Y91.374 E0.12014
; id:936 | label: ExtrusionMove | feature: None
G1 X93.931 Y91.631 E0.06864
; id:937 | label: ExtrusionMove | feature: None
G1 X93.494 Y92.057 E0.08263
; id:938 | label: ExtrusionMove | feature: None
G1 X92.621 Y93.243 E0.19939
; id:939 | label: ExtrusionMove | feature: None
G1 X91.747 Y94.285 E0.18414
; id:940 | label: ExtrusionMove | feature: None
M73 P29 R8
G1 X90.874 Y94.975 E0.15066
; id:941 | label: ExtrusionMove | feature: None
G1 X90 Y95.413 E0.13236
; id:942 | label: ExtrusionMove | feature: None
G1 X89.126 Y95.675 E0.12354
; id:943 | label: ExtrusionMove | feature: None
G1 X88.253 Y95.774 E0.11896
; id:944 | label: ExtrusionMove | feature: None
G1 X87.379 Y95.614 E0.1203
; id:945 | label: ExtrusionMove | feature: None
G1 X86.943 Y95.358 E0.06846
; id:946 | label: ExtrusionMove | feature: None
G1 X86.506 Y94.932 E0.08263
; id:947 | label: ExtrusionMove | feature: None
G1 X85.632 Y93.745 E0.19958
; id:948 | label: ExtrusionMove | feature: None
G1 X84.759 Y92.704 E0.18395
; id:949 | label: ExtrusionMove | feature: None
G1 X83.885 Y92.013 E0.15085
; id:950 | label: ExtrusionMove | feature: None
G1 X82.956 Y91.559 E0.14
; id:951 | label: ExtrusionMove | feature: None
G1 X82.956 Y84.615 E0.94018
; id:952 | label: ExtrusionMove | feature: None
G1 X83.885 Y84.325 E0.13177
; id:953 | label: ExtrusionMove | feature: None
G1 X84.759 Y84.226 E0.11909
; id:954 | label: ExtrusionMove | feature: None
G1 X85.632 Y84.386 E0.12017
; id:955 | label: ExtrusionMove | feature: None
G1 X86.069 Y84.642 E0.06857
; id:956 | label: ExtrusionMove | feature: None
G1 X86.506 Y85.068 E0.08263
; id:957 | label: ExtrusionMove | feature: None
G1 X87.379 Y86.255 E0.1995
; id:958 | label: ExtrusionMove | feature: None
G1 X88.253 Y87.296 E0.18404
; id:959 | label: ExtrusionMove | feature: None
G1 X89.126 Y87.987 E0.15075
; id:960 | label: ExtrusionMove | feature: None
G1 X90 Y88.424 E0.1323
; id:961 | label: ExtrusionMove | feature: None
G1 X90.874 Y88.687 E0.12358
; id:962 | label: ExtrusionMove | feature: None
G1 X91.747 Y88.785 E0.11894
; id:963 | label: ExtrusionMove | feature: None
G1 X92.621 Y88.626 E0.12028
; id:964 | label: ExtrusionMove | feature: None
G1 X93.057 Y88.369 E0.06852
; id:965 | label: ExtrusionMove | feature: None
G1 X93.494 Y87.943 E0.08263
; id:966 | label: ExtrusionMove | feature: None
G1 X94.368 Y86.757 E0.19947
; id:967 | label: ExtrusionMove | feature: None
G1 X95.241 Y85.715 E0.18405
; id:968 | label: ExtrusionMove | feature: None
M73 P29 R7
G1 X96.115 Y85.025 E0.15077
; id:969 | label: ExtrusionMove | feature: None
G1 X97.044 Y84.571 E0.14
; id:970 | label: ExtrusionMove | feature: None
G1 X97.044 Y82.956 E0.21866
; id:971 | label: ExtrusionMove | feature: None
G1 X96.158 Y82.956 E0.11996
; id:972 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:973 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:974 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y82.956 E-0.31564
; id:975 | label: TravelMove | feature: Some(Retraction)
G1 X97.044 Y84.571 E-0.57534
; id:976 | label: TravelMove | feature: Some(Retraction)
G1 X97.021 Y84.582 E-0.00902
; id:977 | label: TravelMove | feature: Some(Retraction)
G1 Z4.9 F720
; id:978 | label: LiftZ | feature: None
G1 Z5.1
; id:979 | label: LiftZ | feature: None
G1 Z5.3
; id:980 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:981 | label: TravelMove | feature: None
G1 Z5.1 F720
; id:982 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:983 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:984 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:985 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:986 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:987 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:988 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:989 | label: TravelMove | feature: None
M204 P800
M73 P30 R7
G1 F900
; id:990 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:991 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:992 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:993 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:994 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:995 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:996 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:997 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:998 | label: TravelMove | feature: Some(Retraction)
G1 Z5.3 F720
; id:999 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.044 Y93.968 F9000
; id:1000 | label: TravelMove | feature: None
G1 Z5.1 F720
; id:1001 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1002 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:1003 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y91.468 E0.33849
; id:1004 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X96.115 Y91.041 E0.13843
; id:1005 | label: ExtrusionMove | feature: None
G1 X95.241 Y90.767 E0.12401
; id:1006 | label: ExtrusionMove | feature: None
G1 X94.368 Y90.642 E0.11941
; id:1007 | label: ExtrusionMove | feature: None
G1 X93.931 Y90.728 E0.0603
; id:1008 | label: ExtrusionMove | feature: None
G1 X93.494 Y91.099 E0.07761
; id:1009 | label: ExtrusionMove | feature: None
G1 X93.057 Y91.859 E0.1187
; id:1010 | label: ExtrusionMove | feature: None
G1 X92.621 Y92.74 E0.13309
; id:1011 | label: ExtrusionMove | feature: None
G1 X92.184 Y93.512 E0.12011
; id:1012 | label: ExtrusionMove | feature: None
G1 X91.747 Y94.129 E0.10237
; id:1013 | label: ExtrusionMove | feature: None
G1 X91.31 Y94.612 E0.08819
; id:1014 | label: ExtrusionMove | feature: None
G1 X90.874 Y94.995 E0.07857
; id:1015 | label: ExtrusionMove | feature: None
G1 X90 Y95.556 E0.14062
; id:1016 | label: ExtrusionMove | feature: None
G1 X89.126 Y95.947 E0.12964
; id:1017 | label: ExtrusionMove | feature: None
G1 X88.253 Y96.221 E0.12389
; id:1018 | label: ExtrusionMove | feature: None
G1 X87.379 Y96.346 E0.11954
; id:1019 | label: ExtrusionMove | feature: None
G1 X86.943 Y96.261 E0.06014
; id:1020 | label: ExtrusionMove | feature: None
G1 X86.506 Y95.889 E0.0777
; id:1021 | label: ExtrusionMove | feature: None
G1 X86.069 Y95.129 E0.1187
; id:1022 | label: ExtrusionMove | feature: None
G1 X85.632 Y94.248 E0.13315
; id:1023 | label: ExtrusionMove | feature: None
G1 X85.195 Y93.476 E0.12011
; id:1024 | label: ExtrusionMove | feature: None
M73 P31 R7
G1 X84.759 Y92.859 E0.10229
; id:1025 | label: ExtrusionMove | feature: None
G1 X84.322 Y92.376 E0.08819
; id:1026 | label: ExtrusionMove | feature: None
G1 X83.885 Y91.994 E0.07859
; id:1027 | label: ExtrusionMove | feature: None
G1 X82.956 Y91.407 E0.14879
; id:1028 | label: ExtrusionMove | feature: None
G1 X82.956 Y84.479 E0.93802
; id:1029 | label: ExtrusionMove | feature: None
G1 X83.885 Y84.053 E0.13838
; id:1030 | label: ExtrusionMove | feature: None
G1 X84.759 Y83.779 E0.12401
; id:1031 | label: ExtrusionMove | feature: None
G1 X85.632 Y83.654 E0.11941
; id:1032 | label: ExtrusionMove | feature: None
G1 X86.069 Y83.739 E0.06028
; id:1033 | label: ExtrusionMove | feature: None
G1 X86.506 Y84.111 E0.0777
; id:1034 | label: ExtrusionMove | feature: None
G1 X86.943 Y84.871 E0.1187
; id:1035 | label: ExtrusionMove | feature: None
G1 X87.379 Y85.752 E0.13309
; id:1036 | label: ExtrusionMove | feature: None
G1 X87.816 Y86.524 E0.12011
; id:1037 | label: ExtrusionMove | feature: None
G1 X88.253 Y87.141 E0.10237
; id:1038 | label: ExtrusionMove | feature: None
G1 X88.69 Y87.624 E0.08819
; id:1039 | label: ExtrusionMove | feature: None
G1 X89.126 Y88.006 E0.07848
; id:1040 | label: ExtrusionMove | feature: None
G1 X90 Y88.568 E0.14069
; id:1041 | label: ExtrusionMove | feature: None
G1 X90.874 Y88.959 E0.12964
; id:1042 | label: ExtrusionMove | feature: None
G1 X91.747 Y89.233 E0.12389
; id:1043 | label: ExtrusionMove | feature: None
G1 X92.621 Y89.358 E0.11954
; id:1044 | label: ExtrusionMove | feature: None
G1 X93.057 Y89.272 E0.06017
; id:1045 | label: ExtrusionMove | feature: None
G1 X93.494 Y88.901 E0.07761
; id:1046 | label: ExtrusionMove | feature: None
G1 X93.931 Y88.141 E0.1187
; id:1047 | label: ExtrusionMove | feature: None
G1 X94.368 Y87.26 E0.13315
; id:1048 | label: ExtrusionMove | feature: None
G1 X94.805 Y86.488 E0.12011
; id:1049 | label: ExtrusionMove | feature: None
G1 X95.241 Y85.871 E0.10229
; id:1050 | label: ExtrusionMove | feature: None
G1 X95.678 Y85.388 E0.08819
; id:1051 | label: ExtrusionMove | feature: None
G1 X96.115 Y85.005 E0.07868
; id:1052 | label: ExtrusionMove | feature: None
G1 X97.044 Y84.419 E0.14872
; id:1053 | label: ExtrusionMove | feature: None
G1 X97.044 Y82.956 E0.19808
; id:1054 | label: ExtrusionMove | feature: None
G1 X96.007 Y82.956 E0.1404
; id:1055 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:1056 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1057 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y82.956 E-0.36943
; id:1058 | label: TravelMove | feature: Some(Retraction)
G1 X97.044 Y84.419 E-0.52119
; id:1059 | label: TravelMove | feature: Some(Retraction)
G1 X97.022 Y84.433 E-0.00938
; id:1060 | label: TravelMove | feature: Some(Retraction)
G1 Z5.3 F720
; id:1061 | label: LiftZ | feature: None
G1 Z5.5
; id:1062 | label: LiftZ | feature: None
G1 Z5.7
; id:1063 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:1064 | label: TravelMove | feature: None
G1 Z5.5 F720
; id:1065 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1066 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:1067 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:1068 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:1069 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:1070 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:1071 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:1072 | label: TravelMove | feature: None
M204 P800
M73 P32 R7
G1 F900
; id:1073 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:1074 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:1075 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:1076 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:1077 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:1078 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:1079 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1080 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:1081 | label: TravelMove | feature: Some(Retraction)
G1 Z5.7 F720
; id:1082 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.044 Y93.775 F9000
; id:1083 | label: TravelMove | feature: None
G1 Z5.5 F720
; id:1084 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1085 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:1086 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y91.275 E0.33849
; id:1087 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X96.405 Y90.874 E0.10214
; id:1088 | label: ExtrusionMove | feature: None
G1 X95.635 Y90.437 E0.11987
; id:1089 | label: ExtrusionMove | feature: None
G1 X94.959 Y90 E0.10899
; id:1090 | label: ExtrusionMove | feature: None
G1 X94.551 Y89.563 E0.08095
; id:1091 | label: ExtrusionMove | feature: None
G1 X94.385 Y89.126 E0.06329
; id:1092 | label: ExtrusionMove | feature: None
G1 X94.404 Y88.253 E0.11823
; id:1093 | label: ExtrusionMove | feature: None
G1 X94.622 Y87.379 E0.12196
; id:1094 | label: ExtrusionMove | feature: None
G1 X94.974 Y86.506 E0.12745
; id:1095 | label: ExtrusionMove | feature: None
G1 X95.499 Y85.632 E0.13804
; id:1096 | label: ExtrusionMove | feature: None
G1 X95.858 Y85.195 E0.07657
; id:1097 | label: ExtrusionMove | feature: None
G1 X96.309 Y84.759 E0.08493
; id:1098 | label: ExtrusionMove | feature: None
G1 X96.877 Y84.322 E0.09703
; id:1099 | label: ExtrusionMove | feature: None
G1 X97.044 Y84.217 E0.02671
; id:1100 | label: ExtrusionMove | feature: None
G1 X97.044 Y82.956 E0.17073
; id:1101 | label: ExtrusionMove | feature: None
G1 X95.805 Y82.956 E0.16775
; id:1102 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 E-2.1 F2700
; id:1103 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1104 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y82.956 E-0.44139
; id:1105 | label: TravelMove | feature: Some(Retraction)
G1 X97.044 Y84.217 E-0.44923
; id:1106 | label: TravelMove | feature: Some(Retraction)
G1 X97.022 Y84.231 E-0.00938
; id:1107 | label: TravelMove | feature: Some(Retraction)
G1 Z5.7 F720
; id:1108 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X82.956 Y86.787 F9000
; id:1109 | label: TravelMove | feature: None
G1 Z5.5 F720
; id:1110 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1111 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:1112 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y84.287 E0.33849
; id:1113 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X83.595 Y83.885 E0.10221
; id:1114 | label: ExtrusionMove | feature: None
M73 P33 R7
G1 X84.365 Y83.448 E0.11987
; id:1115 | label: ExtrusionMove | feature: None
G1 X85.041 Y83.012 E0.10891
; id:1116 | label: ExtrusionMove | feature: None
G1 X85.092 Y82.956 E0.01026
; id:1117 | label: ExtrusionMove | feature: None
G1 X88.057 Y82.956 E0.40145
; id:1118 | label: ExtrusionMove | feature: None
G1 X87.971 Y83.012 E0.0139
; id:1119 | label: ExtrusionMove | feature: None
G1 X87.562 Y83.448 E0.08094
; id:1120 | label: ExtrusionMove | feature: None
G1 X87.397 Y83.885 E0.06324
; id:1121 | label: ExtrusionMove | feature: None
G1 X87.415 Y84.759 E0.11836
; id:1122 | label: ExtrusionMove | feature: None
G1 X87.633 Y85.632 E0.12183
; id:1123 | label: ExtrusionMove | feature: None
G1 X87.985 Y86.506 E0.12757
; id:1124 | label: ExtrusionMove | feature: None
G1 X88.51 Y87.379 E0.13793
; id:1125 | label: ExtrusionMove | feature: None
G1 X88.869 Y87.816 E0.07657
; id:1126 | label: ExtrusionMove | feature: None
G1 X89.321 Y88.253 E0.08512
; id:1127 | label: ExtrusionMove | feature: None
G1 X89.889 Y88.69 E0.09703
; id:1128 | label: ExtrusionMove | feature: None
G1 X90.584 Y89.126 E0.11108
; id:1129 | label: ExtrusionMove | feature: None
G1 X91.353 Y89.563 E0.11976
; id:1130 | label: ExtrusionMove | feature: None
G1 X92.029 Y90 E0.10899
; id:1131 | label: ExtrusionMove | feature: None
G1 X92.438 Y90.437 E0.08104
; id:1132 | label: ExtrusionMove | feature: None
G1 X92.603 Y90.874 E0.06324
; id:1133 | label: ExtrusionMove | feature: None
G1 X92.585 Y91.747 E0.11823
; id:1134 | label: ExtrusionMove | feature: None
G1 X92.367 Y92.621 E0.12196
; id:1135 | label: ExtrusionMove | feature: None
G1 X92.015 Y93.494 E0.12745
; id:1136 | label: ExtrusionMove | feature: None
G1 X91.49 Y94.368 E0.13804
; id:1137 | label: ExtrusionMove | feature: None
G1 X91.131 Y94.805 E0.07657
; id:1138 | label: ExtrusionMove | feature: None
G1 X90.679 Y95.241 E0.08503
; id:1139 | label: ExtrusionMove | feature: None
G1 X90.111 Y95.678 E0.09703
; id:1140 | label: ExtrusionMove | feature: None
G1 X89.416 Y96.115 E0.11116
; id:1141 | label: ExtrusionMove | feature: None
G1 X88.647 Y96.552 E0.11976
; id:1142 | label: ExtrusionMove | feature: None
G1 X87.971 Y96.988 E0.10891
; id:1143 | label: ExtrusionMove | feature: None
G1 X87.919 Y97.044 E0.01035
; id:1144 | label: ExtrusionMove | feature: None
G1 X84.955 Y97.044 E0.40131
; id:1145 | label: ExtrusionMove | feature: None
G1 X85.041 Y96.988 E0.0139
; id:1146 | label: ExtrusionMove | feature: None
G1 X85.449 Y96.552 E0.08085
; id:1147 | label: ExtrusionMove | feature: None
G1 X85.615 Y96.115 E0.06329
; id:1148 | label: ExtrusionMove | feature: None
G1 X85.596 Y95.241 E0.11836
; id:1149 | label: ExtrusionMove | feature: None
G1 X85.378 Y94.368 E0.12183
; id:1150 | label: ExtrusionMove | feature: None
G1 X85.026 Y93.494 E0.12757
; id:1151 | label: ExtrusionMove | feature: None
G1 X84.501 Y92.621 E0.13793
; id:1152 | label: ExtrusionMove | feature: None
G1 X84.142 Y92.184 E0.07657
; id:1153 | label: ExtrusionMove | feature: None
G1 X83.691 Y91.747 E0.08503
; id:1154 | label: ExtrusionMove | feature: None
G1 X83.123 Y91.31 E0.09703
; id:1155 | label: ExtrusionMove | feature: None
G1 X82.956 Y91.206 E0.02664
; id:1156 | label: ExtrusionMove | feature: None
G1 X82.956 Y93.706 E0.33849
; id:1157 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:1158 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1159 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y91.206 E-0.89063
; id:1160 | label: TravelMove | feature: Some(Retraction)
G1 X82.978 Y91.22 E-0.00937
; id:1161 | label: TravelMove | feature: Some(Retraction)
G1 Z5.7 F720
; id:1162 | label: LiftZ | feature: None
G1 Z5.9
; id:1163 | label: LiftZ | feature: None
G1 Z6.1
; id:1164 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:1165 | label: TravelMove | feature: None
G1 Z5.9 F720
; id:1166 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1167 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:1168 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:1169 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:1170 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:1171 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:1172 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:1173 | label: TravelMove | feature: None
M204 P800
M73 P34 R7
G1 F900
; id:1174 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:1175 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:1176 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:1177 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:1178 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:1179 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:1180 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1181 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:1182 | label: TravelMove | feature: Some(Retraction)
G1 Z6.1 F720
; id:1183 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.044 Y93.542 F9000
; id:1184 | label: TravelMove | feature: None
G1 Z5.9 F720
; id:1185 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1186 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:1187 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y91.042 E0.33849
; id:1188 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X96.857 Y90.874 E0.03404
; id:1189 | label: ExtrusionMove | feature: None
G1 X95.739 Y90 E0.19214
; id:1190 | label: ExtrusionMove | feature: None
G1 X95.314 Y89.563 E0.08253
; id:1191 | label: ExtrusionMove | feature: None
G1 X95.037 Y89.126 E0.07005
; id:1192 | label: ExtrusionMove | feature: None
G1 X94.823 Y88.253 E0.1217
; id:1193 | label: ExtrusionMove | feature: None
G1 X94.876 Y87.379 E0.11855
; id:1194 | label: ExtrusionMove | feature: None
G1 X95.103 Y86.506 E0.12213
; id:1195 | label: ExtrusionMove | feature: None
G1 X95.505 Y85.632 E0.13025
; id:1196 | label: ExtrusionMove | feature: None
G1 X96.149 Y84.759 E0.14688
; id:1197 | label: ExtrusionMove | feature: None
G1 X97.044 Y83.954 E0.16298
; id:1198 | label: ExtrusionMove | feature: None
G1 X97.044 Y82.956 E0.13512
; id:1199 | label: ExtrusionMove | feature: None
G1 X95.541 Y82.956 E0.2035
; id:1200 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 E-2.1 F2700
; id:1201 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1202 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y82.956 E-0.53544
; id:1203 | label: TravelMove | feature: Some(Retraction)
G1 X97.044 Y83.954 E-0.35554
; id:1204 | label: TravelMove | feature: Some(Retraction)
G1 X97.025 Y83.971 E-0.00902
; id:1205 | label: TravelMove | feature: Some(Retraction)
G1 Z6.1 F720
; id:1206 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X82.956 Y86.553 F9000
; id:1207 | label: TravelMove | feature: None
G1 Z5.9 F720
; id:1208 | label: LowerZ | feature: None
M73 P35 R7
G1 E3 F1200
; id:1209 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:1210 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y84.053 E0.33849
; id:1211 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X83.143 Y83.885 E0.03404
; id:1212 | label: ExtrusionMove | feature: None
G1 X84.315 Y82.956 E0.20249
; id:1213 | label: ExtrusionMove | feature: None
G1 X88.822 Y82.956 E0.61023
; id:1214 | label: ExtrusionMove | feature: None
G1 X88.326 Y83.448 E0.09459
; id:1215 | label: ExtrusionMove | feature: None
G1 X88.048 Y83.885 E0.07013
; id:1216 | label: ExtrusionMove | feature: None
G1 X87.834 Y84.759 E0.12183
; id:1217 | label: ExtrusionMove | feature: None
G1 X87.888 Y85.632 E0.11843
; id:1218 | label: ExtrusionMove | feature: None
G1 X88.114 Y86.506 E0.12223
; id:1219 | label: ExtrusionMove | feature: None
G1 X88.516 Y87.379 E0.13013
; id:1220 | label: ExtrusionMove | feature: None
G1 X89.161 Y88.253 E0.14707
; id:1221 | label: ExtrusionMove | feature: None
G1 X90.132 Y89.126 E0.17679
; id:1222 | label: ExtrusionMove | feature: None
G1 X91.249 Y90 E0.19203
; id:1223 | label: ExtrusionMove | feature: None
G1 X91.674 Y90.437 E0.08253
; id:1224 | label: ExtrusionMove | feature: None
G1 X91.952 Y90.874 E0.07013
; id:1225 | label: ExtrusionMove | feature: None
G1 X92.166 Y91.747 E0.1217
; id:1226 | label: ExtrusionMove | feature: None
G1 X92.112 Y92.621 E0.11856
; id:1227 | label: ExtrusionMove | feature: None
G1 X91.886 Y93.494 E0.1221
; id:1228 | label: ExtrusionMove | feature: None
G1 X91.484 Y94.368 E0.13025
; id:1229 | label: ExtrusionMove | feature: None
G1 X90.839 Y95.241 E0.14696
; id:1230 | label: ExtrusionMove | feature: None
G1 X89.868 Y96.115 E0.17688
; id:1231 | label: ExtrusionMove | feature: None
G1 X88.697 Y97.044 E0.20238
; id:1232 | label: ExtrusionMove | feature: None
G1 X84.19 Y97.044 E0.61023
; id:1233 | label: ExtrusionMove | feature: None
G1 X84.686 Y96.552 E0.09459
; id:1234 | label: ExtrusionMove | feature: None
G1 X84.963 Y96.115 E0.07005
; id:1235 | label: ExtrusionMove | feature: None
G1 X85.177 Y95.241 E0.12183
; id:1236 | label: ExtrusionMove | feature: None
G1 X85.124 Y94.368 E0.11842
; id:1237 | label: ExtrusionMove | feature: None
G1 X84.897 Y93.494 E0.12226
; id:1238 | label: ExtrusionMove | feature: None
G1 X84.495 Y92.621 E0.13013
; id:1239 | label: ExtrusionMove | feature: None
G1 X83.851 Y91.747 E0.14699
; id:1240 | label: ExtrusionMove | feature: None
G1 X82.956 Y90.942 E0.16298
; id:1241 | label: ExtrusionMove | feature: None
G1 X82.956 Y93.442 E0.33849
; id:1242 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:1243 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1244 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y90.942 E-0.89063
; id:1245 | label: TravelMove | feature: Some(Retraction)
G1 X82.976 Y90.96 E-0.00937
; id:1246 | label: TravelMove | feature: Some(Retraction)
G1 Z6.1 F720
; id:1247 | label: LiftZ | feature: None
G1 Z6.3
; id:1248 | label: LiftZ | feature: None
G1 Z6.5
; id:1249 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:1250 | label: TravelMove | feature: None
G1 Z6.3 F720
; id:1251 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1252 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:1253 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:1254 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:1255 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:1256 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:1257 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:1258 | label: TravelMove | feature: None
M204 P800
M73 P36 R7
G1 F900
; id:1259 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:1260 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:1261 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:1262 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:1263 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:1264 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:1265 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1266 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:1267 | label: TravelMove | feature: Some(Retraction)
G1 Z6.5 F720
; id:1268 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.044 Y93.212 F9000
; id:1269 | label: TravelMove | feature: None
G1 Z6.3 F720
; id:1270 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1271 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:1272 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y90.712 E0.33849
; id:1273 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X96.264 Y90 E0.14299
; id:1274 | label: ExtrusionMove | feature: None
G1 X95.844 Y89.563 E0.08206
; id:1275 | label: ExtrusionMove | feature: None
G1 X95.521 Y89.126 E0.07358
; id:1276 | label: ExtrusionMove | feature: None
G1 X95.162 Y88.253 E0.1278
; id:1277 | label: ExtrusionMove | feature: None
G1 X95.08 Y87.379 E0.11886
; id:1278 | label: ExtrusionMove | feature: None
G1 X95.187 Y86.506 E0.11908
; id:1279 | label: ExtrusionMove | feature: None
G1 X95.471 Y85.632 E0.12443
; id:1280 | label: ExtrusionMove | feature: None
G1 X95.974 Y84.759 E0.13642
; id:1281 | label: ExtrusionMove | feature: None
G1 X96.756 Y83.885 E0.15879
; id:1282 | label: ExtrusionMove | feature: None
G1 X97.044 Y83.622 E0.05281
; id:1283 | label: ExtrusionMove | feature: None
G1 X97.044 Y82.956 E0.09017
; id:1284 | label: ExtrusionMove | feature: None
G1 X95.21 Y82.956 E0.24831
; id:1285 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 E-2.1 F2700
; id:1286 | label: Retraction | feature: Some(Retraction)
M73 P37 R7
G1 F7200
; id:1287 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y82.956 E-0.65336
; id:1288 | label: TravelMove | feature: Some(Retraction)
G1 X97.044 Y83.622 E-0.23726
; id:1289 | label: TravelMove | feature: Some(Retraction)
G1 X97.025 Y83.64 E-0.00938
; id:1290 | label: TravelMove | feature: Some(Retraction)
G1 Z6.5 F720
; id:1291 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X82.956 Y86.224 F9000
; id:1292 | label: TravelMove | feature: None
G1 Z6.3 F720
; id:1293 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1294 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:1295 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y83.724 E0.33849
; id:1296 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X83.789 Y82.956 E0.1534
; id:1297 | label: ExtrusionMove | feature: None
G1 X89.337 Y82.956 E0.75117
; id:1298 | label: ExtrusionMove | feature: None
G1 X88.856 Y83.448 E0.09316
; id:1299 | label: ExtrusionMove | feature: None
G1 X88.533 Y83.885 E0.07358
; id:1300 | label: ExtrusionMove | feature: None
G1 X88.173 Y84.759 E0.12798
; id:1301 | label: ExtrusionMove | feature: None
G1 X88.091 Y85.632 E0.11872
; id:1302 | label: ExtrusionMove | feature: None
G1 X88.199 Y86.506 E0.11924
; id:1303 | label: ExtrusionMove | feature: None
G1 X88.482 Y87.379 E0.12426
; id:1304 | label: ExtrusionMove | feature: None
G1 X88.986 Y88.253 E0.1366
; id:1305 | label: ExtrusionMove | feature: None
G1 X89.768 Y89.126 E0.15869
; id:1306 | label: ExtrusionMove | feature: None
G1 X90.724 Y90 E0.17538
; id:1307 | label: ExtrusionMove | feature: None
G1 X91.144 Y90.437 E0.08206
; id:1308 | label: ExtrusionMove | feature: None
G1 X91.467 Y90.874 E0.07358
; id:1309 | label: ExtrusionMove | feature: None
G1 X91.827 Y91.747 E0.12786
; id:1310 | label: ExtrusionMove | feature: None
G1 X91.909 Y92.621 E0.11886
; id:1311 | label: ExtrusionMove | feature: None
G1 X91.801 Y93.494 E0.1191
; id:1312 | label: ExtrusionMove | feature: None
G1 X91.518 Y94.368 E0.12438
; id:1313 | label: ExtrusionMove | feature: None
G1 X91.014 Y95.241 E0.13648
; id:1314 | label: ExtrusionMove | feature: None
G1 X90.232 Y96.115 E0.15879
; id:1315 | label: ExtrusionMove | feature: None
G1 X89.223 Y97.044 E0.1857
; id:1316 | label: ExtrusionMove | feature: None
G1 X83.675 Y97.044 E0.75117
; id:1317 | label: ExtrusionMove | feature: None
G1 X84.156 Y96.552 E0.09316
; id:1318 | label: ExtrusionMove | feature: None
G1 X84.479 Y96.115 E0.07358
; id:1319 | label: ExtrusionMove | feature: None
G1 X84.838 Y95.241 E0.12793
; id:1320 | label: ExtrusionMove | feature: None
G1 X84.92 Y94.368 E0.11872
; id:1321 | label: ExtrusionMove | feature: None
G1 X84.813 Y93.494 E0.11922
; id:1322 | label: ExtrusionMove | feature: None
G1 X84.529 Y92.621 E0.1243
; id:1323 | label: ExtrusionMove | feature: None
G1 X84.026 Y91.747 E0.13653
; id:1324 | label: ExtrusionMove | feature: None
G1 X83.244 Y90.874 E0.15869
; id:1325 | label: ExtrusionMove | feature: None
G1 X82.956 Y90.611 E0.05281
; id:1326 | label: ExtrusionMove | feature: None
G1 X82.956 Y93.111 E0.33849
; id:1327 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:1328 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1329 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y90.611 E-0.89063
; id:1330 | label: TravelMove | feature: Some(Retraction)
G1 X82.975 Y90.629 E-0.00937
; id:1331 | label: TravelMove | feature: Some(Retraction)
G1 Z6.5 F720
; id:1332 | label: LiftZ | feature: None
G1 Z6.7
; id:1333 | label: LiftZ | feature: None
G1 Z6.9
; id:1334 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:1335 | label: TravelMove | feature: None
G1 Z6.7 F720
; id:1336 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1337 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:1338 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:1339 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:1340 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:1341 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:1342 | label: ExtrusionMove | feature: Some(ShapeEnd)
M73 P38 R7
G1 X98.55 Y98.55 F9000
; id:1343 | label: TravelMove | feature: None
M204 P800
M73 P38 R6
G1 F900
; id:1344 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:1345 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:1346 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:1347 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:1348 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:1349 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:1350 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1351 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:1352 | label: TravelMove | feature: Some(Retraction)
G1 Z6.9 F720
; id:1353 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.044 Y92.852 F9000
; id:1354 | label: TravelMove | feature: None
G1 Z6.7 F720
; id:1355 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1356 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:1357 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y90.352 E0.33849
; id:1358 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X96.698 Y90 E0.06683
; id:1359 | label: ExtrusionMove | feature: None
G1 X95.919 Y89.126 E0.15852
; id:1360 | label: ExtrusionMove | feature: None
G1 X95.443 Y88.253 E0.13463
; id:1361 | label: ExtrusionMove | feature: None
G1 X95.239 Y87.379 E0.12152
; id:1362 | label: ExtrusionMove | feature: None
G1 X95.232 Y86.506 E0.1182
; id:1363 | label: ExtrusionMove | feature: None
G1 X95.401 Y85.632 E0.12053
; id:1364 | label: ExtrusionMove | feature: None
M73 P39 R6
G1 X95.778 Y84.759 E0.12875
; id:1365 | label: ExtrusionMove | feature: None
G1 X96.42 Y83.885 E0.14683
; id:1366 | label: ExtrusionMove | feature: None
G1 X97.044 Y83.251 E0.12044
; id:1367 | label: ExtrusionMove | feature: None
G1 X97.044 Y82.956 E0.03994
; id:1368 | label: ExtrusionMove | feature: None
G1 X89.764 Y82.956 E0.98568
; id:1369 | label: ExtrusionMove | feature: None
G1 X88.93 Y83.885 E0.16903
; id:1370 | label: ExtrusionMove | feature: None
G1 X88.455 Y84.759 E0.13468
; id:1371 | label: ExtrusionMove | feature: None
G1 X88.25 Y85.632 E0.12142
; id:1372 | label: ExtrusionMove | feature: None
G1 X88.244 Y86.506 E0.11834
; id:1373 | label: ExtrusionMove | feature: None
G1 X88.413 Y87.379 E0.12039
; id:1374 | label: ExtrusionMove | feature: None
G1 X88.789 Y88.253 E0.12882
; id:1375 | label: ExtrusionMove | feature: None
G1 X89.431 Y89.126 E0.14672
; id:1376 | label: ExtrusionMove | feature: None
G1 X90.291 Y90 E0.16602
; id:1377 | label: ExtrusionMove | feature: None
G1 X91.07 Y90.874 E0.15852
; id:1378 | label: ExtrusionMove | feature: None
G1 X91.545 Y91.747 E0.13456
; id:1379 | label: ExtrusionMove | feature: None
G1 X91.75 Y92.621 E0.12155
; id:1380 | label: ExtrusionMove | feature: None
G1 X91.756 Y93.494 E0.1182
; id:1381 | label: ExtrusionMove | feature: None
G1 X91.587 Y94.368 E0.12053
; id:1382 | label: ExtrusionMove | feature: None
G1 X91.211 Y95.241 E0.1287
; id:1383 | label: ExtrusionMove | feature: None
G1 X90.569 Y96.115 E0.14683
; id:1384 | label: ExtrusionMove | feature: None
G1 X89.66 Y97.044 E0.17598
; id:1385 | label: ExtrusionMove | feature: None
G1 X83.248 Y97.044 E0.86815
; id:1386 | label: ExtrusionMove | feature: None
G1 X84.081 Y96.115 E0.16894
; id:1387 | label: ExtrusionMove | feature: None
G1 X84.557 Y95.241 E0.13475
; id:1388 | label: ExtrusionMove | feature: None
G1 X84.761 Y94.368 E0.12138
; id:1389 | label: ExtrusionMove | feature: None
G1 X84.768 Y93.494 E0.11834
; id:1390 | label: ExtrusionMove | feature: None
G1 X84.599 Y92.621 E0.12039
; id:1391 | label: ExtrusionMove | feature: None
G1 X84.222 Y91.747 E0.12888
; id:1392 | label: ExtrusionMove | feature: None
G1 X83.58 Y90.874 E0.14672
; id:1393 | label: ExtrusionMove | feature: None
G1 X82.956 Y90.239 E0.12054
; id:1394 | label: ExtrusionMove | feature: None
G1 X82.956 Y87.739 E0.33849
; id:1395 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:1396 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1397 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y90.239 E-0.89063
; id:1398 | label: TravelMove | feature: Some(Retraction)
G1 X82.974 Y90.258 E-0.00937
; id:1399 | label: TravelMove | feature: Some(Retraction)
G1 Z6.9 F720
; id:1400 | label: LiftZ | feature: None
G1 Z7.1
; id:1401 | label: LiftZ | feature: None
G1 Z7.3
; id:1402 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:1403 | label: TravelMove | feature: None
G1 Z7.1 F720
; id:1404 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1405 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:1406 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:1407 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:1408 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:1409 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:1410 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:1411 | label: TravelMove | feature: None
M204 P800
M73 P40 R6
G1 F900
; id:1412 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:1413 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:1414 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:1415 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:1416 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:1417 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:1418 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1419 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:1420 | label: TravelMove | feature: Some(Retraction)
G1 Z7.3 F720
; id:1421 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.044 Y92.441 F9000
; id:1422 | label: TravelMove | feature: None
G1 Z7.1 F720
; id:1423 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1424 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:1425 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y89.941 E0.33849
; id:1426 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X96.271 Y89.126 E0.15209
; id:1427 | label: ExtrusionMove | feature: None
G1 X95.682 Y88.253 E0.14259
; id:1428 | label: ExtrusionMove | feature: None
G1 X95.359 Y87.379 E0.12616
; id:1429 | label: ExtrusionMove | feature: None
G1 X95.24 Y86.506 E0.11929
; id:1430 | label: ExtrusionMove | feature: None
G1 X95.297 Y85.632 E0.11859
; id:1431 | label: ExtrusionMove | feature: None
G1 X95.554 Y84.759 E0.12322
; id:1432 | label: ExtrusionMove | feature: None
G1 X96.078 Y83.885 E0.13797
; id:1433 | label: ExtrusionMove | feature: None
G1 X96.929 Y82.956 E0.17058
; id:1434 | label: ExtrusionMove | feature: None
G1 X90.162 Y82.956 E0.91622
; id:1435 | label: ExtrusionMove | feature: None
G1 X89.282 Y83.885 E0.17326
; id:1436 | label: ExtrusionMove | feature: None
M73 P41 R6
G1 X88.694 Y84.759 E0.14262
; id:1437 | label: ExtrusionMove | feature: None
G1 X88.371 Y85.632 E0.12603
; id:1438 | label: ExtrusionMove | feature: None
G1 X88.252 Y86.506 E0.11943
; id:1439 | label: ExtrusionMove | feature: None
G1 X88.308 Y87.379 E0.11844
; id:1440 | label: ExtrusionMove | feature: None
G1 X88.565 Y88.253 E0.12335
; id:1441 | label: ExtrusionMove | feature: None
G1 X89.09 Y89.126 E0.13793
; id:1442 | label: ExtrusionMove | feature: None
G1 X90.718 Y90.874 E0.32342
; id:1443 | label: ExtrusionMove | feature: None
G1 X91.306 Y91.747 E0.14251
; id:1444 | label: ExtrusionMove | feature: None
G1 X91.629 Y92.621 E0.12616
; id:1445 | label: ExtrusionMove | feature: None
G1 X91.749 Y93.494 E0.11931
; id:1446 | label: ExtrusionMove | feature: None
G1 X91.692 Y94.368 E0.11859
; id:1447 | label: ExtrusionMove | feature: None
G1 X91.435 Y95.241 E0.12322
; id:1448 | label: ExtrusionMove | feature: None
G1 X90.91 Y96.115 E0.13804
; id:1449 | label: ExtrusionMove | feature: None
G1 X90.059 Y97.044 E0.17058
; id:1450 | label: ExtrusionMove | feature: None
G1 X82.956 Y97.044 E0.96171
; id:1451 | label: ExtrusionMove | feature: None
G1 X82.956 Y96.929 E0.01557
; id:1452 | label: ExtrusionMove | feature: None
G1 X83.729 Y96.115 E0.15199
; id:1453 | label: ExtrusionMove | feature: None
G1 X84.318 Y95.241 E0.1427
; id:1454 | label: ExtrusionMove | feature: None
G1 X84.641 Y94.368 E0.12603
; id:1455 | label: ExtrusionMove | feature: None
G1 X84.76 Y93.494 E0.11943
; id:1456 | label: ExtrusionMove | feature: None
G1 X84.704 Y92.621 E0.11844
; id:1457 | label: ExtrusionMove | feature: None
G1 X84.447 Y91.747 E0.12335
; id:1458 | label: ExtrusionMove | feature: None
G1 X83.922 Y90.874 E0.13793
; id:1459 | label: ExtrusionMove | feature: None
G1 X82.956 Y89.824 E0.19318
; id:1460 | label: ExtrusionMove | feature: None
G1 X82.956 Y87.324 E0.33849
; id:1461 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:1462 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1463 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y89.824 E-0.89063
; id:1464 | label: TravelMove | feature: Some(Retraction)
G1 X82.974 Y89.843 E-0.00937
; id:1465 | label: TravelMove | feature: Some(Retraction)
G1 Z7.3 F720
; id:1466 | label: LiftZ | feature: None
G1 Z7.5
; id:1467 | label: LiftZ | feature: None
G1 Z7.7
; id:1468 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:1469 | label: TravelMove | feature: None
G1 Z7.5 F720
; id:1470 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1471 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:1472 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:1473 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:1474 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:1475 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:1476 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:1477 | label: TravelMove | feature: None
M204 P800
M73 P42 R6
G1 F900
; id:1478 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:1479 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:1480 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:1481 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:1482 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:1483 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:1484 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1485 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:1486 | label: TravelMove | feature: Some(Retraction)
G1 Z7.7 F720
; id:1487 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.044 Y93.929 F9000
; id:1488 | label: TravelMove | feature: None
G1 Z7.5 F720
; id:1489 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1490 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:1491 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y96.429 E0.33849
; id:1492 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X96.415 Y97.044 E0.11911
; id:1493 | label: ExtrusionMove | feature: None
G1 X90.468 Y97.044 E0.8052
; id:1494 | label: ExtrusionMove | feature: None
G1 X91.284 Y96.115 E0.16741
; id:1495 | label: ExtrusionMove | feature: None
G1 X91.696 Y95.241 E0.13082
; id:1496 | label: ExtrusionMove | feature: None
G1 X91.833 Y94.368 E0.11965
; id:1497 | label: ExtrusionMove | feature: None
G1 X91.777 Y93.494 E0.11858
; id:1498 | label: ExtrusionMove | feature: None
G1 X91.544 Y92.621 E0.12234
; id:1499 | label: ExtrusionMove | feature: None
G1 X91.098 Y91.747 E0.13285
; id:1500 | label: ExtrusionMove | feature: None
G1 X90.382 Y90.874 E0.15287
; id:1501 | label: ExtrusionMove | feature: None
G1 X89.474 Y90 E0.17064
; id:1502 | label: ExtrusionMove | feature: None
G1 X88.716 Y89.126 E0.15664
; id:1503 | label: ExtrusionMove | feature: None
M73 P43 R6
G1 X88.304 Y88.253 E0.1307
; id:1504 | label: ExtrusionMove | feature: None
G1 X88.167 Y87.379 E0.11978
; id:1505 | label: ExtrusionMove | feature: None
G1 X88.223 Y86.506 E0.11844
; id:1506 | label: ExtrusionMove | feature: None
G1 X88.456 Y85.632 E0.12247
; id:1507 | label: ExtrusionMove | feature: None
G1 X88.902 Y84.759 E0.13273
; id:1508 | label: ExtrusionMove | feature: None
G1 X89.618 Y83.885 E0.15297
; id:1509 | label: ExtrusionMove | feature: None
G1 X90.574 Y82.956 E0.18049
; id:1510 | label: ExtrusionMove | feature: None
G1 X96.52 Y82.956 E0.80506
; id:1511 | label: ExtrusionMove | feature: None
G1 X95.704 Y83.885 E0.16741
; id:1512 | label: ExtrusionMove | feature: None
G1 X95.292 Y84.759 E0.13082
; id:1513 | label: ExtrusionMove | feature: None
G1 X95.155 Y85.632 E0.11965
; id:1514 | label: ExtrusionMove | feature: None
G1 X95.212 Y86.506 E0.11859
; id:1515 | label: ExtrusionMove | feature: None
G1 X95.444 Y87.379 E0.1223
; id:1516 | label: ExtrusionMove | feature: None
G1 X95.89 Y88.253 E0.13285
; id:1517 | label: ExtrusionMove | feature: None
G1 X96.606 Y89.126 E0.15287
; id:1518 | label: ExtrusionMove | feature: None
G1 X97.044 Y89.547 E0.08226
; id:1519 | label: ExtrusionMove | feature: None
G1 X97.044 Y87.047 E0.33849
; id:1520 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 E-2.1 F2700
; id:1521 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1522 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y89.547 E-0.89063
; id:1523 | label: TravelMove | feature: Some(Retraction)
G1 X97.025 Y89.529 E-0.00937
; id:1524 | label: TravelMove | feature: Some(Retraction)
G1 Z7.7 F720
; id:1525 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X82.956 Y86.941 F9000
; id:1526 | label: TravelMove | feature: None
G1 Z7.5 F720
; id:1527 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1528 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:1529 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y89.441 E0.33849
; id:1530 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X83.537 Y90 E0.10916
; id:1531 | label: ExtrusionMove | feature: None
G1 X84.296 Y90.874 E0.15673
; id:1532 | label: ExtrusionMove | feature: None
G1 X84.708 Y91.747 E0.1307
; id:1533 | label: ExtrusionMove | feature: None
G1 X84.845 Y92.621 E0.11978
; id:1534 | label: ExtrusionMove | feature: None
G1 X84.788 Y93.494 E0.11845
; id:1535 | label: ExtrusionMove | feature: None
G1 X84.556 Y94.368 E0.12243
; id:1536 | label: ExtrusionMove | feature: None
G1 X84.11 Y95.241 E0.13273
; id:1537 | label: ExtrusionMove | feature: None
G1 X83.394 Y96.115 E0.15297
; id:1538 | label: ExtrusionMove | feature: None
G1 X82.956 Y96.536 E0.08226
; id:1539 | label: ExtrusionMove | feature: None
G1 X82.956 Y97.044 E0.06878
; id:1540 | label: ExtrusionMove | feature: None
G1 X84.948 Y97.044 E0.26971
; id:1541 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:1542 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1543 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y97.044 E-0.70965
; id:1544 | label: TravelMove | feature: Some(Retraction)
G1 X82.956 Y96.536 E-0.18097
; id:1545 | label: TravelMove | feature: Some(Retraction)
G1 X82.975 Y96.518 E-0.00938
; id:1546 | label: TravelMove | feature: Some(Retraction)
G1 Z7.7 F720
; id:1547 | label: LiftZ | feature: None
G1 Z7.9
; id:1548 | label: LiftZ | feature: None
G1 Z8.1
; id:1549 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:1550 | label: TravelMove | feature: None
G1 Z7.9 F720
; id:1551 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1552 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:1553 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:1554 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:1555 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:1556 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:1557 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:1558 | label: TravelMove | feature: None
M204 P800
M73 P44 R6
G1 F900
; id:1559 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:1560 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:1561 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:1562 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:1563 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:1564 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:1565 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1566 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:1567 | label: TravelMove | feature: Some(Retraction)
G1 Z8.1 F720
; id:1568 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.044 Y93.595 F9000
; id:1569 | label: TravelMove | feature: None
G1 Z7.9 F720
; id:1570 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1571 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:1572 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y96.095 E0.33849
; id:1573 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X95.935 Y97.044 E0.19763
; id:1574 | label: ExtrusionMove | feature: None
G1 X90.934 Y97.044 E0.67711
; id:1575 | label: ExtrusionMove | feature: None
G1 X91.422 Y96.552 E0.09382
; id:1576 | label: ExtrusionMove | feature: None
G1 X91.723 Y96.115 E0.07185
; id:1577 | label: ExtrusionMove | feature: None
G1 X92.008 Y95.241 E0.12447
; id:1578 | label: ExtrusionMove | feature: None
G1 X92.016 Y94.368 E0.11821
; id:1579 | label: ExtrusionMove | feature: None
M73 P45 R6
G1 X91.843 Y93.494 E0.12063
; id:1580 | label: ExtrusionMove | feature: None
G1 X91.494 Y92.621 E0.1273
; id:1581 | label: ExtrusionMove | feature: None
G1 X90.914 Y91.747 E0.14202
; id:1582 | label: ExtrusionMove | feature: None
G1 X90.035 Y90.874 E0.16774
; id:1583 | label: ExtrusionMove | feature: None
G1 X89 Y90 E0.18341
; id:1584 | label: ExtrusionMove | feature: None
G1 X88.578 Y89.563 E0.08225
; id:1585 | label: ExtrusionMove | feature: None
G1 X88.277 Y89.126 E0.07185
; id:1586 | label: ExtrusionMove | feature: None
G1 X87.992 Y88.253 E0.12434
; id:1587 | label: ExtrusionMove | feature: None
G1 X87.984 Y87.379 E0.11834
; id:1588 | label: ExtrusionMove | feature: None
G1 X88.157 Y86.506 E0.1205
; id:1589 | label: ExtrusionMove | feature: None
G1 X88.506 Y85.632 E0.12742
; id:1590 | label: ExtrusionMove | feature: None
G1 X89.086 Y84.759 E0.14191
; id:1591 | label: ExtrusionMove | feature: None
G1 X89.965 Y83.885 E0.16783
; id:1592 | label: ExtrusionMove | feature: None
G1 X91.053 Y82.956 E0.1937
; id:1593 | label: ExtrusionMove | feature: None
G1 X96.054 Y82.956 E0.67711
; id:1594 | label: ExtrusionMove | feature: None
G1 X95.566 Y83.448 E0.09382
; id:1595 | label: ExtrusionMove | feature: None
G1 X95.265 Y83.885 E0.07185
; id:1596 | label: ExtrusionMove | feature: None
G1 X94.981 Y84.759 E0.12443
; id:1597 | label: ExtrusionMove | feature: None
G1 X94.972 Y85.632 E0.11821
; id:1598 | label: ExtrusionMove | feature: None
G1 X95.145 Y86.506 E0.12063
; id:1599 | label: ExtrusionMove | feature: None
G1 X95.494 Y87.379 E0.1273
; id:1600 | label: ExtrusionMove | feature: None
G1 X96.074 Y88.253 E0.14202
; id:1601 | label: ExtrusionMove | feature: None
G1 X97.044 Y89.203 E0.18383
; id:1602 | label: ExtrusionMove | feature: None
G1 X97.044 Y86.703 E0.33849
; id:1603 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 E-2.1 F2700
; id:1604 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1605 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y89.203 E-0.89063
; id:1606 | label: TravelMove | feature: Some(Retraction)
G1 X97.025 Y89.185 E-0.00937
; id:1607 | label: TravelMove | feature: Some(Retraction)
G1 Z8.1 F720
; id:1608 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X82.956 Y86.606 F9000
; id:1609 | label: TravelMove | feature: None
G1 Z7.9 F720
; id:1610 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1611 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:1612 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y89.106 E0.33849
; id:1613 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X84.011 Y90 E0.18723
; id:1614 | label: ExtrusionMove | feature: None
G1 X84.434 Y90.437 E0.08235
; id:1615 | label: ExtrusionMove | feature: None
G1 X84.735 Y90.874 E0.07185
; id:1616 | label: ExtrusionMove | feature: None
G1 X85.019 Y91.747 E0.1243
; id:1617 | label: ExtrusionMove | feature: None
G1 X85.028 Y92.621 E0.11834
; id:1618 | label: ExtrusionMove | feature: None
G1 X84.855 Y93.494 E0.1205
; id:1619 | label: ExtrusionMove | feature: None
G1 X84.506 Y94.368 E0.12742
; id:1620 | label: ExtrusionMove | feature: None
G1 X83.926 Y95.241 E0.14191
; id:1621 | label: ExtrusionMove | feature: None
G1 X82.956 Y96.191 E0.18383
; id:1622 | label: ExtrusionMove | feature: None
G1 X82.956 Y97.044 E0.11549
; id:1623 | label: ExtrusionMove | feature: None
G1 X84.604 Y97.044 E0.22313
; id:1624 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:1625 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1626 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y97.044 E-0.5871
; id:1627 | label: TravelMove | feature: Some(Retraction)
G1 X82.956 Y96.191 E-0.30388
; id:1628 | label: TravelMove | feature: Some(Retraction)
G1 X82.974 Y96.173 E-0.00902
; id:1629 | label: TravelMove | feature: Some(Retraction)
G1 Z8.1 F720
; id:1630 | label: LiftZ | feature: None
G1 Z8.3
; id:1631 | label: LiftZ | feature: None
G1 Z8.5
; id:1632 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:1633 | label: TravelMove | feature: None
G1 Z8.3 F720
; id:1634 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1635 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:1636 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:1637 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:1638 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:1639 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:1640 | label: ExtrusionMove | feature: Some(ShapeEnd)
M73 P46 R6
G1 X98.55 Y98.55 F9000
; id:1641 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:1642 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:1643 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:1644 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:1645 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:1646 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:1647 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:1648 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1649 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:1650 | label: TravelMove | feature: Some(Retraction)
G1 Z8.5 F720
; id:1651 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.044 Y93.312 F9000
; id:1652 | label: TravelMove | feature: None
G1 Z8.3 F720
; id:1653 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1654 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:1655 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y95.812 E0.33849
; id:1656 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X95.358 Y96.988 E0.27832
; id:1657 | label: ExtrusionMove | feature: None
G1 X95.304 Y97.044 E0.01053
; id:1658 | label: ExtrusionMove | feature: None
G1 X91.55 Y97.044 E0.50827
; id:1659 | label: ExtrusionMove | feature: None
M73 P47 R6
G1 X91.63 Y96.988 E0.01322
; id:1660 | label: ExtrusionMove | feature: None
M73 P47 R5
G1 X92.054 Y96.552 E0.08234
; id:1661 | label: ExtrusionMove | feature: None
G1 X92.286 Y96.115 E0.06699
; id:1662 | label: ExtrusionMove | feature: None
G1 X92.388 Y95.241 E0.11914
; id:1663 | label: ExtrusionMove | feature: None
G1 X92.247 Y94.368 E0.11973
; id:1664 | label: ExtrusionMove | feature: None
G1 X91.952 Y93.494 E0.12489
; id:1665 | label: ExtrusionMove | feature: None
G1 X91.482 Y92.621 E0.13424
; id:1666 | label: ExtrusionMove | feature: None
G1 X90.748 Y91.747 E0.15453
; id:1667 | label: ExtrusionMove | feature: None
G1 X90.241 Y91.31 E0.09063
; id:1668 | label: ExtrusionMove | feature: None
G1 X88.37 Y90 E0.30925
; id:1669 | label: ExtrusionMove | feature: None
G1 X87.946 Y89.563 E0.08244
; id:1670 | label: ExtrusionMove | feature: None
G1 X87.714 Y89.126 E0.06699
; id:1671 | label: ExtrusionMove | feature: None
G1 X87.612 Y88.253 E0.119
; id:1672 | label: ExtrusionMove | feature: None
G1 X87.753 Y87.379 E0.11987
; id:1673 | label: ExtrusionMove | feature: None
G1 X88.048 Y86.506 E0.12477
; id:1674 | label: ExtrusionMove | feature: None
G1 X88.518 Y85.632 E0.13436
; id:1675 | label: ExtrusionMove | feature: None
G1 X89.252 Y84.759 E0.15443
; id:1676 | label: ExtrusionMove | feature: None
G1 X89.759 Y84.322 E0.09063
; id:1677 | label: ExtrusionMove | feature: None
G1 X91.63 Y83.012 E0.30925
; id:1678 | label: ExtrusionMove | feature: None
G1 X91.684 Y82.956 E0.01053
; id:1679 | label: ExtrusionMove | feature: None
G1 X95.438 Y82.956 E0.50827
; id:1680 | label: ExtrusionMove | feature: None
G1 X95.358 Y83.012 E0.01322
; id:1681 | label: ExtrusionMove | feature: None
G1 X94.934 Y83.448 E0.08234
; id:1682 | label: ExtrusionMove | feature: None
G1 X94.703 Y83.885 E0.06693
; id:1683 | label: ExtrusionMove | feature: None
G1 X94.6 Y84.759 E0.11915
; id:1684 | label: ExtrusionMove | feature: None
G1 X94.741 Y85.632 E0.11973
; id:1685 | label: ExtrusionMove | feature: None
G1 X95.037 Y86.506 E0.12494
; id:1686 | label: ExtrusionMove | feature: None
G1 X95.507 Y87.379 E0.13424
; id:1687 | label: ExtrusionMove | feature: None
G1 X96.24 Y88.253 E0.15444
; id:1688 | label: ExtrusionMove | feature: None
G1 X96.747 Y88.69 E0.09063
; id:1689 | label: ExtrusionMove | feature: None
G1 X97.044 Y88.903 E0.04948
; id:1690 | label: ExtrusionMove | feature: None
G1 X97.044 Y86.403 E0.33849
; id:1691 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 E-2.1 F2700
; id:1692 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1693 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y88.903 E-0.89063
; id:1694 | label: TravelMove | feature: Some(Retraction)
G1 X97.023 Y88.888 E-0.00937
; id:1695 | label: TravelMove | feature: Some(Retraction)
G1 Z8.5 F720
; id:1696 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X82.956 Y86.323 F9000
; id:1697 | label: TravelMove | feature: None
G1 Z8.3 F720
; id:1698 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1699 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:1700 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y88.823 E0.33849
; id:1701 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X84.642 Y90 E0.2784
; id:1702 | label: ExtrusionMove | feature: None
G1 X85.066 Y90.437 E0.08244
; id:1703 | label: ExtrusionMove | feature: None
G1 X85.297 Y90.874 E0.06693
; id:1704 | label: ExtrusionMove | feature: None
G1 X85.4 Y91.747 E0.11902
; id:1705 | label: ExtrusionMove | feature: None
G1 X85.259 Y92.621 E0.11987
; id:1706 | label: ExtrusionMove | feature: None
G1 X84.963 Y93.494 E0.12481
; id:1707 | label: ExtrusionMove | feature: None
G1 X84.493 Y94.368 E0.13436
; id:1708 | label: ExtrusionMove | feature: None
G1 X83.76 Y95.241 E0.15434
; id:1709 | label: ExtrusionMove | feature: None
G1 X83.253 Y95.678 E0.09063
; id:1710 | label: ExtrusionMove | feature: None
G1 X82.956 Y95.891 E0.04948
; id:1711 | label: ExtrusionMove | feature: None
G1 X82.956 Y97.044 E0.15611
; id:1712 | label: ExtrusionMove | feature: None
G1 X84.304 Y97.044 E0.18251
; id:1713 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:1714 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1715 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y97.044 E-0.48022
; id:1716 | label: TravelMove | feature: Some(Retraction)
G1 X82.956 Y95.891 E-0.41076
; id:1717 | label: TravelMove | feature: Some(Retraction)
G1 X82.977 Y95.876 E-0.00902
; id:1718 | label: TravelMove | feature: Some(Retraction)
G1 Z8.5 F720
; id:1719 | label: LiftZ | feature: None
G1 Z8.7
; id:1720 | label: LiftZ | feature: None
G1 Z8.9
; id:1721 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:1722 | label: TravelMove | feature: None
G1 Z8.7 F720
; id:1723 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1724 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:1725 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:1726 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:1727 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:1728 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:1729 | label: ExtrusionMove | feature: Some(ShapeEnd)
M73 P48 R5
G1 X98.55 Y98.55 F9000
; id:1730 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:1731 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:1732 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:1733 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:1734 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:1735 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:1736 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:1737 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1738 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:1739 | label: TravelMove | feature: Some(Retraction)
G1 Z8.9 F720
; id:1740 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.044 Y93.095 F9000
; id:1741 | label: TravelMove | feature: None
G1 Z8.7 F720
; id:1742 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1743 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:1744 | label: FeedrateChangeOnly | feature: None
M73 P49 R5
G1 X97.044 Y95.595 E0.33849
; id:1745 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X96.917 Y95.678 E0.02054
; id:1746 | label: ExtrusionMove | feature: None
G1 X96.052 Y96.115 E0.13121
; id:1747 | label: ExtrusionMove | feature: None
G1 X94.998 Y96.552 E0.15449
; id:1748 | label: ExtrusionMove | feature: None
G1 X94.053 Y96.988 E0.14091
; id:1749 | label: ExtrusionMove | feature: None
G1 X94.024 Y97.044 E0.00854
; id:1750 | label: ExtrusionMove | feature: None
G1 X92.815 Y97.044 E0.16369
; id:1751 | label: ExtrusionMove | feature: None
G1 X92.935 Y96.988 E0.01793
; id:1752 | label: ExtrusionMove | feature: None
G1 X93.17 Y96.552 E0.06706
; id:1753 | label: ExtrusionMove | feature: None
G1 X93.114 Y96.115 E0.05965
; id:1754 | label: ExtrusionMove | feature: None
G1 X92.864 Y95.241 E0.12308
; id:1755 | label: ExtrusionMove | feature: None
G1 X92.535 Y94.368 E0.12632
; id:1756 | label: ExtrusionMove | feature: None
G1 X92.109 Y93.494 E0.13164
; id:1757 | label: ExtrusionMove | feature: None
G1 X91.514 Y92.621 E0.14304
; id:1758 | label: ExtrusionMove | feature: None
G1 X91.11 Y92.184 E0.08058
; id:1759 | label: ExtrusionMove | feature: None
G1 X90.595 Y91.747 E0.09145
; id:1760 | label: ExtrusionMove | feature: None
G1 X89.928 Y91.31 E0.10797
; id:1761 | label: ExtrusionMove | feature: None
G1 X89.064 Y90.874 E0.13103
; id:1762 | label: ExtrusionMove | feature: None
G1 X88.01 Y90.437 E0.15449
; id:1763 | label: ExtrusionMove | feature: None
G1 X87.065 Y90 E0.14097
; id:1764 | label: ExtrusionMove | feature: None
G1 X86.83 Y89.563 E0.06718
; id:1765 | label: ExtrusionMove | feature: None
G1 X86.886 Y89.126 E0.05965
; id:1766 | label: ExtrusionMove | feature: None
G1 X87.136 Y88.253 E0.12295
; id:1767 | label: ExtrusionMove | feature: None
G1 X87.465 Y87.379 E0.12644
; id:1768 | label: ExtrusionMove | feature: None
G1 X87.891 Y86.506 E0.13152
; id:1769 | label: ExtrusionMove | feature: None
G1 X88.486 Y85.632 E0.14315
; id:1770 | label: ExtrusionMove | feature: None
G1 X88.89 Y85.195 E0.08058
; id:1771 | label: ExtrusionMove | feature: None
G1 X89.405 Y84.759 E0.09136
; id:1772 | label: ExtrusionMove | feature: None
G1 X90.072 Y84.322 E0.10797
; id:1773 | label: ExtrusionMove | feature: None
G1 X90.936 Y83.885 E0.13109
; id:1774 | label: ExtrusionMove | feature: None
G1 X91.99 Y83.448 E0.15449
; id:1775 | label: ExtrusionMove | feature: None
G1 X92.935 Y83.012 E0.14091
; id:1776 | label: ExtrusionMove | feature: None
G1 X92.965 Y82.956 E0.0086
; id:1777 | label: ExtrusionMove | feature: None
G1 X94.173 Y82.956 E0.16356
; id:1778 | label: ExtrusionMove | feature: None
G1 X94.053 Y83.012 E0.01793
; id:1779 | label: ExtrusionMove | feature: None
G1 X93.818 Y83.448 E0.06706
; id:1780 | label: ExtrusionMove | feature: None
G1 X93.874 Y83.885 E0.05965
; id:1781 | label: ExtrusionMove | feature: None
G1 X94.125 Y84.759 E0.12312
; id:1782 | label: ExtrusionMove | feature: None
G1 X94.454 Y85.632 E0.12632
; id:1783 | label: ExtrusionMove | feature: None
G1 X94.88 Y86.506 E0.13164
; id:1784 | label: ExtrusionMove | feature: None
G1 X95.475 Y87.379 E0.14304
; id:1785 | label: ExtrusionMove | feature: None
G1 X95.879 Y87.816 E0.08058
; id:1786 | label: ExtrusionMove | feature: None
G1 X96.393 Y88.253 E0.09135
; id:1787 | label: ExtrusionMove | feature: None
G1 X97.044 Y88.679 E0.10534
; id:1788 | label: ExtrusionMove | feature: None
G1 X97.044 Y86.179 E0.33849
; id:1789 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 E-2.1 F2700
; id:1790 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1791 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y88.679 E-0.89063
; id:1792 | label: TravelMove | feature: Some(Retraction)
G1 X97.022 Y88.665 E-0.00937
; id:1793 | label: TravelMove | feature: Some(Retraction)
G1 Z8.9 F720
; id:1794 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X82.956 Y86.106 F9000
; id:1795 | label: TravelMove | feature: None
G1 Z8.7 F720
; id:1796 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1797 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:1798 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y88.606 E0.33849
; id:1799 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X83.083 Y88.69 E0.02062
; id:1800 | label: ExtrusionMove | feature: None
G1 X83.948 Y89.126 E0.13115
; id:1801 | label: ExtrusionMove | feature: None
G1 X85.002 Y89.563 E0.15449
; id:1802 | label: ExtrusionMove | feature: None
G1 X85.947 Y90 E0.14097
; id:1803 | label: ExtrusionMove | feature: None
G1 X86.182 Y90.437 E0.06718
; id:1804 | label: ExtrusionMove | feature: None
G1 X86.126 Y90.874 E0.05965
; id:1805 | label: ExtrusionMove | feature: None
G1 X85.875 Y91.747 E0.12299
; id:1806 | label: ExtrusionMove | feature: None
G1 X85.546 Y92.621 E0.12644
; id:1807 | label: ExtrusionMove | feature: None
G1 X85.12 Y93.494 E0.13152
; id:1808 | label: ExtrusionMove | feature: None
G1 X84.525 Y94.368 E0.14315
; id:1809 | label: ExtrusionMove | feature: None
G1 X84.121 Y94.805 E0.08058
; id:1810 | label: ExtrusionMove | feature: None
G1 X83.607 Y95.241 E0.09126
; id:1811 | label: ExtrusionMove | feature: None
G1 X82.956 Y95.667 E0.10534
; id:1812 | label: ExtrusionMove | feature: None
G1 X82.956 Y97.044 E0.18644
; id:1813 | label: ExtrusionMove | feature: None
G1 X84.08 Y97.044 E0.15218
; id:1814 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:1815 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1816 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y97.044 E-0.40042
; id:1817 | label: TravelMove | feature: Some(Retraction)
G1 X82.956 Y95.667 E-0.49056
; id:1818 | label: TravelMove | feature: Some(Retraction)
G1 X82.977 Y95.653 E-0.00902
; id:1819 | label: TravelMove | feature: Some(Retraction)
G1 Z8.9 F720
; id:1820 | label: LiftZ | feature: None
G1 Z9.1
; id:1821 | label: LiftZ | feature: None
G1 Z9.3
; id:1822 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:1823 | label: TravelMove | feature: None
G1 Z9.1 F720
; id:1824 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1825 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:1826 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:1827 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:1828 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:1829 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:1830 | label: ExtrusionMove | feature: Some(ShapeEnd)
M73 P50 R5
G1 X98.55 Y98.55 F9000
; id:1831 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:1832 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:1833 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:1834 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:1835 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:1836 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:1837 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:1838 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1839 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:1840 | label: TravelMove | feature: Some(Retraction)
G1 Z9.3 F720
; id:1841 | label: LiftZ | feature: None
M73 P51 R5
G1 X83.903 Y97.044 F9000
; id:1842 | label: TravelMove | feature: None
G1 Z9.1 F720
; id:1843 | label: LowerZ | feature: None
G1 E3 F1200
; id:1844 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:1845 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y97.044 E0.12822
; id:1846 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.956 Y95.49 E0.2104
; id:1847 | label: ExtrusionMove | feature: None
G1 X83.885 Y94.978 E0.14362
; id:1848 | label: ExtrusionMove | feature: None
G1 X84.759 Y94.214 E0.15717
; id:1849 | label: ExtrusionMove | feature: None
G1 X85.195 Y93.684 E0.09292
; id:1850 | label: ExtrusionMove | feature: None
G1 X86.506 Y91.718 E0.31994
; id:1851 | label: ExtrusionMove | feature: None
G1 X86.943 Y91.298 E0.08206
; id:1852 | label: ExtrusionMove | feature: None
G1 X87.379 Y91.088 E0.06552
; id:1853 | label: ExtrusionMove | feature: None
G1 X88.253 Y91.03 E0.1186
; id:1854 | label: ExtrusionMove | feature: None
G1 X89.126 Y91.2 E0.12042
; id:1855 | label: ExtrusionMove | feature: None
G1 X90 Y91.518 E0.12592
; id:1856 | label: ExtrusionMove | feature: None
G1 X90.874 Y92.01 E0.1358
; id:1857 | label: ExtrusionMove | feature: None
G1 X91.747 Y92.774 E0.15707
; id:1858 | label: ExtrusionMove | feature: None
G1 X92.184 Y93.304 E0.09301
; id:1859 | label: ExtrusionMove | feature: None
G1 X93.494 Y95.27 E0.31987
; id:1860 | label: ExtrusionMove | feature: None
G1 X93.931 Y95.691 E0.08216
; id:1861 | label: ExtrusionMove | feature: None
G1 X94.368 Y95.901 E0.06564
; id:1862 | label: ExtrusionMove | feature: None
G1 X95.241 Y95.959 E0.11846
; id:1863 | label: ExtrusionMove | feature: None
G1 X96.115 Y95.788 E0.12058
; id:1864 | label: ExtrusionMove | feature: None
G1 X97.044 Y95.439 E0.13437
; id:1865 | label: ExtrusionMove | feature: None
G1 X97.044 Y88.502 E0.93924
; id:1866 | label: ExtrusionMove | feature: None
G1 X96.115 Y87.99 E0.14362
; id:1867 | label: ExtrusionMove | feature: None
G1 X95.241 Y87.226 E0.15717
; id:1868 | label: ExtrusionMove | feature: None
G1 X94.805 Y86.696 E0.09292
; id:1869 | label: ExtrusionMove | feature: None
G1 X93.494 Y84.73 E0.31994
; id:1870 | label: ExtrusionMove | feature: None
G1 X93.057 Y84.309 E0.08216
; id:1871 | label: ExtrusionMove | feature: None
G1 X92.621 Y84.099 E0.06552
; id:1872 | label: ExtrusionMove | feature: None
G1 X91.747 Y84.041 E0.1186
; id:1873 | label: ExtrusionMove | feature: None
G1 X90.874 Y84.212 E0.12045
; id:1874 | label: ExtrusionMove | feature: None
G1 X90 Y84.53 E0.12592
; id:1875 | label: ExtrusionMove | feature: None
G1 X89.126 Y85.022 E0.1358
; id:1876 | label: ExtrusionMove | feature: None
G1 X88.253 Y85.786 E0.15707
; id:1877 | label: ExtrusionMove | feature: None
G1 X87.816 Y86.316 E0.09301
; id:1878 | label: ExtrusionMove | feature: None
G1 X86.506 Y88.282 E0.31987
; id:1879 | label: ExtrusionMove | feature: None
G1 X86.069 Y88.702 E0.08206
; id:1880 | label: ExtrusionMove | feature: None
G1 X85.632 Y88.912 E0.06564
; id:1881 | label: ExtrusionMove | feature: None
G1 X84.759 Y88.97 E0.11846
; id:1882 | label: ExtrusionMove | feature: None
G1 X83.885 Y88.8 E0.12055
; id:1883 | label: ExtrusionMove | feature: None
G1 X82.956 Y88.45 E0.13441
; id:1884 | label: ExtrusionMove | feature: None
G1 X82.956 Y85.95 E0.33849
; id:1885 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:1886 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1887 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y88.45 E-0.89063
; id:1888 | label: TravelMove | feature: Some(Retraction)
G1 X82.981 Y88.459 E-0.00937
; id:1889 | label: TravelMove | feature: Some(Retraction)
G1 Z9.3 F720
; id:1890 | label: LiftZ | feature: None
G1 Z9.5
; id:1891 | label: LiftZ | feature: None
G1 Z9.7
; id:1892 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:1893 | label: TravelMove | feature: None
G1 Z9.5 F720
; id:1894 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1895 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:1896 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:1897 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:1898 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:1899 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:1900 | label: ExtrusionMove | feature: Some(ShapeEnd)
M73 P52 R5
G1 X98.55 Y98.55 F9000
; id:1901 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:1902 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:1903 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:1904 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:1905 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:1906 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:1907 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:1908 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1909 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:1910 | label: TravelMove | feature: Some(Retraction)
G1 Z9.7 F720
; id:1911 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X83.778 Y97.044 F9000
; id:1912 | label: TravelMove | feature: None
G1 Z9.5 F720
; id:1913 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1914 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:1915 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y97.044 E0.11129
; id:1916 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.956 Y95.366 E0.22719
; id:1917 | label: ExtrusionMove | feature: None
G1 X83.885 Y94.983 E0.13605
; id:1918 | label: ExtrusionMove | feature: None
M73 P53 R5
G1 X84.759 Y94.378 E0.14392
; id:1919 | label: ExtrusionMove | feature: None
G1 X85.632 Y93.464 E0.17113
; id:1920 | label: ExtrusionMove | feature: None
G1 X86.506 Y92.399 E0.18654
; id:1921 | label: ExtrusionMove | feature: None
G1 X86.943 Y91.975 E0.08244
; id:1922 | label: ExtrusionMove | feature: None
G1 X87.379 Y91.682 E0.07112
; id:1923 | label: ExtrusionMove | feature: None
G1 X88.253 Y91.425 E0.12335
; id:1924 | label: ExtrusionMove | feature: None
G1 X89.126 Y91.441 E0.11822
; id:1925 | label: ExtrusionMove | feature: None
G1 X90 Y91.635 E0.12122
; id:1926 | label: ExtrusionMove | feature: None
G1 X90.874 Y92.005 E0.1285
; id:1927 | label: ExtrusionMove | feature: None
G1 X91.747 Y92.611 E0.14389
; id:1928 | label: ExtrusionMove | feature: None
G1 X92.621 Y93.525 E0.17122
; id:1929 | label: ExtrusionMove | feature: None
G1 X93.494 Y94.59 E0.18645
; id:1930 | label: ExtrusionMove | feature: None
G1 X93.931 Y95.014 E0.08244
; id:1931 | label: ExtrusionMove | feature: None
G1 X94.368 Y95.306 E0.07116
; id:1932 | label: ExtrusionMove | feature: None
G1 X95.241 Y95.564 E0.12325
; id:1933 | label: ExtrusionMove | feature: None
G1 X96.115 Y95.548 E0.11836
; id:1934 | label: ExtrusionMove | feature: None
G1 X97.044 Y95.33 E0.1292
; id:1935 | label: ExtrusionMove | feature: None
G1 X97.044 Y88.377 E0.9414
; id:1936 | label: ExtrusionMove | feature: None
G1 X96.115 Y87.995 E0.136
; id:1937 | label: ExtrusionMove | feature: None
G1 X95.241 Y87.389 E0.144
; id:1938 | label: ExtrusionMove | feature: None
G1 X94.368 Y86.476 E0.17103
; id:1939 | label: ExtrusionMove | feature: None
G1 X93.494 Y85.41 E0.18664
; id:1940 | label: ExtrusionMove | feature: None
G1 X93.057 Y84.986 E0.08244
; id:1941 | label: ExtrusionMove | feature: None
G1 X92.621 Y84.694 E0.07105
; id:1942 | label: ExtrusionMove | feature: None
G1 X91.747 Y84.436 E0.12338
; id:1943 | label: ExtrusionMove | feature: None
G1 X90.874 Y84.452 E0.11822
; id:1944 | label: ExtrusionMove | feature: None
G1 X90 Y84.647 E0.12124
; id:1945 | label: ExtrusionMove | feature: None
G1 X89.126 Y85.017 E0.1285
; id:1946 | label: ExtrusionMove | feature: None
G1 X88.253 Y85.622 E0.14381
; id:1947 | label: ExtrusionMove | feature: None
G1 X87.379 Y86.536 E0.17122
; id:1948 | label: ExtrusionMove | feature: None
G1 X86.506 Y87.602 E0.18656
; id:1949 | label: ExtrusionMove | feature: None
G1 X86.069 Y88.025 E0.08235
; id:1950 | label: ExtrusionMove | feature: None
G1 X85.632 Y88.318 E0.07124
; id:1951 | label: ExtrusionMove | feature: None
G1 X84.759 Y88.575 E0.12322
; id:1952 | label: ExtrusionMove | feature: None
G1 X83.885 Y88.559 E0.11836
; id:1953 | label: ExtrusionMove | feature: None
G1 X82.956 Y88.341 E0.1292
; id:1954 | label: ExtrusionMove | feature: None
G1 X82.956 Y85.841 E0.33849
; id:1955 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:1956 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1957 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y88.341 E-0.89063
; id:1958 | label: TravelMove | feature: Some(Retraction)
G1 X82.982 Y88.347 E-0.00937
; id:1959 | label: TravelMove | feature: Some(Retraction)
G1 Z9.7 F720
; id:1960 | label: LiftZ | feature: None
G1 Z9.9
; id:1961 | label: LiftZ | feature: None
G1 Z10.1
; id:1962 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:1963 | label: TravelMove | feature: None
G1 Z9.9 F720
; id:1964 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1965 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:1966 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:1967 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:1968 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:1969 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:1970 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:1971 | label: TravelMove | feature: None
M204 P800
M73 P54 R5
G1 F900
; id:1972 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:1973 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:1974 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:1975 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:1976 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:1977 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:1978 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:1979 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:1980 | label: TravelMove | feature: Some(Retraction)
G1 Z10.1 F720
; id:1981 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X83.697 Y97.044 F9000
; id:1982 | label: TravelMove | feature: None
G1 Z9.9 F720
; id:1983 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:1984 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:1985 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y97.044 E0.10033
; id:1986 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.956 Y95.285 E0.23816
; id:1987 | label: ExtrusionMove | feature: None
G1 X83.885 Y95.027 E0.13054
; id:1988 | label: ExtrusionMove | feature: None
G1 X84.759 Y94.558 E0.1343
; id:1989 | label: ExtrusionMove | feature: None
G1 X85.632 Y93.817 E0.15504
; id:1990 | label: ExtrusionMove | feature: None
G1 X86.506 Y92.891 E0.1724
; id:1991 | label: ExtrusionMove | feature: None
G1 X87.379 Y92.138 E0.15609
; id:1992 | label: ExtrusionMove | feature: None
G1 X88.253 Y91.747 E0.12964
; id:1993 | label: ExtrusionMove | feature: None
G1 X89.126 Y91.632 E0.11922
; id:1994 | label: ExtrusionMove | feature: None
G1 X90 Y91.709 E0.11879
; id:1995 | label: ExtrusionMove | feature: None
G1 X90.874 Y91.962 E0.12319
; id:1996 | label: ExtrusionMove | feature: None
G1 X91.747 Y92.43 E0.13411
; id:1997 | label: ExtrusionMove | feature: None
M73 P55 R5
G1 X92.621 Y93.172 E0.15523
; id:1998 | label: ExtrusionMove | feature: None
G1 X93.494 Y94.098 E0.17231
; id:1999 | label: ExtrusionMove | feature: None
G1 X94.368 Y94.85 E0.15611
; id:2000 | label: ExtrusionMove | feature: None
G1 X95.241 Y95.241 E0.12951
; id:2001 | label: ExtrusionMove | feature: None
G1 X96.115 Y95.357 E0.11937
; id:2002 | label: ExtrusionMove | feature: None
G1 X97.044 Y95.264 E0.12641
; id:2003 | label: ExtrusionMove | feature: None
G1 X97.044 Y88.296 E0.94343
; id:2004 | label: ExtrusionMove | feature: None
G1 X96.115 Y88.038 E0.13054
; id:2005 | label: ExtrusionMove | feature: None
G1 X95.241 Y87.57 E0.13423
; id:2006 | label: ExtrusionMove | feature: None
G1 X94.368 Y86.828 E0.15513
; id:2007 | label: ExtrusionMove | feature: None
G1 X93.494 Y85.902 E0.1724
; id:2008 | label: ExtrusionMove | feature: None
G1 X92.621 Y85.15 E0.15601
; id:2009 | label: ExtrusionMove | feature: None
G1 X91.747 Y84.759 E0.12964
; id:2010 | label: ExtrusionMove | feature: None
G1 X90.874 Y84.643 E0.11924
; id:2011 | label: ExtrusionMove | feature: None
G1 X90 Y84.72 E0.11879
; id:2012 | label: ExtrusionMove | feature: None
G1 X89.126 Y84.973 E0.12319
; id:2013 | label: ExtrusionMove | feature: None
G1 X88.253 Y85.442 E0.13418
; id:2014 | label: ExtrusionMove | feature: None
G1 X87.379 Y86.183 E0.15514
; id:2015 | label: ExtrusionMove | feature: None
G1 X86.506 Y87.109 E0.17231
; id:2016 | label: ExtrusionMove | feature: None
G1 X85.632 Y87.862 E0.1562
; id:2017 | label: ExtrusionMove | feature: None
G1 X84.759 Y88.253 E0.12951
; id:2018 | label: ExtrusionMove | feature: None
G1 X83.885 Y88.369 E0.11937
; id:2019 | label: ExtrusionMove | feature: None
G1 X82.956 Y88.275 E0.12642
; id:2020 | label: ExtrusionMove | feature: None
G1 X82.956 Y85.775 E0.33849
; id:2021 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:2022 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2023 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y88.275 E-0.89063
; id:2024 | label: TravelMove | feature: Some(Retraction)
G1 X82.982 Y88.278 E-0.00937
; id:2025 | label: TravelMove | feature: Some(Retraction)
G1 Z10.1 F720
; id:2026 | label: LiftZ | feature: None
G1 Z10.3
; id:2027 | label: LiftZ | feature: None
G1 Z10.5
; id:2028 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:2029 | label: TravelMove | feature: None
G1 Z10.3 F720
; id:2030 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2031 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:2032 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:2033 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:2034 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:2035 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:2036 | label: ExtrusionMove | feature: Some(ShapeEnd)
M73 P55 R4
G1 X98.55 Y98.55 F9000
; id:2037 | label: TravelMove | feature: None
M204 P800
M73 P56 R4
G1 F900
; id:2038 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:2039 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:2040 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:2041 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:2042 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:2043 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:2044 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2045 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:2046 | label: TravelMove | feature: Some(Retraction)
G1 Z10.5 F720
; id:2047 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X83.655 Y97.044 F9000
; id:2048 | label: TravelMove | feature: None
G1 Z10.3 F720
; id:2049 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2050 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:2051 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y97.044 E0.09464
; id:2052 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.956 Y95.243 E0.24385
; id:2053 | label: ExtrusionMove | feature: None
G1 X83.885 Y95.106 E0.12714
; id:2054 | label: ExtrusionMove | feature: None
G1 X84.759 Y94.761 E0.12722
; id:2055 | label: ExtrusionMove | feature: None
G1 X85.632 Y94.152 E0.14412
; id:2056 | label: ExtrusionMove | feature: None
G1 X86.506 Y93.311 E0.16422
; id:2057 | label: ExtrusionMove | feature: None
G1 X87.379 Y92.521 E0.15941
; id:2058 | label: ExtrusionMove | feature: None
G1 X88.253 Y92.016 E0.13667
; id:2059 | label: ExtrusionMove | feature: None
G1 X89.126 Y91.78 E0.12244
; id:2060 | label: ExtrusionMove | feature: None
G1 X90 Y91.743 E0.11844
; id:2061 | label: ExtrusionMove | feature: None
G1 X90.874 Y91.883 E0.11984
; id:2062 | label: ExtrusionMove | feature: None
G1 X91.747 Y92.227 E0.12705
; id:2063 | label: ExtrusionMove | feature: None
G1 X92.621 Y92.837 E0.14431
; id:2064 | label: ExtrusionMove | feature: None
G1 X93.494 Y93.677 E0.16403
; id:2065 | label: ExtrusionMove | feature: None
G1 X94.368 Y94.468 E0.1596
; id:2066 | label: ExtrusionMove | feature: None
G1 X95.241 Y94.972 E0.13648
; id:2067 | label: ExtrusionMove | feature: None
G1 X96.115 Y95.208 E0.12257
; id:2068 | label: ExtrusionMove | feature: None
G1 X97.044 Y95.236 E0.12584
; id:2069 | label: ExtrusionMove | feature: None
G1 X97.044 Y88.254 E0.94533
; id:2070 | label: ExtrusionMove | feature: None
G1 X96.115 Y88.117 E0.12714
; id:2071 | label: ExtrusionMove | feature: None
M73 P57 R4
G1 X95.241 Y87.773 E0.12717
; id:2072 | label: ExtrusionMove | feature: None
G1 X94.368 Y87.163 E0.1442
; id:2073 | label: ExtrusionMove | feature: None
G1 X93.494 Y86.323 E0.16413
; id:2074 | label: ExtrusionMove | feature: None
G1 X92.621 Y85.532 E0.1595
; id:2075 | label: ExtrusionMove | feature: None
G1 X91.747 Y85.028 E0.1366
; id:2076 | label: ExtrusionMove | feature: None
G1 X90.874 Y84.792 E0.12244
; id:2077 | label: ExtrusionMove | feature: None
G1 X90 Y84.755 E0.11844
; id:2078 | label: ExtrusionMove | feature: None
G1 X89.126 Y84.894 E0.11982
; id:2079 | label: ExtrusionMove | feature: None
G1 X88.253 Y85.239 E0.1271
; id:2080 | label: ExtrusionMove | feature: None
G1 X87.379 Y85.848 E0.14423
; id:2081 | label: ExtrusionMove | feature: None
G1 X86.506 Y86.689 E0.16413
; id:2082 | label: ExtrusionMove | feature: None
G1 X85.632 Y87.479 E0.15951
; id:2083 | label: ExtrusionMove | feature: None
G1 X84.759 Y87.984 E0.13655
; id:2084 | label: ExtrusionMove | feature: None
G1 X83.885 Y88.22 E0.12257
; id:2085 | label: ExtrusionMove | feature: None
G1 X82.956 Y88.248 E0.12584
; id:2086 | label: ExtrusionMove | feature: None
G1 X82.956 Y85.748 E0.33849
; id:2087 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:2088 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2089 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y88.248 E-0.89063
; id:2090 | label: TravelMove | feature: Some(Retraction)
G1 X82.982 Y88.247 E-0.00937
; id:2091 | label: TravelMove | feature: Some(Retraction)
G1 Z10.5 F720
; id:2092 | label: LiftZ | feature: None
G1 Z10.7
; id:2093 | label: LiftZ | feature: None
G1 Z10.9
; id:2094 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:2095 | label: TravelMove | feature: None
G1 Z10.7 F720
; id:2096 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2097 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:2098 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:2099 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:2100 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:2101 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:2102 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:2103 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:2104 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:2105 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:2106 | label: ExtrusionMove | feature: None
M73 P58 R4
G1 X98.55 Y81.45 E2.31526
; id:2107 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:2108 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:2109 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:2110 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2111 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:2112 | label: TravelMove | feature: Some(Retraction)
G1 Z10.9 F720
; id:2113 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X96.343 Y97.044 F9000
; id:2114 | label: TravelMove | feature: None
G1 Z10.7 F720
; id:2115 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2116 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:2117 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y97.044 E0.09491
; id:2118 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X97.044 Y95.245 E0.24358
; id:2119 | label: ExtrusionMove | feature: None
G1 X96.115 Y95.097 E0.12737
; id:2120 | label: ExtrusionMove | feature: None
G1 X95.241 Y94.743 E0.12767
; id:2121 | label: ExtrusionMove | feature: None
G1 X94.368 Y94.123 E0.14498
; id:2122 | label: ExtrusionMove | feature: None
G1 X93.494 Y93.276 E0.16479
; id:2123 | label: ExtrusionMove | feature: None
G1 X92.621 Y92.489 E0.15914
; id:2124 | label: ExtrusionMove | feature: None
G1 X91.747 Y91.994 E0.136
; id:2125 | label: ExtrusionMove | feature: None
G1 X90.874 Y91.769 E0.12206
; id:2126 | label: ExtrusionMove | feature: None
G1 X90 Y91.742 E0.11839
; id:2127 | label: ExtrusionMove | feature: None
G1 X89.126 Y91.891 E0.12004
; id:2128 | label: ExtrusionMove | feature: None
G1 X88.253 Y92.246 E0.1276
; id:2129 | label: ExtrusionMove | feature: None
G1 X87.379 Y92.866 E0.14509
; id:2130 | label: ExtrusionMove | feature: None
G1 X86.506 Y93.713 E0.16469
; id:2131 | label: ExtrusionMove | feature: None
G1 X85.632 Y94.499 E0.15915
; id:2132 | label: ExtrusionMove | feature: None
G1 X84.759 Y94.994 E0.13588
; id:2133 | label: ExtrusionMove | feature: None
G1 X83.885 Y95.22 E0.12223
; id:2134 | label: ExtrusionMove | feature: None
G1 X82.956 Y95.237 E0.1258
; id:2135 | label: ExtrusionMove | feature: None
G1 X82.956 Y88.257 E0.94506
; id:2136 | label: ExtrusionMove | feature: None
G1 X83.885 Y88.109 E0.12737
; id:2137 | label: ExtrusionMove | feature: None
G1 X84.759 Y87.754 E0.12772
; id:2138 | label: ExtrusionMove | feature: None
G1 X85.632 Y87.134 E0.14498
; id:2139 | label: ExtrusionMove | feature: None
G1 X86.506 Y86.287 E0.16479
; id:2140 | label: ExtrusionMove | feature: None
G1 X87.379 Y85.501 E0.15905
; id:2141 | label: ExtrusionMove | feature: None
G1 X88.253 Y85.006 E0.136
; id:2142 | label: ExtrusionMove | feature: None
G1 X89.126 Y84.78 E0.1221
; id:2143 | label: ExtrusionMove | feature: None
G1 X90 Y84.753 E0.11839
; id:2144 | label: ExtrusionMove | feature: None
G1 X90.874 Y84.903 E0.12007
; id:2145 | label: ExtrusionMove | feature: None
G1 X91.747 Y85.257 E0.12755
; id:2146 | label: ExtrusionMove | feature: None
G1 X92.621 Y85.878 E0.14516
; id:2147 | label: ExtrusionMove | feature: None
M73 P59 R4
G1 X93.494 Y86.724 E0.1646
; id:2148 | label: ExtrusionMove | feature: None
G1 X94.368 Y87.511 E0.15924
; id:2149 | label: ExtrusionMove | feature: None
G1 X95.241 Y88.006 E0.13588
; id:2150 | label: ExtrusionMove | feature: None
G1 X96.115 Y88.231 E0.12219
; id:2151 | label: ExtrusionMove | feature: None
G1 X97.044 Y88.249 E0.12581
; id:2152 | label: ExtrusionMove | feature: None
G1 X97.044 Y85.749 E0.33849
; id:2153 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:2154 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2155 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y88.249 E-0.89063
; id:2156 | label: TravelMove | feature: Some(Retraction)
G1 X97.018 Y88.248 E-0.00937
; id:2157 | label: TravelMove | feature: Some(Retraction)
G1 Z10.9 F720
; id:2158 | label: LiftZ | feature: None
G1 Z11.1
; id:2159 | label: LiftZ | feature: None
G1 Z11.3
; id:2160 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:2161 | label: TravelMove | feature: None
G1 Z11.1 F720
; id:2162 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2163 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:2164 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:2165 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:2166 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:2167 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:2168 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:2169 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:2170 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:2171 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:2172 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:2173 | label: ExtrusionMove | feature: None
M73 P60 R4
G1 X98.55 Y98.43 E2.29901
; id:2174 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:2175 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:2176 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2177 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:2178 | label: TravelMove | feature: Some(Retraction)
G1 Z11.3 F720
; id:2179 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X96.297 Y97.044 F9000
; id:2180 | label: TravelMove | feature: None
G1 Z11.1 F720
; id:2181 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2182 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:2183 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y97.044 E0.10114
; id:2184 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X97.044 Y95.29 E0.23748
; id:2185 | label: ExtrusionMove | feature: None
G1 X96.115 Y95.022 E0.13091
; id:2186 | label: ExtrusionMove | feature: None
G1 X95.241 Y94.542 E0.13501
; id:2187 | label: ExtrusionMove | feature: None
G1 X94.368 Y93.787 E0.15627
; id:2188 | label: ExtrusionMove | feature: None
G1 X93.494 Y92.852 E0.17329
; id:2189 | label: ExtrusionMove | feature: None
G1 X92.621 Y92.102 E0.15583
; id:2190 | label: ExtrusionMove | feature: None
G1 X91.747 Y91.721 E0.12909
; id:2191 | label: ExtrusionMove | feature: None
G1 X90.874 Y91.617 E0.11904
; id:2192 | label: ExtrusionMove | feature: None
G1 X90 Y91.704 E0.11892
; id:2193 | label: ExtrusionMove | feature: None
G1 X89.126 Y91.967 E0.12358
; id:2194 | label: ExtrusionMove | feature: None
G1 X88.253 Y92.447 E0.13489
; id:2195 | label: ExtrusionMove | feature: None
G1 X87.379 Y93.201 E0.15629
; id:2196 | label: ExtrusionMove | feature: None
G1 X86.506 Y94.137 E0.1733
; id:2197 | label: ExtrusionMove | feature: None
G1 X85.632 Y94.886 E0.15584
; id:2198 | label: ExtrusionMove | feature: None
G1 X84.759 Y95.267 E0.12897
; id:2199 | label: ExtrusionMove | feature: None
G1 X83.885 Y95.372 E0.11919
; id:2200 | label: ExtrusionMove | feature: None
G1 X82.956 Y95.268 E0.12657
; id:2201 | label: ExtrusionMove | feature: None
G1 X82.956 Y88.302 E0.94316
; id:2202 | label: ExtrusionMove | feature: None
G1 X83.885 Y88.033 E0.13095
; id:2203 | label: ExtrusionMove | feature: None
G1 X84.759 Y87.553 E0.13501
; id:2204 | label: ExtrusionMove | feature: None
G1 X85.632 Y86.799 E0.15618
; id:2205 | label: ExtrusionMove | feature: None
G1 X86.506 Y85.863 E0.17339
; id:2206 | label: ExtrusionMove | feature: None
G1 X87.379 Y85.114 E0.15574
; id:2207 | label: ExtrusionMove | feature: None
G1 X88.253 Y84.733 E0.12909
; id:2208 | label: ExtrusionMove | feature: None
G1 X89.126 Y84.628 E0.11905
; id:2209 | label: ExtrusionMove | feature: None
G1 X90 Y84.715 E0.11892
; id:2210 | label: ExtrusionMove | feature: None
G1 X90.874 Y84.978 E0.12358
; id:2211 | label: ExtrusionMove | feature: None
G1 X91.747 Y85.458 E0.13489
; id:2212 | label: ExtrusionMove | feature: None
G1 X92.621 Y86.213 E0.15637
; id:2213 | label: ExtrusionMove | feature: None
G1 X93.494 Y87.148 E0.1732
; id:2214 | label: ExtrusionMove | feature: None
G1 X94.368 Y87.898 E0.15593
; id:2215 | label: ExtrusionMove | feature: None
G1 X95.241 Y88.279 E0.12897
; id:2216 | label: ExtrusionMove | feature: None
G1 X96.115 Y88.383 E0.11917
; id:2217 | label: ExtrusionMove | feature: None
G1 X97.044 Y88.28 E0.12655
; id:2218 | label: ExtrusionMove | feature: None
G1 X97.044 Y85.78 E0.33849
; id:2219 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:2220 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2221 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y88.28 E-0.89063
; id:2222 | label: TravelMove | feature: Some(Retraction)
G1 X97.018 Y88.283 E-0.00937
; id:2223 | label: TravelMove | feature: Some(Retraction)
G1 Z11.3 F720
; id:2224 | label: LiftZ | feature: None
G1 Z11.5
; id:2225 | label: LiftZ | feature: None
G1 Z11.7
; id:2226 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:2227 | label: TravelMove | feature: None
G1 Z11.5 F720
; id:2228 | label: LowerZ | feature: None
M73 P61 R4
G1 E3 F1200
; id:2229 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:2230 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:2231 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:2232 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:2233 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:2234 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:2235 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:2236 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:2237 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:2238 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:2239 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:2240 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
M73 P62 R4
G1 X97.777 Y98.343 F9000
; id:2241 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:2242 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2243 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:2244 | label: TravelMove | feature: Some(Retraction)
G1 Z11.7 F720
; id:2245 | label: LiftZ | feature: None
G1 X96.213 Y97.044 F9000
; id:2246 | label: TravelMove | feature: None
G1 Z11.5 F720
; id:2247 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2248 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:2249 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y97.044 E0.11251
; id:2250 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X97.044 Y95.375 E0.22597
; id:2251 | label: ExtrusionMove | feature: None
G1 X96.115 Y94.981 E0.13663
; id:2252 | label: ExtrusionMove | feature: None
G1 X95.241 Y94.363 E0.14493
; id:2253 | label: ExtrusionMove | feature: None
G1 X94.368 Y93.431 E0.1729
; id:2254 | label: ExtrusionMove | feature: None
G1 X93.494 Y92.35 E0.18822
; id:2255 | label: ExtrusionMove | feature: None
G1 X93.057 Y91.925 E0.08253
; id:2256 | label: ExtrusionMove | feature: None
G1 X92.621 Y91.637 E0.07075
; id:2257 | label: ExtrusionMove | feature: None
G1 X91.747 Y91.394 E0.12282
; id:2258 | label: ExtrusionMove | feature: None
G1 X90.874 Y91.422 E0.11826
; id:2259 | label: ExtrusionMove | feature: None
G1 X90 Y91.627 E0.12155
; id:2260 | label: ExtrusionMove | feature: None
G1 X89.126 Y92.007 E0.12904
; id:2261 | label: ExtrusionMove | feature: None
G1 X88.253 Y92.625 E0.14482
; id:2262 | label: ExtrusionMove | feature: None
G1 X87.379 Y93.557 E0.17299
; id:2263 | label: ExtrusionMove | feature: None
G1 X86.506 Y94.639 E0.18824
; id:2264 | label: ExtrusionMove | feature: None
G1 X86.069 Y95.063 E0.08244
; id:2265 | label: ExtrusionMove | feature: None
G1 X85.632 Y95.351 E0.07086
; id:2266 | label: ExtrusionMove | feature: None
G1 X84.759 Y95.595 E0.12273
; id:2267 | label: ExtrusionMove | feature: None
G1 X83.885 Y95.567 E0.1184
; id:2268 | label: ExtrusionMove | feature: None
G1 X82.956 Y95.338 E0.12955
; id:2269 | label: ExtrusionMove | feature: None
G1 X82.956 Y88.386 E0.94127
; id:2270 | label: ExtrusionMove | feature: None
G1 X83.885 Y87.993 E0.13657
; id:2271 | label: ExtrusionMove | feature: None
G1 X84.759 Y87.375 E0.14493
; id:2272 | label: ExtrusionMove | feature: None
G1 X85.632 Y86.443 E0.1729
; id:2273 | label: ExtrusionMove | feature: None
G1 X86.506 Y85.361 E0.18832
; id:2274 | label: ExtrusionMove | feature: None
G1 X86.943 Y84.937 E0.08244
; id:2275 | label: ExtrusionMove | feature: None
G1 X87.379 Y84.649 E0.07075
; id:2276 | label: ExtrusionMove | feature: None
G1 X88.253 Y84.405 E0.12286
; id:2277 | label: ExtrusionMove | feature: None
G1 X89.126 Y84.433 E0.11826
; id:2278 | label: ExtrusionMove | feature: None
G1 X90 Y84.638 E0.12155
; id:2279 | label: ExtrusionMove | feature: None
G1 X90.874 Y85.019 E0.12909
; id:2280 | label: ExtrusionMove | feature: None
G1 X91.747 Y85.637 E0.14482
; id:2281 | label: ExtrusionMove | feature: None
G1 X92.621 Y86.569 E0.17299
; id:2282 | label: ExtrusionMove | feature: None
G1 X93.494 Y87.65 E0.18813
; id:2283 | label: ExtrusionMove | feature: None
G1 X93.931 Y88.075 E0.08253
; id:2284 | label: ExtrusionMove | feature: None
G1 X94.368 Y88.363 E0.07086
; id:2285 | label: ExtrusionMove | feature: None
G1 X95.241 Y88.606 E0.12269
; id:2286 | label: ExtrusionMove | feature: None
G1 X96.115 Y88.578 E0.1184
; id:2287 | label: ExtrusionMove | feature: None
G1 X97.044 Y88.349 E0.12955
; id:2288 | label: ExtrusionMove | feature: None
G1 X97.044 Y85.849 E0.33849
; id:2289 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:2290 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2291 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y88.349 E-0.89063
; id:2292 | label: TravelMove | feature: Some(Retraction)
G1 X97.018 Y88.355 E-0.00937
; id:2293 | label: TravelMove | feature: Some(Retraction)
G1 Z11.7 F720
; id:2294 | label: LiftZ | feature: None
G1 Z11.9
; id:2295 | label: LiftZ | feature: None
G1 Z12.1
; id:2296 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:2297 | label: TravelMove | feature: None
G1 Z11.9 F720
; id:2298 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2299 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:2300 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:2301 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:2302 | label: ExtrusionMove | feature: None
M73 P63 R4
G1 X97.736 Y82.264 E2.09483
; id:2303 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:2304 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:2305 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:2306 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:2307 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:2308 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:2309 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:2310 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
M73 P64 R4
G1 X97.777 Y98.343 F9000
; id:2311 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:2312 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2313 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:2314 | label: TravelMove | feature: Some(Retraction)
G1 Z12.1 F720
; id:2315 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X96.084 Y97.044 F9000
; id:2316 | label: TravelMove | feature: None
G1 Z11.9 F720
; id:2317 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2318 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:2319 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y97.044 E0.12998
; id:2320 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X97.044 Y95.503 E0.20864
; id:2321 | label: ExtrusionMove | feature: None
G1 X96.115 Y94.98 E0.14434
; id:2322 | label: ExtrusionMove | feature: None
G1 X95.241 Y94.201 E0.15852
; id:2323 | label: ExtrusionMove | feature: None
G1 X94.805 Y93.659 E0.09418
; id:2324 | label: ExtrusionMove | feature: None
G1 X93.494 Y91.641 E0.32582
; id:2325 | label: ExtrusionMove | feature: None
G1 X93.057 Y91.223 E0.08188
; id:2326 | label: ExtrusionMove | feature: None
G1 X92.621 Y91.025 E0.06483
; id:2327 | label: ExtrusionMove | feature: None
G1 X91.747 Y90.991 E0.11842
; id:2328 | label: ExtrusionMove | feature: None
G1 X90.874 Y91.177 E0.12085
; id:2329 | label: ExtrusionMove | feature: None
G1 X90 Y91.506 E0.12644
; id:2330 | label: ExtrusionMove | feature: None
G1 X89.126 Y92.009 E0.13653
; id:2331 | label: ExtrusionMove | feature: None
G1 X88.253 Y92.788 E0.15842
; id:2332 | label: ExtrusionMove | feature: None
G1 X87.816 Y93.33 E0.09427
; id:2333 | label: ExtrusionMove | feature: None
G1 X86.506 Y95.348 E0.32575
; id:2334 | label: ExtrusionMove | feature: None
G1 X86.069 Y95.766 E0.08188
; id:2335 | label: ExtrusionMove | feature: None
G1 X85.632 Y95.963 E0.0649
; id:2336 | label: ExtrusionMove | feature: None
G1 X84.759 Y95.998 E0.11829
; id:2337 | label: ExtrusionMove | feature: None
G1 X83.885 Y95.812 E0.12099
; id:2338 | label: ExtrusionMove | feature: None
G1 X82.956 Y95.45 E0.13499
; id:2339 | label: ExtrusionMove | feature: None
G1 X82.956 Y88.515 E0.93897
; id:2340 | label: ExtrusionMove | feature: None
G1 X83.885 Y87.991 E0.14441
; id:2341 | label: ExtrusionMove | feature: None
G1 X84.759 Y87.212 E0.15852
; id:2342 | label: ExtrusionMove | feature: None
G1 X85.195 Y86.67 E0.09418
; id:2343 | label: ExtrusionMove | feature: None
G1 X86.506 Y84.652 E0.32582
; id:2344 | label: ExtrusionMove | feature: None
G1 X86.943 Y84.234 E0.08188
; id:2345 | label: ExtrusionMove | feature: None
G1 X87.379 Y84.037 E0.06478
; id:2346 | label: ExtrusionMove | feature: None
G1 X88.253 Y84.002 E0.11843
; id:2347 | label: ExtrusionMove | feature: None
G1 X89.126 Y84.188 E0.12085
; id:2348 | label: ExtrusionMove | feature: None
G1 X90 Y84.518 E0.12649
; id:2349 | label: ExtrusionMove | feature: None
G1 X90.874 Y85.02 E0.13647
; id:2350 | label: ExtrusionMove | feature: None
G1 X91.747 Y85.799 E0.15842
; id:2351 | label: ExtrusionMove | feature: None
G1 X92.184 Y86.341 E0.09427
; id:2352 | label: ExtrusionMove | feature: None
G1 X93.494 Y88.36 E0.32586
; id:2353 | label: ExtrusionMove | feature: None
G1 X93.931 Y88.777 E0.08178
; id:2354 | label: ExtrusionMove | feature: None
G1 X94.368 Y88.975 E0.06496
; id:2355 | label: ExtrusionMove | feature: None
G1 X95.241 Y89.009 E0.11829
; id:2356 | label: ExtrusionMove | feature: None
M73 P64 R3
G1 X96.115 Y88.823 E0.12099
; id:2357 | label: ExtrusionMove | feature: None
G1 X97.044 Y88.462 E0.13495
; id:2358 | label: ExtrusionMove | feature: None
G1 X97.044 Y85.962 E0.33849
; id:2359 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:2360 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2361 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y88.462 E-0.89063
; id:2362 | label: TravelMove | feature: Some(Retraction)
G1 X97.019 Y88.472 E-0.00937
; id:2363 | label: TravelMove | feature: Some(Retraction)
G1 Z12.1 F720
; id:2364 | label: LiftZ | feature: None
G1 Z12.3
; id:2365 | label: LiftZ | feature: None
G1 Z12.5
; id:2366 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:2367 | label: TravelMove | feature: None
G1 Z12.3 F720
; id:2368 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2369 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:2370 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:2371 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:2372 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:2373 | label: ExtrusionMove | feature: None
M73 P65 R3
G1 X97.736 Y97.616 E2.07859
; id:2374 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:2375 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:2376 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:2377 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:2378 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:2379 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:2380 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:2381 | label: TravelMove | feature: None
M73 P66 R3
G1 E-2.1 F2700
; id:2382 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2383 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:2384 | label: TravelMove | feature: Some(Retraction)
G1 Z12.5 F720
; id:2385 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X95.902 Y97.044 F9000
; id:2386 | label: TravelMove | feature: None
G1 Z12.3 F720
; id:2387 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2388 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:2389 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y97.044 E0.15462
; id:2390 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X97.044 Y95.685 E0.184
; id:2391 | label: ExtrusionMove | feature: None
G1 X96.38 Y95.241 E0.10815
; id:2392 | label: ExtrusionMove | feature: None
G1 X95.876 Y94.805 E0.09023
; id:2393 | label: ExtrusionMove | feature: None
G1 X95.48 Y94.368 E0.07985
; id:2394 | label: ExtrusionMove | feature: None
G1 X94.896 Y93.494 E0.14232
; id:2395 | label: ExtrusionMove | feature: None
G1 X94.481 Y92.621 E0.13088
; id:2396 | label: ExtrusionMove | feature: None
G1 X94.171 Y91.747 E0.12556
; id:2397 | label: ExtrusionMove | feature: None
G1 X93.966 Y90.874 E0.12142
; id:2398 | label: ExtrusionMove | feature: None
G1 X93.969 Y90.437 E0.05917
; id:2399 | label: ExtrusionMove | feature: None
G1 X94.277 Y90 E0.07239
; id:2400 | label: ExtrusionMove | feature: None
G1 X95.132 Y89.563 E0.13001
; id:2401 | label: ExtrusionMove | feature: None
G1 X96.116 Y89.126 E0.14578
; id:2402 | label: ExtrusionMove | feature: None
G1 X97.044 Y88.625 E0.14279
; id:2403 | label: ExtrusionMove | feature: None
G1 X97.044 Y86.125 E0.33849
; id:2404 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 E-2.1 F2700
; id:2405 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2406 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y88.625 E-0.89063
; id:2407 | label: TravelMove | feature: Some(Retraction)
G1 X97.021 Y88.637 E-0.00937
; id:2408 | label: TravelMove | feature: Some(Retraction)
G1 Z12.5 F720
; id:2409 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X82.956 Y86.197 F9000
; id:2410 | label: TravelMove | feature: None
G1 Z12.3 F720
; id:2411 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2412 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:2413 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y88.697 E0.33849
; id:2414 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X83.62 Y88.253 E0.10815
; id:2415 | label: ExtrusionMove | feature: None
G1 X84.124 Y87.816 E0.09032
; id:2416 | label: ExtrusionMove | feature: None
G1 X84.52 Y87.379 E0.07985
; id:2417 | label: ExtrusionMove | feature: None
G1 X85.104 Y86.506 E0.14221
; id:2418 | label: ExtrusionMove | feature: None
G1 X85.519 Y85.632 E0.131
; id:2419 | label: ExtrusionMove | feature: None
G1 X85.829 Y84.759 E0.12543
; id:2420 | label: ExtrusionMove | feature: None
G1 X86.035 Y83.885 E0.12158
; id:2421 | label: ExtrusionMove | feature: None
G1 X86.031 Y83.448 E0.05917
; id:2422 | label: ExtrusionMove | feature: None
G1 X85.723 Y83.012 E0.07228
; id:2423 | label: ExtrusionMove | feature: None
G1 X85.615 Y82.956 E0.01647
; id:2424 | label: ExtrusionMove | feature: None
G1 X87.249 Y82.956 E0.22124
; id:2425 | label: ExtrusionMove | feature: None
G1 X87.289 Y83.012 E0.00932
; id:2426 | label: ExtrusionMove | feature: None
G1 X88.144 Y83.448 E0.12995
; id:2427 | label: ExtrusionMove | feature: None
G1 X89.128 Y83.885 E0.14578
; id:2428 | label: ExtrusionMove | feature: None
G1 X89.959 Y84.322 E0.12712
; id:2429 | label: ExtrusionMove | feature: None
G1 X90.608 Y84.759 E0.10593
; id:2430 | label: ExtrusionMove | feature: None
G1 X91.112 Y85.195 E0.09023
; id:2431 | label: ExtrusionMove | feature: None
G1 X91.509 Y85.632 E0.07994
; id:2432 | label: ExtrusionMove | feature: None
G1 X92.093 Y86.506 E0.14232
; id:2433 | label: ExtrusionMove | feature: None
G1 X92.507 Y87.379 E0.13082
; id:2434 | label: ExtrusionMove | feature: None
G1 X92.818 Y88.253 E0.1256
; id:2435 | label: ExtrusionMove | feature: None
G1 X93.023 Y89.126 E0.12142
; id:2436 | label: ExtrusionMove | feature: None
G1 X93.02 Y89.563 E0.05917
; id:2437 | label: ExtrusionMove | feature: None
G1 X92.711 Y90 E0.07246
; id:2438 | label: ExtrusionMove | feature: None
G1 X91.856 Y90.437 E0.13001
; id:2439 | label: ExtrusionMove | feature: None
G1 X90.873 Y90.874 E0.14565
; id:2440 | label: ExtrusionMove | feature: None
G1 X90.041 Y91.31 E0.12718
; id:2441 | label: ExtrusionMove | feature: None
G1 X89.392 Y91.747 E0.10593
; id:2442 | label: ExtrusionMove | feature: None
G1 X88.888 Y92.184 E0.09032
; id:2443 | label: ExtrusionMove | feature: None
G1 X88.491 Y92.621 E0.07994
; id:2444 | label: ExtrusionMove | feature: None
G1 X87.907 Y93.494 E0.14221
; id:2445 | label: ExtrusionMove | feature: None
G1 X87.493 Y94.368 E0.13094
; id:2446 | label: ExtrusionMove | feature: None
G1 X87.182 Y95.241 E0.12548
; id:2447 | label: ExtrusionMove | feature: None
G1 X86.977 Y96.115 E0.12155
; id:2448 | label: ExtrusionMove | feature: None
G1 X86.98 Y96.552 E0.05917
; id:2449 | label: ExtrusionMove | feature: None
G1 X87.289 Y96.988 E0.07235
; id:2450 | label: ExtrusionMove | feature: None
G1 X87.397 Y97.044 E0.01647
; id:2451 | label: ExtrusionMove | feature: None
G1 X85.762 Y97.044 E0.22137
; id:2452 | label: ExtrusionMove | feature: None
G1 X85.723 Y96.988 E0.00924
; id:2453 | label: ExtrusionMove | feature: None
G1 X84.868 Y96.552 E0.12995
; id:2454 | label: ExtrusionMove | feature: None
G1 X83.884 Y96.115 E0.14578
; id:2455 | label: ExtrusionMove | feature: None
G1 X82.956 Y95.613 E0.14285
; id:2456 | label: ExtrusionMove | feature: None
G1 X82.956 Y93.113 E0.33849
; id:2457 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:2458 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2459 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y95.613 E-0.89063
; id:2460 | label: TravelMove | feature: Some(Retraction)
G1 X82.979 Y95.626 E-0.00937
; id:2461 | label: TravelMove | feature: Some(Retraction)
G1 Z12.5 F720
; id:2462 | label: LiftZ | feature: None
G1 Z12.7
; id:2463 | label: LiftZ | feature: None
G1 Z12.9
; id:2464 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:2465 | label: TravelMove | feature: None
G1 Z12.7 F720
; id:2466 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2467 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:2468 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:2469 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:2470 | label: ExtrusionMove | feature: None
M73 P67 R3
G1 X97.736 Y82.264 E2.09483
; id:2471 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:2472 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:2473 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:2474 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:2475 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:2476 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:2477 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:2478 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:2479 | label: TravelMove | feature: None
M73 P68 R3
G1 E-2.1 F2700
; id:2480 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2481 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:2482 | label: TravelMove | feature: Some(Retraction)
G1 Z12.9 F720
; id:2483 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X95.673 Y97.044 F9000
; id:2484 | label: TravelMove | feature: None
G1 Z12.7 F720
; id:2485 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2486 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:2487 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y97.044 E0.18563
; id:2488 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X97.044 Y95.915 E0.15286
; id:2489 | label: ExtrusionMove | feature: None
G1 X96.723 Y95.678 E0.05402
; id:2490 | label: ExtrusionMove | feature: None
G1 X96.226 Y95.241 E0.0896
; id:2491 | label: ExtrusionMove | feature: None
G1 X95.507 Y94.368 E0.15313
; id:2492 | label: ExtrusionMove | feature: None
G1 X95.048 Y93.494 E0.13366
; id:2493 | label: ExtrusionMove | feature: None
G1 X94.763 Y92.621 E0.12434
; id:2494 | label: ExtrusionMove | feature: None
G1 X94.637 Y91.747 E0.11956
; id:2495 | label: ExtrusionMove | feature: None
G1 X94.759 Y90.874 E0.11935
; id:2496 | label: ExtrusionMove | feature: None
G1 X94.999 Y90.437 E0.0675
; id:2497 | label: ExtrusionMove | feature: None
G1 X95.424 Y90 E0.08253
; id:2498 | label: ExtrusionMove | feature: None
G1 X97.044 Y88.845 E0.26938
; id:2499 | label: ExtrusionMove | feature: None
G1 X97.044 Y86.345 E0.33849
; id:2500 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 E-2.1 F2700
; id:2501 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2502 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y88.845 E-0.89063
; id:2503 | label: TravelMove | feature: Some(Retraction)
G1 X97.023 Y88.86 E-0.00937
; id:2504 | label: TravelMove | feature: Some(Retraction)
G1 Z12.9 F720
; id:2505 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X82.956 Y86.426 F9000
; id:2506 | label: TravelMove | feature: None
G1 Z12.7 F720
; id:2507 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2508 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:2509 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y88.926 E0.33849
; id:2510 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X83.277 Y88.69 E0.05394
; id:2511 | label: ExtrusionMove | feature: None
G1 X83.774 Y88.253 E0.0896
; id:2512 | label: ExtrusionMove | feature: None
G1 X84.493 Y87.379 E0.15323
; id:2513 | label: ExtrusionMove | feature: None
G1 X84.952 Y86.506 E0.13354
; id:2514 | label: ExtrusionMove | feature: None
G1 X85.237 Y85.632 E0.12447
; id:2515 | label: ExtrusionMove | feature: None
G1 X85.363 Y84.759 E0.11942
; id:2516 | label: ExtrusionMove | feature: None
G1 X85.241 Y83.885 E0.11948
; id:2517 | label: ExtrusionMove | feature: None
G1 X85.001 Y83.448 E0.0675
; id:2518 | label: ExtrusionMove | feature: None
G1 X84.576 Y83.012 E0.08244
; id:2519 | label: ExtrusionMove | feature: None
G1 X84.497 Y82.956 E0.01311
; id:2520 | label: ExtrusionMove | feature: None
G1 X88.382 Y82.956 E0.52601
; id:2521 | label: ExtrusionMove | feature: None
G1 X88.436 Y83.012 E0.01053
; id:2522 | label: ExtrusionMove | feature: None
G1 X90.266 Y84.322 E0.30471
; id:2523 | label: ExtrusionMove | feature: None
G1 X90.762 Y84.759 E0.0895
; id:2524 | label: ExtrusionMove | feature: None
G1 X91.481 Y85.632 E0.15313
; id:2525 | label: ExtrusionMove | feature: None
G1 X91.94 Y86.506 E0.13366
; id:2526 | label: ExtrusionMove | feature: None
G1 X92.225 Y87.379 E0.12434
; id:2527 | label: ExtrusionMove | feature: None
G1 X92.352 Y88.253 E0.11958
; id:2528 | label: ExtrusionMove | feature: None
G1 X92.23 Y89.126 E0.11935
; id:2529 | label: ExtrusionMove | feature: None
G1 X91.989 Y89.563 E0.06757
; id:2530 | label: ExtrusionMove | feature: None
G1 X91.564 Y90 E0.08253
; id:2531 | label: ExtrusionMove | feature: None
G1 X89.734 Y91.31 E0.30471
; id:2532 | label: ExtrusionMove | feature: None
G1 X89.238 Y91.747 E0.0895
; id:2533 | label: ExtrusionMove | feature: None
G1 X88.519 Y92.621 E0.15323
; id:2534 | label: ExtrusionMove | feature: None
G1 X88.06 Y93.494 E0.13354
; id:2535 | label: ExtrusionMove | feature: None
G1 X87.775 Y94.368 E0.12447
; id:2536 | label: ExtrusionMove | feature: None
G1 X87.648 Y95.241 E0.11944
; id:2537 | label: ExtrusionMove | feature: None
G1 X87.77 Y96.115 E0.11948
; id:2538 | label: ExtrusionMove | feature: None
G1 X88.011 Y96.552 E0.06757
; id:2539 | label: ExtrusionMove | feature: None
G1 X88.436 Y96.988 E0.08244
; id:2540 | label: ExtrusionMove | feature: None
G1 X88.514 Y97.044 E0.013
; id:2541 | label: ExtrusionMove | feature: None
G1 X84.63 Y97.044 E0.52588
; id:2542 | label: ExtrusionMove | feature: None
G1 X84.576 Y96.988 E0.01053
; id:2543 | label: ExtrusionMove | feature: None
G1 X82.956 Y95.833 E0.26938
; id:2544 | label: ExtrusionMove | feature: None
G1 X82.956 Y93.333 E0.33849
; id:2545 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:2546 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2547 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y95.833 E-0.89063
; id:2548 | label: TravelMove | feature: Some(Retraction)
G1 X82.977 Y95.848 E-0.00937
; id:2549 | label: TravelMove | feature: Some(Retraction)
G1 Z12.9 F720
; id:2550 | label: LiftZ | feature: None
G1 Z13.1
; id:2551 | label: LiftZ | feature: None
G1 Z13.3
; id:2552 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:2553 | label: TravelMove | feature: None
G1 Z13.1 F720
; id:2554 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2555 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:2556 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:2557 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:2558 | label: ExtrusionMove | feature: None
M73 P69 R3
G1 X97.736 Y82.264 E2.09483
; id:2559 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:2560 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:2561 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:2562 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:2563 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:2564 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:2565 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:2566 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
M73 P70 R3
G1 X97.777 Y98.343 F9000
; id:2567 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:2568 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2569 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:2570 | label: TravelMove | feature: Some(Retraction)
G1 Z13.3 F720
; id:2571 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X95.368 Y97.044 F9000
; id:2572 | label: TravelMove | feature: None
G1 Z13.1 F720
; id:2573 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2574 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:2575 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y97.044 E0.22692
; id:2576 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X97.044 Y96.219 E0.1117
; id:2577 | label: ExtrusionMove | feature: None
G1 X96.059 Y95.241 E0.18794
; id:2578 | label: ExtrusionMove | feature: None
G1 X95.491 Y94.368 E0.14102
; id:2579 | label: ExtrusionMove | feature: None
G1 X95.153 Y93.494 E0.12688
; id:2580 | label: ExtrusionMove | feature: None
G1 X94.99 Y92.621 E0.12024
; id:2581 | label: ExtrusionMove | feature: None
G1 X95.01 Y91.747 E0.11837
; id:2582 | label: ExtrusionMove | feature: None
G1 X95.307 Y90.874 E0.12485
; id:2583 | label: ExtrusionMove | feature: None
G1 X95.612 Y90.437 E0.07215
; id:2584 | label: ExtrusionMove | feature: None
G1 X96.034 Y90 E0.08225
; id:2585 | label: ExtrusionMove | feature: None
G1 X97.044 Y89.136 E0.17996
; id:2586 | label: ExtrusionMove | feature: None
G1 X97.044 Y86.636 E0.33849
; id:2587 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 E-2.1 F2700
; id:2588 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2589 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y89.136 E-0.89063
; id:2590 | label: TravelMove | feature: Some(Retraction)
G1 X97.024 Y89.153 E-0.00937
; id:2591 | label: TravelMove | feature: Some(Retraction)
G1 Z13.3 F720
; id:2592 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X82.956 Y86.731 F9000
; id:2593 | label: TravelMove | feature: None
G1 Z13.1 F720
; id:2594 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2595 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:2596 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y89.231 E0.33849
; id:2597 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X83.941 Y88.253 E0.18794
; id:2598 | label: ExtrusionMove | feature: None
G1 X84.509 Y87.379 E0.14113
; id:2599 | label: ExtrusionMove | feature: None
G1 X84.847 Y86.506 E0.12675
; id:2600 | label: ExtrusionMove | feature: None
G1 X85.01 Y85.632 E0.12038
; id:2601 | label: ExtrusionMove | feature: None
G1 X84.99 Y84.759 E0.11823
; id:2602 | label: ExtrusionMove | feature: None
G1 X84.693 Y83.885 E0.12498
; id:2603 | label: ExtrusionMove | feature: None
G1 X84.388 Y83.448 E0.07215
; id:2604 | label: ExtrusionMove | feature: None
G1 X83.901 Y82.956 E0.09373
; id:2605 | label: ExtrusionMove | feature: None
G1 X88.992 Y82.956 E0.6893
; id:2606 | label: ExtrusionMove | feature: None
G1 X90.067 Y83.885 E0.19237
; id:2607 | label: ExtrusionMove | feature: None
G1 X90.93 Y84.759 E0.1663
; id:2608 | label: ExtrusionMove | feature: None
G1 X91.497 Y85.632 E0.14094
; id:2609 | label: ExtrusionMove | feature: None
G1 X91.836 Y86.506 E0.12693
; id:2610 | label: ExtrusionMove | feature: None
G1 X91.999 Y87.379 E0.12024
; id:2611 | label: ExtrusionMove | feature: None
G1 X91.978 Y88.253 E0.11837
; id:2612 | label: ExtrusionMove | feature: None
G1 X91.681 Y89.126 E0.12485
; id:2613 | label: ExtrusionMove | feature: None
G1 X91.377 Y89.563 E0.07208
; id:2614 | label: ExtrusionMove | feature: None
G1 X90.954 Y90 E0.08235
; id:2615 | label: ExtrusionMove | feature: None
G1 X89.933 Y90.874 E0.18197
; id:2616 | label: ExtrusionMove | feature: None
G1 X89.07 Y91.747 E0.16621
; id:2617 | label: ExtrusionMove | feature: None
G1 X88.503 Y92.621 E0.14106
; id:2618 | label: ExtrusionMove | feature: None
G1 X88.164 Y93.494 E0.1268
; id:2619 | label: ExtrusionMove | feature: None
G1 X88.001 Y94.368 E0.12038
; id:2620 | label: ExtrusionMove | feature: None
G1 X88.022 Y95.241 E0.11823
; id:2621 | label: ExtrusionMove | feature: None
G1 X88.319 Y96.115 E0.12498
; id:2622 | label: ExtrusionMove | feature: None
G1 X88.624 Y96.552 E0.07215
; id:2623 | label: ExtrusionMove | feature: None
G1 X89.111 Y97.044 E0.09373
; id:2624 | label: ExtrusionMove | feature: None
G1 X84.019 Y97.044 E0.68943
; id:2625 | label: ExtrusionMove | feature: None
G1 X82.956 Y96.125 E0.19025
; id:2626 | label: ExtrusionMove | feature: None
G1 X82.956 Y93.625 E0.33849
; id:2627 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:2628 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2629 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y96.125 E-0.89063
; id:2630 | label: TravelMove | feature: Some(Retraction)
G1 X82.976 Y96.142 E-0.00937
; id:2631 | label: TravelMove | feature: Some(Retraction)
G1 Z13.3 F720
; id:2632 | label: LiftZ | feature: None
G1 Z13.5
; id:2633 | label: LiftZ | feature: None
G1 Z13.7
; id:2634 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:2635 | label: TravelMove | feature: None
G1 Z13.5 F720
; id:2636 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2637 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:2638 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:2639 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:2640 | label: ExtrusionMove | feature: None
M73 P71 R3
G1 X97.736 Y82.264 E2.09483
; id:2641 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:2642 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:2643 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:2644 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:2645 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:2646 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:2647 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:2648 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
M73 P72 R3
G1 X97.777 Y98.343 F9000
; id:2649 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:2650 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2651 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:2652 | label: TravelMove | feature: Some(Retraction)
G1 Z13.7 F720
; id:2653 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X95.019 Y97.044 F9000
; id:2654 | label: TravelMove | feature: None
G1 Z13.5 F720
; id:2655 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2656 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:2657 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y97.044 E0.27418
; id:2658 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X97.044 Y96.568 E0.06445
; id:2659 | label: ExtrusionMove | feature: None
G1 X96.577 Y96.115 E0.08809
; id:2660 | label: ExtrusionMove | feature: None
G1 X95.873 Y95.241 E0.15195
; id:2661 | label: ExtrusionMove | feature: None
G1 X95.438 Y94.368 E0.13206
; id:2662 | label: ExtrusionMove | feature: None
G1 X95.216 Y93.494 E0.12209
; id:2663 | label: ExtrusionMove | feature: None
G1 X95.169 Y92.621 E0.11837
; id:2664 | label: ExtrusionMove | feature: None
G1 X95.317 Y91.747 E0.12002
; id:2665 | label: ExtrusionMove | feature: None
G1 X95.739 Y90.874 E0.13129
; id:2666 | label: ExtrusionMove | feature: None
G1 X96.5 Y90 E0.15691
; id:2667 | label: ExtrusionMove | feature: None
G1 X97.044 Y89.472 E0.10264
; id:2668 | label: ExtrusionMove | feature: None
G1 X97.044 Y86.972 E0.33849
; id:2669 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 E-2.1 F2700
; id:2670 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2671 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y89.472 E-0.89063
; id:2672 | label: TravelMove | feature: Some(Retraction)
G1 X97.025 Y89.49 E-0.00937
; id:2673 | label: TravelMove | feature: Some(Retraction)
G1 Z13.7 F720
; id:2674 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X82.956 Y87.08 F9000
; id:2675 | label: TravelMove | feature: None
G1 Z13.5 F720
; id:2676 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2677 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:2678 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y89.58 E0.33849
; id:2679 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X83.423 Y89.126 E0.08818
; id:2680 | label: ExtrusionMove | feature: None
G1 X84.127 Y88.253 E0.15184
; id:2681 | label: ExtrusionMove | feature: None
G1 X84.562 Y87.379 E0.13218
; id:2682 | label: ExtrusionMove | feature: None
G1 X84.784 Y86.506 E0.12196
; id:2683 | label: ExtrusionMove | feature: None
G1 X84.831 Y85.632 E0.11851
; id:2684 | label: ExtrusionMove | feature: None
G1 X84.683 Y84.759 E0.11989
; id:2685 | label: ExtrusionMove | feature: None
G1 X84.261 Y83.885 E0.13141
; id:2686 | label: ExtrusionMove | feature: None
G1 X83.443 Y82.956 E0.16759
; id:2687 | label: ExtrusionMove | feature: None
G1 X89.464 Y82.956 E0.81521
; id:2688 | label: ExtrusionMove | feature: None
G1 X90.411 Y83.885 E0.17961
; id:2689 | label: ExtrusionMove | feature: None
G1 X91.115 Y84.759 E0.15195
; id:2690 | label: ExtrusionMove | feature: None
G1 X91.55 Y85.632 E0.13206
; id:2691 | label: ExtrusionMove | feature: None
G1 X91.773 Y86.506 E0.12213
; id:2692 | label: ExtrusionMove | feature: None
G1 X91.82 Y87.379 E0.11837
; id:2693 | label: ExtrusionMove | feature: None
G1 X91.672 Y88.253 E0.12002
; id:2694 | label: ExtrusionMove | feature: None
G1 X91.249 Y89.126 E0.13134
; id:2695 | label: ExtrusionMove | feature: None
G1 X90.488 Y90 E0.15691
; id:2696 | label: ExtrusionMove | feature: None
G1 X89.589 Y90.874 E0.16976
; id:2697 | label: ExtrusionMove | feature: None
G1 X88.885 Y91.747 E0.15184
; id:2698 | label: ExtrusionMove | feature: None
G1 X88.45 Y92.621 E0.13218
; id:2699 | label: ExtrusionMove | feature: None
G1 X88.227 Y93.494 E0.122
; id:2700 | label: ExtrusionMove | feature: None
G1 X88.18 Y94.368 E0.11851
; id:2701 | label: ExtrusionMove | feature: None
G1 X88.328 Y95.241 E0.11989
; id:2702 | label: ExtrusionMove | feature: None
G1 X88.751 Y96.115 E0.13147
; id:2703 | label: ExtrusionMove | feature: None
G1 X89.569 Y97.044 E0.16759
; id:2704 | label: ExtrusionMove | feature: None
G1 X83.548 Y97.044 E0.81521
; id:2705 | label: ExtrusionMove | feature: None
G1 X82.956 Y96.461 E0.1125
; id:2706 | label: ExtrusionMove | feature: None
G1 X82.956 Y93.961 E0.33849
; id:2707 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:2708 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2709 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y96.461 E-0.89063
; id:2710 | label: TravelMove | feature: Some(Retraction)
G1 X82.975 Y96.479 E-0.00937
; id:2711 | label: TravelMove | feature: Some(Retraction)
G1 Z13.7 F720
; id:2712 | label: LiftZ | feature: None
G1 Z13.9
; id:2713 | label: LiftZ | feature: None
G1 Z14.1
; id:2714 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:2715 | label: TravelMove | feature: None
G1 Z13.9 F720
; id:2716 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2717 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:2718 | label: FeedrateChangeOnly | feature: None
M73 P73 R3
G1 X82.264 Y97.736 E2.09483
; id:2719 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:2720 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:2721 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:2722 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:2723 | label: TravelMove | feature: None
M204 P800
M73 P73 R2
G1 F900
; id:2724 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:2725 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:2726 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:2727 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:2728 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
M73 P74 R2
G1 X97.777 Y98.343 F9000
; id:2729 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:2730 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2731 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:2732 | label: TravelMove | feature: Some(Retraction)
G1 Z14.1 F720
; id:2733 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.044 Y87.36 F9000
; id:2734 | label: TravelMove | feature: None
G1 Z13.9 F720
; id:2735 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2736 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:2737 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y89.86 E0.33849
; id:2738 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X96.109 Y90.874 E0.18675
; id:2739 | label: ExtrusionMove | feature: None
G1 X95.574 Y91.747 E0.13863
; id:2740 | label: ExtrusionMove | feature: None
G1 X95.307 Y92.621 E0.12373
; id:2741 | label: ExtrusionMove | feature: None
G1 X95.241 Y93.494 E0.11854
; id:2742 | label: ExtrusionMove | feature: None
G1 X95.35 Y94.368 E0.11925
; id:2743 | label: ExtrusionMove | feature: None
G1 X95.663 Y95.241 E0.12557
; id:2744 | label: ExtrusionMove | feature: None
G1 X96.241 Y96.115 E0.14187
; id:2745 | label: ExtrusionMove | feature: None
G1 X97.044 Y96.966 E0.15842
; id:2746 | label: ExtrusionMove | feature: None
G1 X97.044 Y97.044 E0.01056
; id:2747 | label: ExtrusionMove | feature: None
G1 X89.975 Y97.044 E0.95711
; id:2748 | label: ExtrusionMove | feature: None
G1 X89.12 Y96.115 E0.17095
; id:2749 | label: ExtrusionMove | feature: None
G1 X88.586 Y95.241 E0.13867
; id:2750 | label: ExtrusionMove | feature: None
G1 X88.319 Y94.368 E0.1236
; id:2751 | label: ExtrusionMove | feature: None
G1 X88.252 Y93.494 E0.11868
; id:2752 | label: ExtrusionMove | feature: None
G1 X88.362 Y92.621 E0.11913
; id:2753 | label: ExtrusionMove | feature: None
G1 X88.675 Y91.747 E0.12569
; id:2754 | label: ExtrusionMove | feature: None
G1 X89.253 Y90.874 E0.14176
; id:2755 | label: ExtrusionMove | feature: None
G1 X90.88 Y89.126 E0.32333
; id:2756 | label: ExtrusionMove | feature: None
G1 X91.414 Y88.253 E0.13856
; id:2757 | label: ExtrusionMove | feature: None
G1 X91.681 Y87.379 E0.12373
; id:2758 | label: ExtrusionMove | feature: None
G1 X91.748 Y86.506 E0.11855
; id:2759 | label: ExtrusionMove | feature: None
G1 X91.638 Y85.632 E0.11927
; id:2760 | label: ExtrusionMove | feature: None
G1 X91.325 Y84.759 E0.12557
; id:2761 | label: ExtrusionMove | feature: None
G1 X90.747 Y83.885 E0.14187
; id:2762 | label: ExtrusionMove | feature: None
G1 X89.872 Y82.956 E0.17279
; id:2763 | label: ExtrusionMove | feature: None
G1 X83.036 Y82.956 E0.92556
; id:2764 | label: ExtrusionMove | feature: None
G1 X83.891 Y83.885 E0.17095
; id:2765 | label: ExtrusionMove | feature: None
G1 X84.426 Y84.759 E0.13875
; id:2766 | label: ExtrusionMove | feature: None
G1 X84.693 Y85.632 E0.1236
; id:2767 | label: ExtrusionMove | feature: None
G1 X84.759 Y86.506 E0.11867
; id:2768 | label: ExtrusionMove | feature: None
G1 X84.65 Y87.379 E0.11912
; id:2769 | label: ExtrusionMove | feature: None
G1 X84.337 Y88.253 E0.12569
; id:2770 | label: ExtrusionMove | feature: None
G1 X83.759 Y89.126 E0.14176
; id:2771 | label: ExtrusionMove | feature: None
G1 X82.956 Y89.977 E0.15842
; id:2772 | label: ExtrusionMove | feature: None
G1 X82.956 Y92.477 E0.33849
; id:2773 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:2774 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2775 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y89.977 E-0.89063
; id:2776 | label: TravelMove | feature: Some(Retraction)
G1 X82.974 Y89.958 E-0.00937
; id:2777 | label: TravelMove | feature: Some(Retraction)
G1 Z14.1 F720
; id:2778 | label: LiftZ | feature: None
G1 Z14.3
; id:2779 | label: LiftZ | feature: None
G1 Z14.5
; id:2780 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:2781 | label: TravelMove | feature: None
G1 Z14.3 F720
; id:2782 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2783 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:2784 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:2785 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:2786 | label: ExtrusionMove | feature: None
M73 P75 R2
G1 X97.736 Y82.264 E2.09483
; id:2787 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:2788 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:2789 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:2790 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:2791 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:2792 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:2793 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:2794 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
M73 P76 R2
G1 X97.777 Y98.343 F9000
; id:2795 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:2796 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2797 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:2798 | label: TravelMove | feature: Some(Retraction)
G1 Z14.5 F720
; id:2799 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.044 Y87.774 F9000
; id:2800 | label: TravelMove | feature: None
G1 Z14.3 F720
; id:2801 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2802 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:2803 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y90.274 E0.33849
; id:2804 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X96.449 Y90.874 E0.11441
; id:2805 | label: ExtrusionMove | feature: None
G1 X95.796 Y91.747 E0.14761
; id:2806 | label: ExtrusionMove | feature: None
G1 X95.409 Y92.621 E0.12942
; id:2807 | label: ExtrusionMove | feature: None
G1 X95.23 Y93.494 E0.12066
; id:2808 | label: ExtrusionMove | feature: None
G1 X95.226 Y94.368 E0.11834
; id:2809 | label: ExtrusionMove | feature: None
G1 X95.421 Y95.241 E0.12111
; id:2810 | label: ExtrusionMove | feature: None
G1 X95.886 Y96.115 E0.13404
; id:2811 | label: ExtrusionMove | feature: None
G1 X96.717 Y97.044 E0.16876
; id:2812 | label: ExtrusionMove | feature: None
G1 X90.376 Y97.044 E0.85854
; id:2813 | label: ExtrusionMove | feature: None
G1 X89.46 Y96.115 E0.17664
; id:2814 | label: ExtrusionMove | feature: None
G1 X88.807 Y95.241 E0.14772
; id:2815 | label: ExtrusionMove | feature: None
G1 X88.42 Y94.368 E0.12929
; id:2816 | label: ExtrusionMove | feature: None
G1 X88.241 Y93.494 E0.12079
; id:2817 | label: ExtrusionMove | feature: None
G1 X88.238 Y92.621 E0.1182
; id:2818 | label: ExtrusionMove | feature: None
G1 X88.432 Y91.747 E0.12122
; id:2819 | label: ExtrusionMove | feature: None
G1 X88.898 Y90.874 E0.13399
; id:2820 | label: ExtrusionMove | feature: None
G1 X89.673 Y90 E0.15816
; id:2821 | label: ExtrusionMove | feature: None
G1 X90.54 Y89.126 E0.16668
; id:2822 | label: ExtrusionMove | feature: None
G1 X91.193 Y88.253 E0.14761
; id:2823 | label: ExtrusionMove | feature: None
G1 X91.58 Y87.379 E0.12942
; id:2824 | label: ExtrusionMove | feature: None
G1 X91.759 Y86.506 E0.12066
; id:2825 | label: ExtrusionMove | feature: None
G1 X91.762 Y85.632 E0.11834
; id:2826 | label: ExtrusionMove | feature: None
G1 X91.568 Y84.759 E0.12108
; id:2827 | label: ExtrusionMove | feature: None
G1 X91.102 Y83.885 E0.13411
; id:2828 | label: ExtrusionMove | feature: None
G1 X90.272 Y82.956 E0.16867
; id:2829 | label: ExtrusionMove | feature: None
G1 X82.956 Y82.956 E0.99055
; id:2830 | label: ExtrusionMove | feature: None
G1 X82.956 Y83.285 E0.04455
; id:2831 | label: ExtrusionMove | feature: None
G1 X83.551 Y83.885 E0.11441
; id:2832 | label: ExtrusionMove | feature: None
G1 X84.204 Y84.759 E0.14772
; id:2833 | label: ExtrusionMove | feature: None
G1 X84.591 Y85.632 E0.12929
; id:2834 | label: ExtrusionMove | feature: None
G1 X84.77 Y86.506 E0.12079
; id:2835 | label: ExtrusionMove | feature: None
G1 X84.774 Y87.379 E0.1182
; id:2836 | label: ExtrusionMove | feature: None
G1 X84.579 Y88.253 E0.12124
; id:2837 | label: ExtrusionMove | feature: None
G1 X84.114 Y89.126 E0.13392
; id:2838 | label: ExtrusionMove | feature: None
G1 X83.338 Y90 E0.15825
; id:2839 | label: ExtrusionMove | feature: None
G1 X82.956 Y90.385 E0.07343
; id:2840 | label: ExtrusionMove | feature: None
G1 X82.956 Y92.885 E0.33849
; id:2841 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:2842 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2843 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y90.385 E-0.89063
; id:2844 | label: TravelMove | feature: Some(Retraction)
G1 X82.975 Y90.366 E-0.00937
; id:2845 | label: TravelMove | feature: Some(Retraction)
G1 Z14.5 F720
; id:2846 | label: LiftZ | feature: None
G1 Z14.7
; id:2847 | label: LiftZ | feature: None
G1 Z14.9
; id:2848 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:2849 | label: TravelMove | feature: None
G1 Z14.7 F720
; id:2850 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2851 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:2852 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:2853 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:2854 | label: ExtrusionMove | feature: None
M73 P77 R2
G1 X97.736 Y82.264 E2.09483
; id:2855 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:2856 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:2857 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:2858 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:2859 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:2860 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:2861 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:2862 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
M73 P78 R2
G1 X97.777 Y98.343 F9000
; id:2863 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:2864 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2865 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:2866 | label: TravelMove | feature: Some(Retraction)
G1 Z14.9 F720
; id:2867 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.044 Y93.141 F9000
; id:2868 | label: TravelMove | feature: None
G1 Z14.7 F720
; id:2869 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2870 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:2871 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y90.641 E0.33849
; id:2872 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X96.786 Y90.874 E0.04707
; id:2873 | label: ExtrusionMove | feature: None
G1 X95.99 Y91.747 E0.15996
; id:2874 | label: ExtrusionMove | feature: None
G1 X95.475 Y92.621 E0.13735
; id:2875 | label: ExtrusionMove | feature: None
G1 X95.181 Y93.494 E0.12472
; id:2876 | label: ExtrusionMove | feature: None
G1 X95.064 Y94.368 E0.11939
; id:2877 | label: ExtrusionMove | feature: None
G1 X95.135 Y95.241 E0.11859
; id:2878 | label: ExtrusionMove | feature: None
G1 X95.483 Y96.115 E0.12737
; id:2879 | label: ExtrusionMove | feature: None
G1 X95.803 Y96.552 E0.07333
; id:2880 | label: ExtrusionMove | feature: None
G1 X96.285 Y97.044 E0.09325
; id:2881 | label: ExtrusionMove | feature: None
G1 X90.818 Y97.044 E0.74021
; id:2882 | label: ExtrusionMove | feature: None
G1 X89.798 Y96.115 E0.1868
; id:2883 | label: ExtrusionMove | feature: None
G1 X89.002 Y95.241 E0.16006
; id:2884 | label: ExtrusionMove | feature: None
G1 X88.487 Y94.368 E0.13723
; id:2885 | label: ExtrusionMove | feature: None
G1 X88.193 Y93.494 E0.12485
; id:2886 | label: ExtrusionMove | feature: None
G1 X88.075 Y92.621 E0.11927
; id:2887 | label: ExtrusionMove | feature: None
G1 X88.146 Y91.747 E0.11873
; id:2888 | label: ExtrusionMove | feature: None
G1 X88.495 Y90.874 E0.1273
; id:2889 | label: ExtrusionMove | feature: None
G1 X88.815 Y90.437 E0.07333
; id:2890 | label: ExtrusionMove | feature: None
G1 X89.235 Y90 E0.08206
; id:2891 | label: ExtrusionMove | feature: None
G1 X90.202 Y89.126 E0.17648
; id:2892 | label: ExtrusionMove | feature: None
G1 X90.998 Y88.253 E0.15996
; id:2893 | label: ExtrusionMove | feature: None
G1 X91.513 Y87.379 E0.13735
; id:2894 | label: ExtrusionMove | feature: None
G1 X91.807 Y86.506 E0.12472
; id:2895 | label: ExtrusionMove | feature: None
G1 X91.925 Y85.632 E0.11941
; id:2896 | label: ExtrusionMove | feature: None
G1 X91.854 Y84.759 E0.11859
; id:2897 | label: ExtrusionMove | feature: None
G1 X91.505 Y83.885 E0.12742
; id:2898 | label: ExtrusionMove | feature: None
G1 X91.185 Y83.448 E0.07333
; id:2899 | label: ExtrusionMove | feature: None
G1 X90.703 Y82.956 E0.09325
; id:2900 | label: ExtrusionMove | feature: None
G1 X96.17 Y82.956 E0.74021
; id:2901 | label: ExtrusionMove | feature: None
G1 X97.044 Y83.753 E0.16015
; id:2902 | label: ExtrusionMove | feature: None
G1 X97.044 Y86.253 E0.33849
; id:2903 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 E-2.1 F2700
; id:2904 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2905 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y83.753 E-0.89063
; id:2906 | label: TravelMove | feature: Some(Retraction)
G1 X97.025 Y83.735 E-0.00937
; id:2907 | label: TravelMove | feature: Some(Retraction)
G1 Z14.9 F720
; id:2908 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X84.76 Y82.956 F9000
; id:2909 | label: TravelMove | feature: None
G1 Z14.7 F720
; id:2910 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2911 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:2912 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y82.956 E0.24425
; id:2913 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.956 Y83.652 E0.09424
; id:2914 | label: ExtrusionMove | feature: None
G1 X83.214 Y83.885 E0.04707
; id:2915 | label: ExtrusionMove | feature: None
G1 X84.01 Y84.759 E0.16006
; id:2916 | label: ExtrusionMove | feature: None
G1 X84.525 Y85.632 E0.13723
; id:2917 | label: ExtrusionMove | feature: None
G1 X84.819 Y86.506 E0.12485
; id:2918 | label: ExtrusionMove | feature: None
G1 X84.936 Y87.379 E0.11926
; id:2919 | label: ExtrusionMove | feature: None
G1 X84.865 Y88.253 E0.11873
; id:2920 | label: ExtrusionMove | feature: None
G1 X84.517 Y89.126 E0.12725
; id:2921 | label: ExtrusionMove | feature: None
G1 X84.197 Y89.563 E0.07333
; id:2922 | label: ExtrusionMove | feature: None
G1 X83.776 Y90 E0.08216
; id:2923 | label: ExtrusionMove | feature: None
G1 X82.956 Y90.741 E0.14964
; id:2924 | label: ExtrusionMove | feature: None
G1 X82.956 Y93.241 E0.33849
; id:2925 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:2926 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2927 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y90.741 E-0.89063
; id:2928 | label: TravelMove | feature: Some(Retraction)
G1 X82.976 Y90.723 E-0.00937
; id:2929 | label: TravelMove | feature: Some(Retraction)
G1 Z14.9 F720
; id:2930 | label: LiftZ | feature: None
G1 Z15.1
; id:2931 | label: LiftZ | feature: None
G1 Z15.3
; id:2932 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:2933 | label: TravelMove | feature: None
G1 Z15.1 F720
; id:2934 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2935 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:2936 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:2937 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:2938 | label: ExtrusionMove | feature: None
M73 P79 R2
G1 X97.736 Y82.264 E2.09483
; id:2939 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:2940 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:2941 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:2942 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:2943 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:2944 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:2945 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:2946 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
M73 P80 R2
G1 X97.777 Y98.343 F9000
; id:2947 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:2948 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2949 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:2950 | label: TravelMove | feature: Some(Retraction)
G1 Z15.3 F720
; id:2951 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.044 Y93.471 F9000
; id:2952 | label: TravelMove | feature: None
G1 Z15.1 F720
; id:2953 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2954 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:2955 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y90.971 E0.33849
; id:2956 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X96.164 Y91.747 E0.15886
; id:2957 | label: ExtrusionMove | feature: None
G1 X95.506 Y92.621 E0.14812
; id:2958 | label: ExtrusionMove | feature: None
G1 X95.093 Y93.494 E0.13076
; id:2959 | label: ExtrusionMove | feature: None
G1 X94.856 Y94.368 E0.12261
; id:2960 | label: ExtrusionMove | feature: None
G1 X94.79 Y95.241 E0.11854
; id:2961 | label: ExtrusionMove | feature: None
G1 X94.988 Y96.115 E0.12133
; id:2962 | label: ExtrusionMove | feature: None
G1 X95.26 Y96.552 E0.06969
; id:2963 | label: ExtrusionMove | feature: None
G1 X95.758 Y97.044 E0.09478
; id:2964 | label: ExtrusionMove | feature: None
G1 X91.357 Y97.044 E0.59587
; id:2965 | label: ExtrusionMove | feature: None
G1 X90.166 Y96.115 E0.20451
; id:2966 | label: ExtrusionMove | feature: None
G1 X89.175 Y95.241 E0.1789
; id:2967 | label: ExtrusionMove | feature: None
G1 X88.517 Y94.368 E0.14801
; id:2968 | label: ExtrusionMove | feature: None
G1 X88.105 Y93.494 E0.13082
; id:2969 | label: ExtrusionMove | feature: None
G1 X87.868 Y92.621 E0.12248
; id:2970 | label: ExtrusionMove | feature: None
G1 X87.801 Y91.747 E0.11868
; id:2971 | label: ExtrusionMove | feature: None
G1 X88 Y90.874 E0.12123
; id:2972 | label: ExtrusionMove | feature: None
G1 X88.272 Y90.437 E0.06969
; id:2973 | label: ExtrusionMove | feature: None
G1 X88.697 Y90 E0.08253
; id:2974 | label: ExtrusionMove | feature: None
G1 X89.834 Y89.126 E0.19417
; id:2975 | label: ExtrusionMove | feature: None
G1 X90.825 Y88.253 E0.17881
; id:2976 | label: ExtrusionMove | feature: None
G1 X91.483 Y87.379 E0.14812
; id:2977 | label: ExtrusionMove | feature: None
G1 X91.895 Y86.506 E0.1307
; id:2978 | label: ExtrusionMove | feature: None
G1 X92.132 Y85.632 E0.12261
; id:2979 | label: ExtrusionMove | feature: None
G1 X92.199 Y84.759 E0.11855
; id:2980 | label: ExtrusionMove | feature: None
G1 X92 Y83.885 E0.12136
; id:2981 | label: ExtrusionMove | feature: None
G1 X91.728 Y83.448 E0.06969
; id:2982 | label: ExtrusionMove | feature: None
G1 X91.231 Y82.956 E0.09469
; id:2983 | label: ExtrusionMove | feature: None
G1 X95.632 Y82.956 E0.59587
; id:2984 | label: ExtrusionMove | feature: None
G1 X96.822 Y83.885 E0.2044
; id:2985 | label: ExtrusionMove | feature: None
G1 X97.044 Y84.08 E0.04001
; id:2986 | label: ExtrusionMove | feature: None
G1 X97.044 Y86.58 E0.33849
; id:2987 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 E-2.1 F2700
; id:2988 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:2989 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y84.08 E-0.89063
; id:2990 | label: TravelMove | feature: Some(Retraction)
G1 X97.024 Y84.063 E-0.00937
; id:2991 | label: TravelMove | feature: Some(Retraction)
G1 Z15.3 F720
; id:2992 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X84.43 Y82.956 F9000
; id:2993 | label: TravelMove | feature: None
G1 Z15.1 F720
; id:2994 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:2995 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:2996 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y82.956 E0.19957
; id:2997 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.956 Y83.983 E0.13905
; id:2998 | label: ExtrusionMove | feature: None
G1 X83.836 Y84.759 E0.15886
; id:2999 | label: ExtrusionMove | feature: None
G1 X84.494 Y85.632 E0.14801
; id:3000 | label: ExtrusionMove | feature: None
G1 X84.907 Y86.506 E0.13088
; id:3001 | label: ExtrusionMove | feature: None
G1 X85.144 Y87.379 E0.12248
; id:3002 | label: ExtrusionMove | feature: None
G1 X85.21 Y88.253 E0.11867
; id:3003 | label: ExtrusionMove | feature: None
G1 X85.012 Y89.126 E0.1212
; id:3004 | label: ExtrusionMove | feature: None
G1 X84.74 Y89.563 E0.06969
; id:3005 | label: ExtrusionMove | feature: None
G1 X84.314 Y90 E0.08263
; id:3006 | label: ExtrusionMove | feature: None
G1 X83.178 Y90.874 E0.19406
; id:3007 | label: ExtrusionMove | feature: None
G1 X82.956 Y91.069 E0.04001
; id:3008 | label: ExtrusionMove | feature: None
G1 X82.956 Y93.569 E0.33849
; id:3009 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:3010 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:3011 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y91.069 E-0.89063
; id:3012 | label: TravelMove | feature: Some(Retraction)
G1 X82.976 Y91.052 E-0.00937
; id:3013 | label: TravelMove | feature: Some(Retraction)
G1 Z15.3 F720
; id:3014 | label: LiftZ | feature: None
G1 Z15.5
; id:3015 | label: LiftZ | feature: None
G1 Z15.7
; id:3016 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:3017 | label: TravelMove | feature: None
G1 Z15.5 F720
; id:3018 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:3019 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:3020 | label: FeedrateChangeOnly | feature: None
M73 P81 R2
G1 X82.264 Y97.736 E2.09483
; id:3021 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:3022 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:3023 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:3024 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:3025 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:3026 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:3027 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:3028 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:3029 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:3030 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
M73 P82 R2
G1 X97.777 Y98.343 F9000
; id:3031 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:3032 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:3033 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:3034 | label: TravelMove | feature: Some(Retraction)
G1 Z15.7 F720
; id:3035 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.044 Y93.725 F9000
; id:3036 | label: TravelMove | feature: None
G1 Z15.5 F720
; id:3037 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:3038 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:3039 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y91.225 E0.33849
; id:3040 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X96.904 Y91.31 E0.02218
; id:3041 | label: ExtrusionMove | feature: None
M73 P82 R1
G1 X96.322 Y91.747 E0.09854
; id:3042 | label: ExtrusionMove | feature: None
G1 X95.862 Y92.184 E0.08591
; id:3043 | label: ExtrusionMove | feature: None
G1 X95.496 Y92.621 E0.07718
; id:3044 | label: ExtrusionMove | feature: None
G1 X94.96 Y93.494 E0.1387
; id:3045 | label: ExtrusionMove | feature: None
G1 X94.597 Y94.368 E0.12814
; id:3046 | label: ExtrusionMove | feature: None
G1 X94.363 Y95.241 E0.12237
; id:3047 | label: ExtrusionMove | feature: None
G1 X94.315 Y96.115 E0.11851
; id:3048 | label: ExtrusionMove | feature: None
G1 X94.461 Y96.552 E0.06238
; id:3049 | label: ExtrusionMove | feature: None
G1 X94.863 Y96.988 E0.0803
; id:3050 | label: ExtrusionMove | feature: None
G1 X94.951 Y97.044 E0.01412
; id:3051 | label: ExtrusionMove | feature: None
G1 X92.176 Y97.044 E0.37572
; id:3052 | label: ExtrusionMove | feature: None
G1 X92.125 Y96.988 E0.01026
; id:3053 | label: ExtrusionMove | feature: None
G1 X91.429 Y96.552 E0.1112
; id:3054 | label: ExtrusionMove | feature: None
G1 X90.632 Y96.115 E0.12307
; id:3055 | label: ExtrusionMove | feature: None
G1 X89.916 Y95.678 E0.11357
; id:3056 | label: ExtrusionMove | feature: None
G1 X89.334 Y95.241 E0.09854
; id:3057 | label: ExtrusionMove | feature: None
G1 X88.873 Y94.805 E0.08591
; id:3058 | label: ExtrusionMove | feature: None
G1 X88.508 Y94.368 E0.07709
; id:3059 | label: ExtrusionMove | feature: None
G1 X87.972 Y93.494 E0.13882
; id:3060 | label: ExtrusionMove | feature: None
G1 X87.608 Y92.621 E0.12806
; id:3061 | label: ExtrusionMove | feature: None
G1 X87.374 Y91.747 E0.1225
; id:3062 | label: ExtrusionMove | feature: None
G1 X87.327 Y90.874 E0.11837
; id:3063 | label: ExtrusionMove | feature: None
G1 X87.473 Y90.437 E0.06238
; id:3064 | label: ExtrusionMove | feature: None
G1 X87.875 Y90 E0.08039
; id:3065 | label: ExtrusionMove | feature: None
G1 X88.571 Y89.563 E0.11127
; id:3066 | label: ExtrusionMove | feature: None
G1 X89.368 Y89.126 E0.12307
; id:3067 | label: ExtrusionMove | feature: None
G1 X90.084 Y88.69 E0.1135
; id:3068 | label: ExtrusionMove | feature: None
G1 X90.666 Y88.253 E0.09854
; id:3069 | label: ExtrusionMove | feature: None
G1 X91.127 Y87.816 E0.086
; id:3070 | label: ExtrusionMove | feature: None
G1 X91.493 Y87.379 E0.07718
; id:3071 | label: ExtrusionMove | feature: None
G1 X92.028 Y86.506 E0.13863
; id:3072 | label: ExtrusionMove | feature: None
G1 X92.392 Y85.632 E0.12819
; id:3073 | label: ExtrusionMove | feature: None
G1 X92.626 Y84.759 E0.12237
; id:3074 | label: ExtrusionMove | feature: None
G1 X92.673 Y83.885 E0.11851
; id:3075 | label: ExtrusionMove | feature: None
G1 X92.527 Y83.448 E0.06238
; id:3076 | label: ExtrusionMove | feature: None
G1 X92.125 Y83.012 E0.0803
; id:3077 | label: ExtrusionMove | feature: None
G1 X92.037 Y82.956 E0.01412
; id:3078 | label: ExtrusionMove | feature: None
G1 X94.812 Y82.956 E0.37572
; id:3079 | label: ExtrusionMove | feature: None
G1 X94.863 Y83.012 E0.01026
; id:3080 | label: ExtrusionMove | feature: None
G1 X95.559 Y83.448 E0.1112
; id:3081 | label: ExtrusionMove | feature: None
G1 X96.357 Y83.885 E0.12319
; id:3082 | label: ExtrusionMove | feature: None
G1 X97.044 Y84.304 E0.10895
; id:3083 | label: ExtrusionMove | feature: None
G1 X97.044 Y86.804 E0.33849
; id:3084 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 E-2.1 F2700
; id:3085 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:3086 | label: FeedrateChangeOnly | feature: None
G1 X97.044 Y84.304 E-0.89063
; id:3087 | label: TravelMove | feature: Some(Retraction)
G1 X97.022 Y84.29 E-0.00937
; id:3088 | label: TravelMove | feature: Some(Retraction)
G1 Z15.7 F720
; id:3089 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X84.176 Y82.956 F9000
; id:3090 | label: TravelMove | feature: None
G1 Z15.5 F720
; id:3091 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:3092 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:3093 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y82.956 E0.16518
; id:3094 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.956 Y84.237 E0.17344
; id:3095 | label: ExtrusionMove | feature: None
G1 X83.096 Y84.322 E0.02218
; id:3096 | label: ExtrusionMove | feature: None
G1 X83.678 Y84.759 E0.09854
; id:3097 | label: ExtrusionMove | feature: None
G1 X84.138 Y85.195 E0.08581
; id:3098 | label: ExtrusionMove | feature: None
G1 X84.504 Y85.632 E0.07718
; id:3099 | label: ExtrusionMove | feature: None
G1 X85.04 Y86.506 E0.13882
; id:3100 | label: ExtrusionMove | feature: None
G1 X85.403 Y87.379 E0.12801
; id:3101 | label: ExtrusionMove | feature: None
G1 X85.637 Y88.253 E0.1225
; id:3102 | label: ExtrusionMove | feature: None
G1 X85.685 Y89.126 E0.11838
; id:3103 | label: ExtrusionMove | feature: None
G1 X85.539 Y89.563 E0.06238
; id:3104 | label: ExtrusionMove | feature: None
G1 X85.137 Y90 E0.08039
; id:3105 | label: ExtrusionMove | feature: None
G1 X84.441 Y90.437 E0.11127
; id:3106 | label: ExtrusionMove | feature: None
G1 X83.643 Y90.874 E0.12319
; id:3107 | label: ExtrusionMove | feature: None
G1 X82.956 Y91.293 E0.10895
; id:3108 | label: ExtrusionMove | feature: None
G1 X82.956 Y93.793 E0.33849
; id:3109 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:3110 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:3111 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y91.293 E-0.89063
; id:3112 | label: TravelMove | feature: Some(Retraction)
G1 X82.978 Y91.279 E-0.00937
; id:3113 | label: TravelMove | feature: Some(Retraction)
G1 Z15.7 F720
; id:3114 | label: LiftZ | feature: None
M73 P83 R1
G1 Z15.9
; id:3115 | label: LiftZ | feature: None
G1 Z16.1
; id:3116 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:3117 | label: TravelMove | feature: None
G1 Z15.9 F720
; id:3118 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:3119 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:3120 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:3121 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:3122 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:3123 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:3124 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:3125 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:3126 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:3127 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:3128 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:3129 | label: ExtrusionMove | feature: None
M73 P84 R1
G1 X98.55 Y98.43 E2.29901
; id:3130 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:3131 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:3132 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:3133 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:3134 | label: TravelMove | feature: Some(Retraction)
G1 Z16.1 F720
; id:3135 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X82.956 Y93.982 F9000
; id:3136 | label: TravelMove | feature: None
G1 Z15.9 F720
; id:3137 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:3138 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:3139 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y91.482 E0.33849
; id:3140 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X83.885 Y91.067 E0.13776
; id:3141 | label: ExtrusionMove | feature: None
G1 X84.759 Y90.81 E0.12335
; id:3142 | label: ExtrusionMove | feature: None
G1 X85.632 Y90.72 E0.11883
; id:3143 | label: ExtrusionMove | feature: None
G1 X86.069 Y90.834 E0.06115
; id:3144 | label: ExtrusionMove | feature: None
G1 X86.506 Y91.221 E0.07903
; id:3145 | label: ExtrusionMove | feature: None
G1 X86.943 Y91.951 E0.11519
; id:3146 | label: ExtrusionMove | feature: None
G1 X87.379 Y92.793 E0.12838
; id:3147 | label: ExtrusionMove | feature: None
G1 X87.816 Y93.541 E0.11729
; id:3148 | label: ExtrusionMove | feature: None
G1 X88.253 Y94.142 E0.10061
; id:3149 | label: ExtrusionMove | feature: None
G1 X88.69 Y94.616 E0.08729
; id:3150 | label: ExtrusionMove | feature: None
G1 X89.126 Y94.991 E0.07786
; id:3151 | label: ExtrusionMove | feature: None
G1 X90 Y95.542 E0.13989
; id:3152 | label: ExtrusionMove | feature: None
G1 X90.874 Y95.921 E0.12898
; id:3153 | label: ExtrusionMove | feature: None
G1 X91.747 Y96.178 E0.12322
; id:3154 | label: ExtrusionMove | feature: None
G1 X92.621 Y96.268 E0.11896
; id:3155 | label: ExtrusionMove | feature: None
G1 X93.057 Y96.154 E0.06102
; id:3156 | label: ExtrusionMove | feature: None
G1 X93.494 Y95.767 E0.07903
; id:3157 | label: ExtrusionMove | feature: None
G1 X93.931 Y95.038 E0.11508
; id:3158 | label: ExtrusionMove | feature: None
G1 X94.368 Y94.195 E0.12856
; id:3159 | label: ExtrusionMove | feature: None
G1 X94.805 Y93.448 E0.11718
; id:3160 | label: ExtrusionMove | feature: None
G1 X95.241 Y92.846 E0.10064
; id:3161 | label: ExtrusionMove | feature: None
G1 X95.678 Y92.373 E0.08719
; id:3162 | label: ExtrusionMove | feature: None
G1 X96.115 Y91.997 E0.07805
; id:3163 | label: ExtrusionMove | feature: None
G1 X97.044 Y91.423 E0.14785
; id:3164 | label: ExtrusionMove | feature: None
G1 X97.044 Y84.493 E0.93829
; id:3165 | label: ExtrusionMove | feature: None
G1 X96.115 Y84.079 E0.13771
; id:3166 | label: ExtrusionMove | feature: None
G1 X95.241 Y83.822 E0.12335
; id:3167 | label: ExtrusionMove | feature: None
G1 X94.368 Y83.732 E0.11883
; id:3168 | label: ExtrusionMove | feature: None
G1 X93.931 Y83.846 E0.06115
; id:3169 | label: ExtrusionMove | feature: None
G1 X93.494 Y84.233 E0.07903
; id:3170 | label: ExtrusionMove | feature: None
G1 X93.057 Y84.962 E0.11508
; id:3171 | label: ExtrusionMove | feature: None
G1 X92.621 Y85.805 E0.1285
; id:3172 | label: ExtrusionMove | feature: None
G1 X92.184 Y86.552 E0.11718
; id:3173 | label: ExtrusionMove | feature: None
G1 X91.747 Y87.154 E0.10072
; id:3174 | label: ExtrusionMove | feature: None
G1 X91.31 Y87.627 E0.08719
; id:3175 | label: ExtrusionMove | feature: None
G1 X90.874 Y88.003 E0.07795
; id:3176 | label: ExtrusionMove | feature: None
G1 X90 Y88.553 E0.13982
; id:3177 | label: ExtrusionMove | feature: None
G1 X89.126 Y88.933 E0.12904
; id:3178 | label: ExtrusionMove | feature: None
G1 X88.253 Y89.19 E0.12322
; id:3179 | label: ExtrusionMove | feature: None
G1 X87.379 Y89.28 E0.11896
; id:3180 | label: ExtrusionMove | feature: None
G1 X86.943 Y89.166 E0.06102
; id:3181 | label: ExtrusionMove | feature: None
G1 X86.506 Y88.779 E0.07903
; id:3182 | label: ExtrusionMove | feature: None
G1 X86.069 Y88.049 E0.11519
; id:3183 | label: ExtrusionMove | feature: None
G1 X85.632 Y87.207 E0.12844
; id:3184 | label: ExtrusionMove | feature: None
G1 X85.195 Y86.459 E0.11729
; id:3185 | label: ExtrusionMove | feature: None
G1 X84.759 Y85.858 E0.10053
; id:3186 | label: ExtrusionMove | feature: None
G1 X84.322 Y85.384 E0.08729
; id:3187 | label: ExtrusionMove | feature: None
G1 X83.885 Y85.009 E0.07797
; id:3188 | label: ExtrusionMove | feature: None
G1 X82.956 Y84.434 E0.14793
; id:3189 | label: ExtrusionMove | feature: None
G1 X82.956 Y82.956 E0.20011
; id:3190 | label: ExtrusionMove | feature: None
G1 X83.978 Y82.956 E0.13837
; id:3191 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:3192 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:3193 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y82.956 E-0.36409
; id:3194 | label: TravelMove | feature: Some(Retraction)
G1 X82.956 Y84.434 E-0.52654
; id:3195 | label: TravelMove | feature: Some(Retraction)
G1 X82.978 Y84.448 E-0.00937
; id:3196 | label: TravelMove | feature: Some(Retraction)
G1 Z16.1 F720
; id:3197 | label: LiftZ | feature: None
G1 Z16.3
; id:3198 | label: LiftZ | feature: None
G1 Z16.5
; id:3199 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:3200 | label: TravelMove | feature: None
G1 Z16.3 F720
; id:3201 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:3202 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F900
; id:3203 | label: FeedrateChangeOnly | feature: None
M73 P85 R1
G1 X82.264 Y97.736 E2.09483
; id:3204 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:3205 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:3206 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:3207 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:3208 | label: TravelMove | feature: None
M204 P800
G1 F900
; id:3209 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:3210 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:3211 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:3212 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:3213 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
M73 P86 R1
G1 X97.777 Y98.343 F9000
; id:3214 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:3215 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:3216 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:3217 | label: TravelMove | feature: Some(Retraction)
G1 Z16.5 F720
; id:3218 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X96.23 Y94.457 F9000
; id:3219 | label: TravelMove | feature: None
G1 Z16.3 F720
; id:3220 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:3221 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:3222 | label: FeedrateChangeOnly | feature: None
G1 X96.23 Y91.957 E0.33849
; id:3223 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X96.115 Y92.013 E0.01732
; id:3224 | label: ExtrusionMove | feature: None
G1 X95.241 Y92.689 E0.1496
; id:3225 | label: ExtrusionMove | feature: None
G1 X94.368 Y93.709 E0.18178
; id:3226 | label: ExtrusionMove | feature: None
G1 X93.494 Y94.874 E0.19719
; id:3227 | label: ExtrusionMove | feature: None
G1 X93.057 Y95.299 E0.08253
; id:3228 | label: ExtrusionMove | feature: None
G1 X92.621 Y95.563 E0.06901
; id:3229 | label: ExtrusionMove | feature: None
G1 X91.747 Y95.739 E0.12071
; id:3230 | label: ExtrusionMove | feature: None
G1 X90.874 Y95.654 E0.11876
; id:3231 | label: ExtrusionMove | feature: None
G1 X90 Y95.403 E0.12312
; id:3232 | label: ExtrusionMove | feature: None
G1 X89.126 Y94.976 E0.1317
; id:3233 | label: ExtrusionMove | feature: None
G1 X88.253 Y94.299 E0.14958
; id:3234 | label: ExtrusionMove | feature: None
G1 X87.379 Y93.28 E0.18176
; id:3235 | label: ExtrusionMove | feature: None
G1 X86.506 Y92.115 E0.19711
; id:3236 | label: ExtrusionMove | feature: None
G1 X86.069 Y91.689 E0.08263
; id:3237 | label: ExtrusionMove | feature: None
G1 X85.632 Y91.426 E0.06906
; id:3238 | label: ExtrusionMove | feature: None
G1 X84.759 Y91.249 E0.12061
; id:3239 | label: ExtrusionMove | feature: None
G1 X83.885 Y91.334 E0.11889
; id:3240 | label: ExtrusionMove | feature: None
G1 X83.77 Y91.367 E0.0162
; id:3241 | label: ExtrusionMove | feature: None
G1 X83.77 Y84.968 E0.86639
; id:3242 | label: ExtrusionMove | feature: None
G1 X83.885 Y85.024 E0.01732
; id:3243 | label: ExtrusionMove | feature: None
G1 X84.759 Y85.701 E0.14968
; id:3244 | label: ExtrusionMove | feature: None
G1 X85.632 Y86.72 E0.18168
; id:3245 | label: ExtrusionMove | feature: None
G1 X86.506 Y87.885 E0.19719
; id:3246 | label: ExtrusionMove | feature: None
G1 X86.943 Y88.311 E0.08263
; id:3247 | label: ExtrusionMove | feature: None
G1 X87.379 Y88.574 E0.06894
; id:3248 | label: ExtrusionMove | feature: None
G1 X88.253 Y88.751 E0.12074
; id:3249 | label: ExtrusionMove | feature: None
G1 X89.126 Y88.666 E0.11876
; id:3250 | label: ExtrusionMove | feature: None
G1 X90 Y88.414 E0.12316
; id:3251 | label: ExtrusionMove | feature: None
G1 X90.874 Y87.987 E0.1317
; id:3252 | label: ExtrusionMove | feature: None
G1 X91.747 Y87.311 E0.14949
; id:3253 | label: ExtrusionMove | feature: None
G1 X92.621 Y86.291 E0.18187
; id:3254 | label: ExtrusionMove | feature: None
G1 X93.494 Y85.126 E0.19711
; id:3255 | label: ExtrusionMove | feature: None
G1 X93.931 Y84.701 E0.08253
; id:3256 | label: ExtrusionMove | feature: None
G1 X94.368 Y84.437 E0.06913
; id:3257 | label: ExtrusionMove | feature: None
G1 X95.241 Y84.261 E0.12058
; id:3258 | label: ExtrusionMove | feature: None
G1 X96.115 Y84.346 E0.11889
; id:3259 | label: ExtrusionMove | feature: None
G1 X96.23 Y84.379 E0.0162
; id:3260 | label: ExtrusionMove | feature: None
G1 X96.23 Y86.879 E0.33849
; id:3261 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 E-2.1 F2700
; id:3262 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:3263 | label: FeedrateChangeOnly | feature: None
G1 X96.23 Y84.379 E-0.89063
; id:3264 | label: TravelMove | feature: Some(Retraction)
G1 X96.205 Y84.372 E-0.00937
; id:3265 | label: TravelMove | feature: Some(Retraction)
G1 Z16.5 F720
; id:3266 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X82.956 Y96.637 F9000
; id:3267 | label: TravelMove | feature: None
G1 Z16.3 F720
; id:3268 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:3269 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F900
; id:3270 | label: FeedrateChangeOnly | feature: None
G1 X82.956 Y83.363 E1.79726
; id:3271 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.979 Y83.251 E0.01637
; id:3272 | label: ExtrusionMove | feature: None
G1 X83.003 Y83.138 E0.01743
; id:3273 | label: ExtrusionMove | feature: None
M73 P87 R1
G1 X83.026 Y83.026 E0.01814
; id:3274 | label: ExtrusionMove | feature: None
G1 X83.138 Y83.003 E0.01814
; id:3275 | label: ExtrusionMove | feature: None
G1 X83.251 Y82.979 E0.01743
; id:3276 | label: ExtrusionMove | feature: None
G1 X83.363 Y82.956 E0.01637
; id:3277 | label: ExtrusionMove | feature: None
G1 X96.637 Y82.956 E1.79726
; id:3278 | label: ExtrusionMove | feature: None
G1 X96.749 Y82.979 E0.01637
; id:3279 | label: ExtrusionMove | feature: None
G1 X96.862 Y83.003 E0.01743
; id:3280 | label: ExtrusionMove | feature: None
G1 X96.974 Y83.026 E0.01814
; id:3281 | label: ExtrusionMove | feature: None
G1 X96.996 Y83.115 E0.01454
; id:3282 | label: ExtrusionMove | feature: None
G1 X97.018 Y83.204 E0.01386
; id:3283 | label: ExtrusionMove | feature: None
G1 X97.041 Y83.292 E0.01308
; id:3284 | label: ExtrusionMove | feature: None
G1 X97.044 Y83.363 E0.00969
; id:3285 | label: ExtrusionMove | feature: None
G1 X97.044 Y96.637 E1.79726
; id:3286 | label: ExtrusionMove | feature: None
G1 X97.021 Y96.749 E0.01637
; id:3287 | label: ExtrusionMove | feature: None
G1 X96.997 Y96.862 E0.01743
; id:3288 | label: ExtrusionMove | feature: None
G1 X96.974 Y96.974 E0.01814
; id:3289 | label: ExtrusionMove | feature: None
G1 X96.862 Y96.997 E0.01814
; id:3290 | label: ExtrusionMove | feature: None
G1 X96.749 Y97.021 E0.01743
; id:3291 | label: ExtrusionMove | feature: None
G1 X96.637 Y97.044 E0.01637
; id:3292 | label: ExtrusionMove | feature: None
G1 X83.363 Y97.044 E1.79726
; id:3293 | label: ExtrusionMove | feature: None
G1 X83.271 Y97.025 E0.01331
; id:3294 | label: ExtrusionMove | feature: None
G1 X83.179 Y97.006 E0.01391
; id:3295 | label: ExtrusionMove | feature: None
G1 X83.087 Y96.987 E0.0145
; id:3296 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:3297 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:3298 | label: FeedrateChangeOnly | feature: None
G1 X83.179 Y97.006 E-0.03347
; id:3299 | label: TravelMove | feature: Some(Retraction)
G1 X83.271 Y97.025 E-0.03347
; id:3300 | label: TravelMove | feature: Some(Retraction)
G1 X83.363 Y97.044 E-0.03347
; id:3301 | label: TravelMove | feature: Some(Retraction)
G1 X85.607 Y97.044 E-0.79959
; id:3302 | label: TravelMove | feature: Some(Retraction)
G1 Z16.5 F720
; id:3303 | label: LiftZ | feature: None
G1 Z16.7
; id:3304 | label: LiftZ | feature: None
G1 Z16.9
; id:3305 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:3306 | label: TravelMove | feature: None
G1 Z16.7 F720
; id:3307 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:3308 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F1179
; id:3309 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:3310 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:3311 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:3312 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:3313 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:3314 | label: TravelMove | feature: None
M204 P800
G1 F1179
; id:3315 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:3316 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:3317 | label: ExtrusionMove | feature: None
M73 P88 R1
G1 X98.55 Y81.45 E2.31526
; id:3318 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:3319 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:3320 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:3321 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:3322 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:3323 | label: TravelMove | feature: Some(Retraction)
G1 Z16.9 F720
; id:3324 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.41 Y95.096 F9000
; id:3325 | label: TravelMove | feature: None
G1 Z16.7 F720
; id:3326 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:3327 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F1320
; id:3328 | label: FeedrateChangeOnly | feature: None
G1 X96.271 Y97.046 E0.43196
; id:3329 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X95.326 Y97.046 E0.18076
; id:3330 | label: ExtrusionMove | feature: None
G1 X97.046 Y94.102 E0.65219
; id:3331 | label: ExtrusionMove | feature: None
G1 X97.046 Y92.486 E0.30911
; id:3332 | label: ExtrusionMove | feature: None
G1 X94.382 Y97.046 E1.01017
; id:3333 | label: ExtrusionMove | feature: None
G1 X93.438 Y97.046 E0.18057
; id:3334 | label: ExtrusionMove | feature: None
G1 X97.046 Y90.87 E1.36816
; id:3335 | label: ExtrusionMove | feature: None
G1 X97.046 Y89.254 E0.30911
; id:3336 | label: ExtrusionMove | feature: None
G1 X92.493 Y97.046 E1.72624
; id:3337 | label: ExtrusionMove | feature: None
G1 X91.549 Y97.046 E0.18057
; id:3338 | label: ExtrusionMove | feature: None
G1 X97.046 Y87.638 E2.08422
; id:3339 | label: ExtrusionMove | feature: None
G1 X97.046 Y86.021 E0.3093
; id:3340 | label: ExtrusionMove | feature: None
G1 X90.604 Y97.046 E2.44246
; id:3341 | label: ExtrusionMove | feature: None
G1 X89.66 Y97.046 E0.18057
; id:3342 | label: ExtrusionMove | feature: None
G1 X97.046 Y84.405 E2.80045
; id:3343 | label: ExtrusionMove | feature: None
G1 X97.046 Y82.954 E0.27755
; id:3344 | label: ExtrusionMove | feature: None
M73 P89 R1
G1 X96.95 Y82.954 E0.01836
; id:3345 | label: ExtrusionMove | feature: None
G1 X88.716 Y97.046 E3.12192
; id:3346 | label: ExtrusionMove | feature: None
G1 X87.771 Y97.046 E0.18076
; id:3347 | label: ExtrusionMove | feature: None
G1 X96.006 Y82.954 E3.12201
; id:3348 | label: ExtrusionMove | feature: None
G1 X95.062 Y82.954 E0.18057
; id:3349 | label: ExtrusionMove | feature: None
G1 X86.827 Y97.046 E3.12201
; id:3350 | label: ExtrusionMove | feature: None
G1 X85.883 Y97.046 E0.18057
; id:3351 | label: ExtrusionMove | feature: None
G1 X94.117 Y82.954 E3.12192
; id:3352 | label: ExtrusionMove | feature: None
G1 X93.173 Y82.954 E0.18057
; id:3353 | label: ExtrusionMove | feature: None
G1 X84.938 Y97.046 E3.12201
; id:3354 | label: ExtrusionMove | feature: None
G1 X83.994 Y97.046 E0.18057
; id:3355 | label: ExtrusionMove | feature: None
G1 X92.228 Y82.954 E3.12192
; id:3356 | label: ExtrusionMove | feature: None
G1 X91.284 Y82.954 E0.18057
; id:3357 | label: ExtrusionMove | feature: None
G1 X83.05 Y97.046 E3.12192
; id:3358 | label: ExtrusionMove | feature: None
G1 X82.954 Y97.046 E0.01836
; id:3359 | label: ExtrusionMove | feature: None
G1 X82.954 Y95.595 E0.27755
; id:3360 | label: ExtrusionMove | feature: None
G1 X90.34 Y82.954 E2.80045
; id:3361 | label: ExtrusionMove | feature: None
G1 X89.395 Y82.954 E0.18076
; id:3362 | label: ExtrusionMove | feature: None
M73 P90 R1
G1 X82.954 Y93.978 E2.4422
; id:3363 | label: ExtrusionMove | feature: None
G1 X82.954 Y92.362 E0.30911
; id:3364 | label: ExtrusionMove | feature: None
G1 X88.451 Y82.954 E2.08422
; id:3365 | label: ExtrusionMove | feature: None
G1 X87.507 Y82.954 E0.18057
; id:3366 | label: ExtrusionMove | feature: None
G1 X82.954 Y90.746 E1.72624
; id:3367 | label: ExtrusionMove | feature: None
G1 X82.954 Y89.13 E0.30911
; id:3368 | label: ExtrusionMove | feature: None
G1 X86.562 Y82.954 E1.36816
; id:3369 | label: ExtrusionMove | feature: None
G1 X85.618 Y82.954 E0.18057
; id:3370 | label: ExtrusionMove | feature: None
G1 X82.954 Y87.514 E1.01017
; id:3371 | label: ExtrusionMove | feature: None
G1 X82.954 Y85.897 E0.3093
; id:3372 | label: ExtrusionMove | feature: None
G1 X84.674 Y82.954 E0.65203
; id:3373 | label: ExtrusionMove | feature: None
G1 X83.729 Y82.954 E0.18076
; id:3374 | label: ExtrusionMove | feature: None
G1 X82.59 Y84.904 E0.43196
; id:3375 | label: ExtrusionMove | feature: Some(ShapeEnd)
G92 E0
G1 E-2.1 F2700
; id:3376 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:3377 | label: FeedrateChangeOnly | feature: None
G1 X83.729 Y82.954 E-0.80451
; id:3378 | label: TravelMove | feature: Some(Retraction)
G1 X83.997 Y82.954 E-0.09549
; id:3379 | label: TravelMove | feature: Some(Retraction)
G1 Z16.9 F720
; id:3380 | label: LiftZ | feature: None
G1 Z17.1
; id:3381 | label: LiftZ | feature: None
G1 Z17.3
; id:3382 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:3383 | label: TravelMove | feature: None
G1 Z17.1 F720
; id:3384 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:3385 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F1283
; id:3386 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:3387 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:3388 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:3389 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:3390 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:3391 | label: TravelMove | feature: None
M204 P800
G1 F1283
; id:3392 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:3393 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:3394 | label: ExtrusionMove | feature: None
M73 P91 R1
G1 X98.55 Y81.45 E2.31526
; id:3395 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:3396 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
M73 P91 R0
G1 X97.777 Y98.343 F9000
; id:3397 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:3398 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:3399 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:3400 | label: TravelMove | feature: Some(Retraction)
G1 Z17.3 F720
; id:3401 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X83.022 Y96.823 F9000
; id:3402 | label: TravelMove | feature: None
G1 Z17.1 F720
; id:3403 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:3404 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F1283
; id:3405 | label: FeedrateChangeOnly | feature: None
G1 X82.933 Y96.912 E0.02118
; id:3406 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.966 Y97.034 E0.02126
; id:3407 | label: ExtrusionMove | feature: None
G1 X83.088 Y97.067 E0.02126
; id:3408 | label: ExtrusionMove | feature: None
G1 X83.177 Y96.978 E0.02118
; id:3409 | label: ExtrusionMove | feature: None
G1 X83.144 Y96.856 E0.02126
; id:3410 | label: ExtrusionMove | feature: None
G1 X82.956 Y95.555 E0.17798
; id:3411 | label: ExtrusionMove | feature: None
G1 X84.445 Y97.044 E0.28511
; id:3412 | label: ExtrusionMove | feature: None
G1 X85.596 Y97.044 E0.15584
; id:3413 | label: ExtrusionMove | feature: None
G1 X82.956 Y94.404 E0.5055
; id:3414 | label: ExtrusionMove | feature: None
G1 X82.956 Y93.252 E0.15598
; id:3415 | label: ExtrusionMove | feature: None
G1 X86.748 Y97.044 E0.72608
; id:3416 | label: ExtrusionMove | feature: None
G1 X87.899 Y97.044 E0.15584
; id:3417 | label: ExtrusionMove | feature: None
G1 X82.956 Y92.101 E0.94647
; id:3418 | label: ExtrusionMove | feature: None
G1 X82.956 Y90.95 E0.15584
; id:3419 | label: ExtrusionMove | feature: None
G1 X89.05 Y97.044 E1.16687
; id:3420 | label: ExtrusionMove | feature: None
G1 X90.202 Y97.044 E0.15598
; id:3421 | label: ExtrusionMove | feature: None
G1 X82.956 Y89.798 E1.38745
; id:3422 | label: ExtrusionMove | feature: None
G1 X82.956 Y88.647 E0.15584
; id:3423 | label: ExtrusionMove | feature: None
G1 X91.353 Y97.044 E1.60784
; id:3424 | label: ExtrusionMove | feature: None
G1 X92.505 Y97.044 E0.15598
; id:3425 | label: ExtrusionMove | feature: None
G1 X82.956 Y87.495 E1.82842
; id:3426 | label: ExtrusionMove | feature: None
G1 X82.956 Y86.344 E0.15584
; id:3427 | label: ExtrusionMove | feature: None
M73 P92 R0
G1 X93.656 Y97.044 E2.04881
; id:3428 | label: ExtrusionMove | feature: None
G1 X94.807 Y97.044 E0.15584
; id:3429 | label: ExtrusionMove | feature: None
G1 X82.956 Y85.193 E2.2692
; id:3430 | label: ExtrusionMove | feature: None
G1 X82.956 Y84.041 E0.15598
; id:3431 | label: ExtrusionMove | feature: None
G1 X95.959 Y97.044 E2.48978
; id:3432 | label: ExtrusionMove | feature: None
G1 X97.044 Y96.977 E0.14718
; id:3433 | label: ExtrusionMove | feature: None
G1 X83.023 Y82.956 E2.68471
; id:3434 | label: ExtrusionMove | feature: None
G1 X84.174 Y82.956 E0.15584
; id:3435 | label: ExtrusionMove | feature: None
G1 X97.044 Y95.826 E2.46432
; id:3436 | label: ExtrusionMove | feature: None
G1 X97.044 Y94.675 E0.15584
; id:3437 | label: ExtrusionMove | feature: None
G1 X85.325 Y82.956 E2.24393
; id:3438 | label: ExtrusionMove | feature: None
G1 X86.477 Y82.956 E0.15598
; id:3439 | label: ExtrusionMove | feature: None
G1 X97.044 Y93.523 E2.02335
; id:3440 | label: ExtrusionMove | feature: None
G1 X97.044 Y92.372 E0.15584
; id:3441 | label: ExtrusionMove | feature: None
G1 X87.628 Y82.956 E1.80295
; id:3442 | label: ExtrusionMove | feature: None
G1 X88.78 Y82.956 E0.15598
; id:3443 | label: ExtrusionMove | feature: None
G1 X97.044 Y91.22 E1.58237
; id:3444 | label: ExtrusionMove | feature: None
M73 P93 R0
G1 X97.044 Y90.069 E0.15584
; id:3445 | label: ExtrusionMove | feature: None
G1 X89.931 Y82.956 E1.36198
; id:3446 | label: ExtrusionMove | feature: None
G1 X91.082 Y82.956 E0.15584
; id:3447 | label: ExtrusionMove | feature: None
G1 X97.044 Y88.918 E1.14159
; id:3448 | label: ExtrusionMove | feature: None
G1 X97.044 Y87.766 E0.15598
; id:3449 | label: ExtrusionMove | feature: None
G1 X92.234 Y82.956 E0.92101
; id:3450 | label: ExtrusionMove | feature: None
G1 X93.385 Y82.956 E0.15584
; id:3451 | label: ExtrusionMove | feature: None
G1 X97.044 Y86.615 E0.70062
; id:3452 | label: ExtrusionMove | feature: None
G1 X97.044 Y85.464 E0.15584
; id:3453 | label: ExtrusionMove | feature: None
G1 X94.536 Y82.956 E0.48023
; id:3454 | label: ExtrusionMove | feature: None
G1 X95.688 Y82.956 E0.15598
; id:3455 | label: ExtrusionMove | feature: None
G1 X97.044 Y84.312 E0.25964
; id:3456 | label: ExtrusionMove | feature: None
G1 X97.066 Y82.934 E0.1866
; id:3457 | label: ExtrusionMove | feature: None
G1 X97.097 Y83.046 E0.01805
; id:3458 | label: ExtrusionMove | feature: None
G1 X97.014 Y83.129 E0.01823
; id:3459 | label: ExtrusionMove | feature: None
G1 X96.901 Y83.099 E0.01816
; id:3460 | label: ExtrusionMove | feature: None
G1 X96.871 Y82.986 E0.01816
; id:3461 | label: ExtrusionMove | feature: None
G1 X96.954 Y82.903 E0.01823
; id:3462 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:3463 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:3464 | label: FeedrateChangeOnly | feature: None
G1 X96.871 Y82.986 E-0.04182
; id:3465 | label: TravelMove | feature: Some(Retraction)
G1 X96.901 Y83.099 E-0.04165
; id:3466 | label: TravelMove | feature: Some(Retraction)
G1 X97.014 Y83.129 E-0.04165
; id:3467 | label: TravelMove | feature: Some(Retraction)
G1 X97.097 Y83.046 E-0.04182
; id:3468 | label: TravelMove | feature: Some(Retraction)
G1 X97.066 Y82.934 E-0.0414
; id:3469 | label: TravelMove | feature: Some(Retraction)
G1 X97.044 Y84.312 E-0.49098
; id:3470 | label: TravelMove | feature: Some(Retraction)
G1 X96.646 Y83.914 E-0.20068
; id:3471 | label: TravelMove | feature: Some(Retraction)
G1 Z17.3 F720
; id:3472 | label: LiftZ | feature: None
G1 Z17.5
; id:3473 | label: LiftZ | feature: None
G1 Z17.7
; id:3474 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:3475 | label: TravelMove | feature: None
G1 Z17.5 F720
; id:3476 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:3477 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F1282
; id:3478 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:3479 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:3480 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:3481 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:3482 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:3483 | label: TravelMove | feature: None
M204 P800
G1 F1282
; id:3484 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:3485 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:3486 | label: ExtrusionMove | feature: None
M73 P94 R0
G1 X98.55 Y81.45 E2.31526
; id:3487 | label: ExtrusionMove | feature: None
G1 X98.55 Y98.43 E2.29901
; id:3488 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:3489 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:3490 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:3491 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:3492 | label: TravelMove | feature: Some(Retraction)
G1 Z17.7 F720
; id:3493 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X83.177 Y83.022 F9000
; id:3494 | label: TravelMove | feature: None
G1 Z17.5 F720
; id:3495 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:3496 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P1500
G1 F1282
; id:3497 | label: FeedrateChangeOnly | feature: None
G1 X83.088 Y82.933 E0.02118
; id:3498 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.966 Y82.966 E0.02126
; id:3499 | label: ExtrusionMove | feature: None
G1 X82.933 Y83.088 E0.02126
; id:3500 | label: ExtrusionMove | feature: None
G1 X83.022 Y83.177 E0.02118
; id:3501 | label: ExtrusionMove | feature: None
G1 X83.144 Y83.144 E0.02126
; id:3502 | label: ExtrusionMove | feature: None
G1 X82.956 Y84.445 E0.17798
; id:3503 | label: ExtrusionMove | feature: None
G1 X84.445 Y82.956 E0.28511
; id:3504 | label: ExtrusionMove | feature: None
G1 X85.596 Y82.956 E0.15584
; id:3505 | label: ExtrusionMove | feature: None
G1 X82.956 Y85.596 E0.5055
; id:3506 | label: ExtrusionMove | feature: None
G1 X82.956 Y86.748 E0.15598
; id:3507 | label: ExtrusionMove | feature: None
G1 X86.748 Y82.956 E0.72608
; id:3508 | label: ExtrusionMove | feature: None
G1 X87.899 Y82.956 E0.15584
; id:3509 | label: ExtrusionMove | feature: None
G1 X82.956 Y87.899 E0.94647
; id:3510 | label: ExtrusionMove | feature: None
G1 X82.956 Y89.05 E0.15584
; id:3511 | label: ExtrusionMove | feature: None
G1 X89.05 Y82.956 E1.16687
; id:3512 | label: ExtrusionMove | feature: None
G1 X90.202 Y82.956 E0.15598
; id:3513 | label: ExtrusionMove | feature: None
G1 X82.956 Y90.202 E1.38745
; id:3514 | label: ExtrusionMove | feature: None
G1 X82.956 Y91.353 E0.15584
; id:3515 | label: ExtrusionMove | feature: None
G1 X91.353 Y82.956 E1.60784
; id:3516 | label: ExtrusionMove | feature: None
G1 X92.505 Y82.956 E0.15598
; id:3517 | label: ExtrusionMove | feature: None
G1 X82.956 Y92.505 E1.82842
; id:3518 | label: ExtrusionMove | feature: None
G1 X82.956 Y93.656 E0.15584
; id:3519 | label: ExtrusionMove | feature: None
M73 P95 R0
G1 X93.656 Y82.956 E2.04881
; id:3520 | label: ExtrusionMove | feature: None
G1 X94.807 Y82.956 E0.15584
; id:3521 | label: ExtrusionMove | feature: None
G1 X82.956 Y94.807 E2.2692
; id:3522 | label: ExtrusionMove | feature: None
G1 X82.956 Y95.959 E0.15598
; id:3523 | label: ExtrusionMove | feature: None
G1 X95.959 Y82.956 E2.48978
; id:3524 | label: ExtrusionMove | feature: None
G1 X97.044 Y83.023 E0.14718
; id:3525 | label: ExtrusionMove | feature: None
G1 X83.023 Y97.044 E2.68471
; id:3526 | label: ExtrusionMove | feature: None
G1 X84.174 Y97.044 E0.15584
; id:3527 | label: ExtrusionMove | feature: None
G1 X97.044 Y84.174 E2.46432
; id:3528 | label: ExtrusionMove | feature: None
G1 X97.044 Y85.325 E0.15584
; id:3529 | label: ExtrusionMove | feature: None
G1 X85.325 Y97.044 E2.24393
; id:3530 | label: ExtrusionMove | feature: None
G1 X86.477 Y97.044 E0.15598
; id:3531 | label: ExtrusionMove | feature: None
G1 X97.044 Y86.477 E2.02335
; id:3532 | label: ExtrusionMove | feature: None
G1 X97.044 Y87.628 E0.15584
; id:3533 | label: ExtrusionMove | feature: None
G1 X87.628 Y97.044 E1.80295
; id:3534 | label: ExtrusionMove | feature: None
G1 X88.78 Y97.044 E0.15598
; id:3535 | label: ExtrusionMove | feature: None
G1 X97.044 Y88.78 E1.58237
; id:3536 | label: ExtrusionMove | feature: None
M73 P96 R0
G1 X97.044 Y89.931 E0.15584
; id:3537 | label: ExtrusionMove | feature: None
G1 X89.931 Y97.044 E1.36198
; id:3538 | label: ExtrusionMove | feature: None
G1 X91.082 Y97.044 E0.15584
; id:3539 | label: ExtrusionMove | feature: None
G1 X97.044 Y91.082 E1.14159
; id:3540 | label: ExtrusionMove | feature: None
G1 X97.044 Y92.234 E0.15598
; id:3541 | label: ExtrusionMove | feature: None
G1 X92.234 Y97.044 E0.92101
; id:3542 | label: ExtrusionMove | feature: None
G1 X93.385 Y97.044 E0.15584
; id:3543 | label: ExtrusionMove | feature: None
G1 X97.044 Y93.385 E0.70062
; id:3544 | label: ExtrusionMove | feature: None
G1 X97.044 Y94.536 E0.15584
; id:3545 | label: ExtrusionMove | feature: None
G1 X94.536 Y97.044 E0.48023
; id:3546 | label: ExtrusionMove | feature: None
G1 X95.688 Y97.044 E0.15598
; id:3547 | label: ExtrusionMove | feature: None
G1 X97.044 Y95.688 E0.25964
; id:3548 | label: ExtrusionMove | feature: None
G1 X97.097 Y96.954 E0.17156
; id:3549 | label: ExtrusionMove | feature: None
G1 X97.014 Y96.871 E0.01823
; id:3550 | label: ExtrusionMove | feature: None
G1 X96.901 Y96.901 E0.01816
; id:3551 | label: ExtrusionMove | feature: None
G1 X96.871 Y97.014 E0.01816
; id:3552 | label: ExtrusionMove | feature: None
G1 X96.954 Y97.097 E0.01823
; id:3553 | label: ExtrusionMove | feature: None
G1 X97.066 Y97.066 E0.01805
; id:3554 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G92 E0
G1 E-2.1 F2700
; id:3555 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:3556 | label: FeedrateChangeOnly | feature: None
G1 X96.954 Y97.097 E-0.0414
; id:3557 | label: TravelMove | feature: Some(Retraction)
G1 X96.871 Y97.014 E-0.04182
; id:3558 | label: TravelMove | feature: Some(Retraction)
G1 X96.901 Y96.901 E-0.04165
; id:3559 | label: TravelMove | feature: Some(Retraction)
G1 X97.014 Y96.871 E-0.04165
; id:3560 | label: TravelMove | feature: Some(Retraction)
G1 X97.097 Y96.954 E-0.04182
; id:3561 | label: TravelMove | feature: Some(Retraction)
G1 X97.044 Y95.688 E-0.45141
; id:3562 | label: TravelMove | feature: Some(Retraction)
G1 X96.567 Y96.165 E-0.24025
; id:3563 | label: TravelMove | feature: Some(Retraction)
G1 Z17.7 F720
; id:3564 | label: LiftZ | feature: None
G1 Z17.9
; id:3565 | label: LiftZ | feature: None
G1 Z18.1
; id:3566 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X97.736 Y97.736 F9000
; id:3567 | label: TravelMove | feature: None
G1 Z17.9 F720
; id:3568 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:3569 | label: ExtrusionMove | feature: Some(DeRetraction)
G1 F1492
; id:3570 | label: FeedrateChangeOnly | feature: None
G1 X82.264 Y97.736 E2.09483
; id:3571 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X82.264 Y82.264 E2.09483
; id:3572 | label: ExtrusionMove | feature: None
G1 X97.736 Y82.264 E2.09483
; id:3573 | label: ExtrusionMove | feature: None
G1 X97.736 Y97.616 E2.07859
; id:3574 | label: ExtrusionMove | feature: Some(ShapeEnd)
G1 X98.55 Y98.55 F9000
; id:3575 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3576 | label: FeedrateChangeOnly | feature: None
G1 X81.45 Y98.55 E2.31526
; id:3577 | label: ExtrusionMove | feature: Some(ShapeStart)
G1 X81.45 Y81.45 E2.31526
; id:3578 | label: ExtrusionMove | feature: None
G1 X98.55 Y81.45 E2.31526
; id:3579 | label: ExtrusionMove | feature: None
M73 P97 R0
G1 X98.55 Y98.43 E2.29901
; id:3580 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.777 Y98.343 F9000
; id:3581 | label: TravelMove | feature: None
G1 E-2.1 F2700
; id:3582 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:3583 | label: FeedrateChangeOnly | feature: None
G1 X96.024 Y98.448 E-0.9
; id:3584 | label: TravelMove | feature: Some(Retraction)
G1 Z18.1 F720
; id:3585 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X95.945 Y82.585 F9000
; id:3586 | label: TravelMove | feature: None
G1 Z17.9 F720
; id:3587 | label: LowerZ | feature: Some(LayerChangeSequence(0))
G1 E3 F1200
; id:3588 | label: ExtrusionMove | feature: Some(DeRetraction)
M204 P800
G1 F1492
; id:3589 | label: FeedrateChangeOnly | feature: None
G1 X97.415 Y84.055 E0.25124
; id:3590 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.415 Y85.083 F9000
; id:3591 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3592 | label: FeedrateChangeOnly | feature: None
G1 X94.917 Y82.585 E0.42693
; id:3593 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X93.89 Y82.585 F9000
; id:3594 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3595 | label: FeedrateChangeOnly | feature: None
G1 X97.415 Y86.11 E0.60245
; id:3596 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.415 Y87.138 F9000
; id:3597 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3598 | label: FeedrateChangeOnly | feature: None
G1 X92.862 Y82.585 E0.77815
; id:3599 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X91.834 Y82.585 F9000
; id:3600 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3601 | label: FeedrateChangeOnly | feature: None
G1 X97.415 Y88.166 E0.95384
; id:3602 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.415 Y89.194 F9000
; id:3603 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3604 | label: FeedrateChangeOnly | feature: None
G1 X90.806 Y82.585 E1.12953
; id:3605 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X89.779 Y82.585 F9000
; id:3606 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3607 | label: FeedrateChangeOnly | feature: None
G1 X97.415 Y90.221 E1.30506
; id:3608 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.415 Y91.249 F9000
; id:3609 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3610 | label: FeedrateChangeOnly | feature: None
G1 X88.751 Y82.585 E1.48075
; id:3611 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X87.723 Y82.585 F9000
; id:3612 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3613 | label: FeedrateChangeOnly | feature: None
G1 X97.415 Y92.277 E1.65644
; id:3614 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.415 Y93.304 F9000
; id:3615 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3616 | label: FeedrateChangeOnly | feature: None
G1 X86.696 Y82.585 E1.83197
; id:3617 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X85.668 Y82.585 F9000
; id:3618 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3619 | label: FeedrateChangeOnly | feature: None
G1 X97.415 Y94.332 E2.00766
; id:3620 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.415 Y95.36 F9000
; id:3621 | label: TravelMove | feature: None
M204 P800
M73 P98 R0
G1 F1492
; id:3622 | label: FeedrateChangeOnly | feature: None
G1 X84.64 Y82.585 E2.18336
; id:3623 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X83.612 Y82.585 F9000
; id:3624 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3625 | label: FeedrateChangeOnly | feature: None
G1 X97.415 Y96.388 E2.35905
; id:3626 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X97.415 Y97.415 F9000
; id:3627 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3628 | label: FeedrateChangeOnly | feature: None
G1 X82.585 Y82.585 E2.53457
; id:3629 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X82.585 Y83.613 F9000
; id:3630 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3631 | label: FeedrateChangeOnly | feature: None
G1 X96.387 Y97.415 E2.35888
; id:3632 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X95.36 Y97.415 F9000
; id:3633 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3634 | label: FeedrateChangeOnly | feature: None
G1 X82.585 Y84.64 E2.18336
; id:3635 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X82.585 Y85.668 F9000
; id:3636 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3637 | label: FeedrateChangeOnly | feature: None
G1 X94.332 Y97.415 E2.00766
; id:3638 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X93.304 Y97.415 F9000
; id:3639 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3640 | label: FeedrateChangeOnly | feature: None
G1 X82.585 Y86.696 E1.83197
; id:3641 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X82.585 Y87.723 F9000
; id:3642 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3643 | label: FeedrateChangeOnly | feature: None
G1 X92.277 Y97.415 E1.65644
; id:3644 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X91.249 Y97.415 F9000
; id:3645 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3646 | label: FeedrateChangeOnly | feature: None
G1 X82.585 Y88.751 E1.48075
; id:3647 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X82.585 Y89.779 F9000
; id:3648 | label: TravelMove | feature: None
M204 P800
M73 P99 R0
G1 F1492
; id:3649 | label: FeedrateChangeOnly | feature: None
G1 X90.221 Y97.415 E1.30506
; id:3650 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X89.193 Y97.415 F9000
; id:3651 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3652 | label: FeedrateChangeOnly | feature: None
G1 X82.585 Y90.807 E1.12936
; id:3653 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X82.585 Y91.834 F9000
; id:3654 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3655 | label: FeedrateChangeOnly | feature: None
G1 X88.166 Y97.415 E0.95384
; id:3656 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X87.138 Y97.415 F9000
; id:3657 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3658 | label: FeedrateChangeOnly | feature: None
G1 X82.585 Y92.862 E0.77815
; id:3659 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X82.585 Y93.89 F9000
; id:3660 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3661 | label: FeedrateChangeOnly | feature: None
G1 X86.11 Y97.415 E0.60245
; id:3662 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X85.083 Y97.415 F9000
; id:3663 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3664 | label: FeedrateChangeOnly | feature: None
G1 X82.585 Y94.917 E0.42693
; id:3665 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 X82.585 Y95.945 F9000
; id:3666 | label: TravelMove | feature: None
M204 P800
G1 F1492
; id:3667 | label: FeedrateChangeOnly | feature: None
G1 X84.055 Y97.415 E0.25124
; id:3668 | label: ExtrusionMove | feature: Some(ShapeEnd)
M204 P1000
G1 E-2.1 F2700
; id:3669 | label: Retraction | feature: Some(Retraction)
G1 F7200
; id:3670 | label: FeedrateChangeOnly | feature: None
G1 X82.585 Y95.945 E-0.74061
; id:3671 | label: TravelMove | feature: Some(Retraction)
G1 E-0.15939 F2700
; id:3672 | label: Retraction | feature: Some(Retraction)
G1 Z18.1 F720
; id:3673 | label: LiftZ | feature: None
M107
G1 E-1 F2100
; id:3674 | label: Retraction | feature: Some(Retraction)
G1 Z19.9 F720
; id:3675 | label: LiftZ | feature: Some(LayerChangeSequence(0))
G1 X178 Y178 F4200
; id:3676 | label: TravelMove | feature: None
G1 Z47.9 F720
; id:3677 | label: LiftZ | feature: None
G4
M104 S0
M140 S0
M107
M221 S100
M900 K0
M84
M73 P100 R0

