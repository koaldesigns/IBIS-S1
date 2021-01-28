# IBIS S1
A repo containing all config and files use for the ibis s1 SCARA arm/printer so far

# Issues
I am currently running into issues configuring my RRF to properly control the SCARA arm. Currently I have attached the config.g and homeall.g files as they are the only ones which are in use right now.
The issue is that after homing the arms and using G0 H2 X0 Y0, the arms are in line with eachother and facing along the x-axis. When issuing any of the following move commands and then M114 to get positioning they do not match with what they should be.

G0 H2 X0 Y0 yeilds X752 Y0 which is correct

G0 H2 X0 Y90 yeilds X376 Y376 which is corrent

G0 H2 X0 Y-90 yeilds X376 Y-376 which is correct

G0 H2 X90 Y0 yeilds X0 Y752 when it should yeild X376 Y376

G0 H2 X-90 Y0 yeilds X0 Y-752 when it should yeild X376 Y-376

G0 H2 X-90 Y-90 yeilds X-376 Y-376 when it should yeild X0 Y-752

G0 H2 X90 Y90 yeilds X-376 Y376 when it should yeild X0 Y752

All of these measurements assume that the 0,0 position is at the proximal joint and that the x-axis becomes positive moving towards the viewer (away from the tower of the arm). Thus, the +Y should be right of the viewer and -Y should be left of the viewer following the regular Cartesian coordinates.

Help would be appreciated.

