G91				;Relative positioning

G92 Z0				;Set Z to 0 (temporary no z stop yet)

G0 H1 Y-300 X-300 F1800		;Move both distal and proximal to home positions
G0 H2 X5 F600			;Slowly turn proximal away from home position
G0 H1 X-10 F600			;Slowly home proximal
G0 H2 Y5 F600			;Slowly turn distal away from home position
G0 H2 Y-10 F600			;Slowly home distal

G90				;Absolute positioning

G0 H2 Y0 F1800			;Move distal arm to face x-axis