############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project assignment2HLS_project
set_top example
add_files ../../../Downloads/example_hls.cpp
add_files -tb ../../../Downloads/example_hls_tb.cpp
open_solution "assignment2HLS_solution" -flow_target vivado
set_part {xczu3eg-sbva484-1-i}
create_clock -period 10 -name default
source "./assignment2HLS_project/assignment2HLS_solution/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog
