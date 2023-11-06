set moduleName example
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {example}
set C_modelType { void 0 }
set C_modelArgList {
	{ A_V_data_V int 32 regular {axi_s 0 volatile  { A Data } }  }
	{ A_V_keep_V int 4 regular {axi_s 0 volatile  { A Keep } }  }
	{ A_V_strb_V int 4 regular {axi_s 0 volatile  { A Strb } }  }
	{ A_V_last_V int 1 regular {axi_s 0 volatile  { A Last } }  }
	{ B_V_data_V int 32 regular {axi_s 1 volatile  { B Data } }  }
	{ B_V_keep_V int 4 regular {axi_s 1 volatile  { B Keep } }  }
	{ B_V_strb_V int 4 regular {axi_s 1 volatile  { B Strb } }  }
	{ B_V_last_V int 1 regular {axi_s 1 volatile  { B Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "A_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "A.V.data.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "A_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "A.V.keep.V","cData": "int4","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "A_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "A.V.strb.V","cData": "int4","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "A_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "A.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "B_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "B.V.data.V","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "B_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "B.V.keep.V","cData": "int4","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "B_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "B.V.strb.V","cData": "int4","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} , 
 	{ "Name" : "B_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "B.V.last.V","cData": "int1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}]} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ A_TDATA sc_in sc_lv 32 signal 0 } 
	{ A_TVALID sc_in sc_logic 1 invld 3 } 
	{ A_TREADY sc_out sc_logic 1 inacc 3 } 
	{ A_TKEEP sc_in sc_lv 4 signal 1 } 
	{ A_TSTRB sc_in sc_lv 4 signal 2 } 
	{ A_TLAST sc_in sc_lv 1 signal 3 } 
	{ B_TDATA sc_out sc_lv 32 signal 4 } 
	{ B_TVALID sc_out sc_logic 1 outvld 7 } 
	{ B_TREADY sc_in sc_logic 1 outacc 7 } 
	{ B_TKEEP sc_out sc_lv 4 signal 5 } 
	{ B_TSTRB sc_out sc_lv 4 signal 6 } 
	{ B_TLAST sc_out sc_lv 1 signal 7 } 
	{ s_axi_AXI_CPU_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXI_CPU_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXI_CPU_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXI_CPU_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXI_CPU_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXI_CPU_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXI_CPU_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXI_CPU_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "AWADDR" },"address":[{"name":"example","role":"start","value":"0","valid_bit":"0"},{"name":"example","role":"continue","value":"0","valid_bit":"4"},{"name":"example","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_AXI_CPU_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "AWVALID" } },
	{ "name": "s_axi_AXI_CPU_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "AWREADY" } },
	{ "name": "s_axi_AXI_CPU_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "WVALID" } },
	{ "name": "s_axi_AXI_CPU_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "WREADY" } },
	{ "name": "s_axi_AXI_CPU_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "WDATA" } },
	{ "name": "s_axi_AXI_CPU_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "WSTRB" } },
	{ "name": "s_axi_AXI_CPU_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "ARADDR" },"address":[{"name":"example","role":"start","value":"0","valid_bit":"0"},{"name":"example","role":"done","value":"0","valid_bit":"1"},{"name":"example","role":"idle","value":"0","valid_bit":"2"},{"name":"example","role":"ready","value":"0","valid_bit":"3"},{"name":"example","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_AXI_CPU_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "ARVALID" } },
	{ "name": "s_axi_AXI_CPU_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "ARREADY" } },
	{ "name": "s_axi_AXI_CPU_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "RVALID" } },
	{ "name": "s_axi_AXI_CPU_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "RREADY" } },
	{ "name": "s_axi_AXI_CPU_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "RDATA" } },
	{ "name": "s_axi_AXI_CPU_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "RRESP" } },
	{ "name": "s_axi_AXI_CPU_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "BVALID" } },
	{ "name": "s_axi_AXI_CPU_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "BREADY" } },
	{ "name": "s_axi_AXI_CPU_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "A_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "A_V_data_V", "role": "default" }} , 
 	{ "name": "A_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "A_V_last_V", "role": "default" }} , 
 	{ "name": "A_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "A_V_last_V", "role": "default" }} , 
 	{ "name": "A_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_V_keep_V", "role": "default" }} , 
 	{ "name": "A_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "A_V_strb_V", "role": "default" }} , 
 	{ "name": "A_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "A_V_last_V", "role": "default" }} , 
 	{ "name": "B_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "B_V_data_V", "role": "default" }} , 
 	{ "name": "B_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "B_V_last_V", "role": "default" }} , 
 	{ "name": "B_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "B_V_last_V", "role": "default" }} , 
 	{ "name": "B_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_V_keep_V", "role": "default" }} , 
 	{ "name": "B_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "B_V_strb_V", "role": "default" }} , 
 	{ "name": "B_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "B_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9"],
		"CDFG" : "example",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "A_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "A_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "A_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "A_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "A_V_last_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "B_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "B_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "B_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "B_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "B_V_last_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXI_CPU_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_A_V_data_V_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_A_V_keep_V_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_A_V_strb_V_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_A_V_last_V_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_B_V_data_V_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_B_V_keep_V_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_B_V_strb_V_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.regslice_both_B_V_last_V_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	example {
		A_V_data_V {Type I LastRead 1 FirstWrite -1}
		A_V_keep_V {Type I LastRead 1 FirstWrite -1}
		A_V_strb_V {Type I LastRead 1 FirstWrite -1}
		A_V_last_V {Type I LastRead 1 FirstWrite -1}
		B_V_data_V {Type O LastRead -1 FirstWrite 1}
		B_V_keep_V {Type O LastRead -1 FirstWrite 1}
		B_V_strb_V {Type O LastRead -1 FirstWrite 1}
		B_V_last_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	A_V_data_V { axis {  { A_TDATA in_data 0 32 } } }
	A_V_keep_V { axis {  { A_TKEEP in_data 0 4 } } }
	A_V_strb_V { axis {  { A_TSTRB in_data 0 4 } } }
	A_V_last_V { axis {  { A_TVALID in_vld 0 1 }  { A_TREADY in_acc 1 1 }  { A_TLAST in_data 0 1 } } }
	B_V_data_V { axis {  { B_TDATA out_data 1 32 } } }
	B_V_keep_V { axis {  { B_TKEEP out_data 1 4 } } }
	B_V_strb_V { axis {  { B_TSTRB out_data 1 4 } } }
	B_V_last_V { axis {  { B_TVALID out_vld 1 1 }  { B_TREADY out_acc 0 1 }  { B_TLAST out_data 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
