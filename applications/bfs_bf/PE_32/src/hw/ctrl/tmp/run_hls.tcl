open_project -reset bfs_ctrl_v1
set_top BFS_Ctrl_32X1_VER1
add_files /Orion/BackEnd/ArtifactEvaluation/BFS_BF/PE_32/src/hw/ctrl/tmp/bfs_ctrl.cpp
open_solution "solution1" -flow_target vivado
set_part {xcu280-fsvh2892-2L-e}
create_clock -period 5 -name default
csynth_design
exit
