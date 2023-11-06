# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/lucasrj/github/embedded-systems-assegment-2/vitis/dma_simple_test/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/lucasrj/github/embedded-systems-assegment-2/vitis/dma_simple_test/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {dma_simple_test}\
-hw {/home/lucasrj/github/embedded-systems-assegment-2/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {/home/lucasrj/github/embedded-systems-assegment-2/vitis}

platform write
platform generate -domains 
platform active {dma_simple_test}
platform generate
domain active {zynqmp_fsbl}
bsp reload
domain active {standalone_domain}
bsp reload
bsp config stdin "psu_uart_1"
bsp config stdout "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain 
bsp reload
