M73 P0 R11
M201 X2500 Y2500 Z400 E5000 ; sets maximum accelerations, mm/sec^2
M203 X180 Y180 Z12 E80 ; sets maximum feedrates, mm / sec
M204 P2000 R1250 T2500 ; sets acceleration (P, T) and retract acceleration (R), mm/sec^2
M205 X8.00 Y8.00 Z2.00 E10.00 ; sets the jerk limits, mm/sec
M205 S0 T0 ; sets the minimum extruding and travel feed rate, mm/sec
;TYPE:Custom
M862.3 P "MINI" ; printer model check
G90 ; use absolute coordinates
M83 ; extruder relative mode
M104 S170 ; set extruder temp for bed leveling
M140 S60 ; set bed temp
M109 R170 ; wait for bed leveling temp
M190 S60 ; wait for bed temp