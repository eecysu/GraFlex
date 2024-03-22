open_project -reset bfs_gather_v1
set_top BFS_Gather
add_files /Orion/BackEnd/ArtifactEvaluation/BFS_BF/PE_32/src/hw/gather/bfs_gather.cpp
open_solution "solution1" -flow_target vivado
set_part {xcu280-fsvh2892-2L-e}
create_clock -period 5 -name default
csynth_design
exit
