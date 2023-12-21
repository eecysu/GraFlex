open_project -reset bfs_ctrl_v1
set_top BFS_Ctrl_2X1_VER1
add_files /Zodiac/GraFlex/ArtifactEvaluation/figure8/BFS_Scalability/PE_2/src/hw/ctrl/tmp/bfs_ctrl.cpp
open_solution "solution1" -flow_target vivado
set_part {xcu280-fsvh2892-2L-e}
create_clock -period 5 -name default
csynth_design
exit
