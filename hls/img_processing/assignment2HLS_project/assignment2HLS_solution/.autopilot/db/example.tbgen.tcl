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
	{ in_r int 32 regular {axi_slave 0}  }
	{ out_r int 32 regular {axi_slave 1}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "in_r", "interface" : "axi_slave", "bundle":"AXI_CPU","type":"ap_memory","bitwidth" : 32, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "in","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"in":4194304}, "offset_end" : {"in":8388607}} , 
 	{ "Name" : "out_r", "interface" : "axi_slave", "bundle":"AXI_CPU","type":"ap_memory","bitwidth" : 32, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "out","cData": "int","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 0}]}]}], "offset" : {"out":8388608}, "offset_end" : {"out":12582911}} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ s_axi_AXI_CPU_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_AWADDR sc_in sc_lv 24 signal -1 } 
	{ s_axi_AXI_CPU_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXI_CPU_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXI_CPU_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXI_CPU_ARADDR sc_in sc_lv 24 signal -1 } 
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
	{ "name": "s_axi_AXI_CPU_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "AWADDR" },"address":[{"name":"example","role":"start","value":"0","valid_bit":"0"},{"name":"example","role":"continue","value":"0","valid_bit":"4"},{"name":"example","role":"auto_start","value":"0","valid_bit":"7"},{"name":"in_r","role":"data","value":"4194304"}] },
	{ "name": "s_axi_AXI_CPU_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "AWVALID" } },
	{ "name": "s_axi_AXI_CPU_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "AWREADY" } },
	{ "name": "s_axi_AXI_CPU_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "WVALID" } },
	{ "name": "s_axi_AXI_CPU_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "WREADY" } },
	{ "name": "s_axi_AXI_CPU_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "WDATA" } },
	{ "name": "s_axi_AXI_CPU_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "WSTRB" } },
	{ "name": "s_axi_AXI_CPU_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "AXI_CPU", "role": "ARADDR" },"address":[{"name":"example","role":"start","value":"0","valid_bit":"0"},{"name":"example","role":"done","value":"0","valid_bit":"1"},{"name":"example","role":"idle","value":"0","valid_bit":"2"},{"name":"example","role":"ready","value":"0","valid_bit":"3"},{"name":"example","role":"auto_start","value":"0","valid_bit":"7"},{"name":"out_r","role":"data","value":"8388608"}] },
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
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "example",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "307205", "EstimateLatencyMax" : "307205",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "in_r", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_r", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.AXI_CPU_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mac_muladd_10ns_11ns_9ns_20_4_1_U1", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	example {
		in_r {Type I LastRead 4 FirstWrite -1}
		out_r {Type O LastRead -1 FirstWrite 5}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "307205", "Max" : "307205"}
	, {"Name" : "Interval", "Min" : "307206", "Max" : "307206"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
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
