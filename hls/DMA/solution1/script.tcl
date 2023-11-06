############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
############################################################
open_project DMA
add_files example_hls.cpp
add_files -tb example_hls_tb.cpp
open_solution "solution1" -flow_target vivado
set_part {xcvu11p-flga2577-1-e}
create_clock -period 10 -name default
source "./DMA/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -format ip_catalog
