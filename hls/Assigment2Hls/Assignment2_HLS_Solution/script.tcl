############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Assigment2Hls
set_top example
add_files ../../../../../../Downloads/example_hls.cpp
add_files -tb ../../../../../../Downloads/example_hls_tb.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "Assignment2_HLS_Solution" -flow_target vivado
set_part {xczu3eg-sbva484-1-e}
create_clock -period 10 -name default
config_export -format ip_catalog -output /home/oliver/Documents/Study/Embedded/Assigment2/embedded-systems-assegment-2/example.zip -rtl vhdl
source "./Assigment2Hls/Assignment2_HLS_Solution/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl vhdl -format ip_catalog -output /home/oliver/Documents/Study/Embedded/Assigment2/embedded-systems-assegment-2/ip/example.zip
