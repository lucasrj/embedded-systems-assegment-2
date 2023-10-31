# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_AXI_CPU {
in_r { 
	dir I
	width 32
	depth 1000000
	mode ap_memory
	offset 4194304
	offset_end 8388607
}
out_r { 
	dir O
	width 32
	depth 1000000
	mode ap_memory
	offset 8388608
	offset_end 12582911
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
}
dict set axilite_register_dict AXI_CPU $port_AXI_CPU


