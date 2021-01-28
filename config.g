; Communication and general
M111 S0                            		; Debug off
M550 PIBIS S1					; Machine name and Netbios name (can be anything you like)
M551 Preprap                   			; Machine password (used for FTP)

;*** Networking
M552 S1						; Turn network on

M555 P2						; Set output to look like Marlin
G21						; Work in millimetres
G90						; Send absolute coordinates...
M83						; ...but relative extruder moves

; Disable Fan 1 thermostatic mode
M106 P1 H-1

; Printer Settings

M669 K4 P376 D376 A-140;110 B0;172 C-1:0:0 X0 Y0
; Printer class SCARA, proximal/distal length, proximal min/max angle in relation to x-axis, distal min/max angle in relation to proximal arm, crosstalk factor (depends on mechanical setup)

M201 X1000 Y1000 Z1000 E1000			; Accelerations (mm/s^2)
M203 X20000 Y20000 Z300 E3600			; Maximum speeds (mm/min)
M566 X1200 Y1200 Z800 E1200			; Maximum instant speed changes mm/minute

;Motor Settings

M569 P0 S1					; Drive 0 goes forwards
M569 P1 S0					; Drive 1 goes forwards
M569 P2 S1					; Drive 2 goes forwards
M569 P3 S1					; Drive 3 goes forwards
M569 P4 S1					; Drive 4 goes forwards
M350 X16 Y16 Z16 E16:16 I1			; Set 16x microstepping with interpolation
M92 X262.2222 Y262.2222 Z800			; Set axis steps/degree, steps/mm
M906 X800 Y800 Z1000 E800 I60			; Set motor currents (mA) and increase idle current to 60%

;Endstops

M574 X1 S1 P"!xstop"   ; X min active low endstop switch
M574 Y1 S1 P"!ystop"   ; Y min active low endstop switch
;M574 Z2 S1 P"zstop"   ; Z max active high endstop switch
;M574 U2 S1 P"e0stop"  ; U max active high endstop switch



