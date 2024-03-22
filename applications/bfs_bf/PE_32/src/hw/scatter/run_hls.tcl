open_project -reset bfs_scatter_v1
set_top BFS_Scatter
add_files /Orion/BackEnd/ArtifactEvaluation/BFS_BF/PE_32/src/hw/scatter/bfs_scatter.cpp
open_solution "solution1" -flow_target vivado
set_part {xcu280-fsvh2892-2L-e}
create_clock -period 5 -name default
csynth_design
exit
