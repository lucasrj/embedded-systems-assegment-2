# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/lucasrj/github/embeded_systems/vitis/dma/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/lucasrj/github/embeded_systems/vitis/dma/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {dma}\
-hw {/home/lucasrj/github/embeded_systems/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}\
-proc {psu_cortexa53_0} -os {standalone} -arch {64-bit} -fsbl-target {psu_cortexa53_0} -out {/home/lucasrj/github/embeded_systems/vitis}

platform write
platform generate -domains 
platform active {dma}
bsp reload
bsp config stdin "psu_uart_1"
bsp config stdout "psu_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform clean
platform generate
platform config -updatehw {/home/lucasrj/github/embeded_systems/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}
platform generate -domains 
platform config -updatehw {/home/lucasrj/github/embeded_systems/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}
platform generate -domains 
platform config -updatehw {/home/lucasrj/github/embeded_systems/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}
platform clean
platform generate
platform config -updatehw {/home/lucasrj/github/embeded_systems/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}
platform clean
platform generate
platform clean
platform clean
platform generate
platform generate
platform active {dma}
platform config -updatehw {/home/lucasrj/github/embeded_systems/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}
platform generate -domains 
platform config -updatehw {/home/lucasrj/github/embeded_systems/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}
platform clean
platform generate
platform config -updatehw {/home/lucasrj/github/embeded_systems/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}
platform clean
platform generate
platform config -updatehw {/home/lucasrj/github/embeded_systems/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}
platform clean
platform generate
platform config -updatehw {/home/lucasrj/github/embeded_systems/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}
platform generate -domains 
platform config -updatehw {/home/lucasrj/github/embeded_systems/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}
platform generate -domains 
platform config -updatehw {/home/lucasrj/github/embeded_systems/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}
platform generate -domains 
platform config -updatehw {/home/lucasrj/github/embeded_systems/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}
platform generate -domains 
platform config -updatehw {/home/lucasrj/github/embeded_systems/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}
platform generate -domains 
platform clean
platform generate
platform config -updatehw {/home/lucasrj/github/embeded_systems/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}
platform generate -domains 
platform generate
platform active {dma}
platform config -updatehw {/home/lucasrj/github/embeded_systems/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}
platform config -updatehw {/home/lucasrj/github/embedded-systems-assegment-2/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}
platform config -updatehw {/home/lucasrj/github/embedded-systems-assegment-2/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}
platform generate
platform clean
platform generate
platform config -updatehw {/home/lucasrj/github/embedded-systems-assegment-2/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}
platform config -updatehw {/home/lucasrj/github/embedded-systems-assegment-2/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}
platform clean
platform generate
platform config -updatehw {/home/lucasrj/github/embedded-systems-assegment-2/hdl/projects/u96v2_sbc_mp4d_2020_2/u96v2_sbc_mp4d.xsa}
platform clean
platform generate
