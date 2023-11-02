// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Version: 2020.2
// Copyright (C) Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="example_example,hls_ip_2020_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu3eg-sbva484-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=3.907000,HLS_SYN_LAT=307205,HLS_SYN_TPT=none,HLS_SYN_MEM=64,HLS_SYN_DSP=0,HLS_SYN_FF=349,HLS_SYN_LUT=430,HLS_VERSION=2020_2}" *)

module example (
        ap_clk,
        ap_rst_n,
        s_axi_AXI_CPU_AWVALID,
        s_axi_AXI_CPU_AWREADY,
        s_axi_AXI_CPU_AWADDR,
        s_axi_AXI_CPU_WVALID,
        s_axi_AXI_CPU_WREADY,
        s_axi_AXI_CPU_WDATA,
        s_axi_AXI_CPU_WSTRB,
        s_axi_AXI_CPU_ARVALID,
        s_axi_AXI_CPU_ARREADY,
        s_axi_AXI_CPU_ARADDR,
        s_axi_AXI_CPU_RVALID,
        s_axi_AXI_CPU_RREADY,
        s_axi_AXI_CPU_RDATA,
        s_axi_AXI_CPU_RRESP,
        s_axi_AXI_CPU_BVALID,
        s_axi_AXI_CPU_BREADY,
        s_axi_AXI_CPU_BRESP,
        interrupt
);

parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_pp0_stage0 = 3'd2;
parameter    ap_ST_fsm_state7 = 3'd4;
parameter    C_S_AXI_AXI_CPU_DATA_WIDTH = 32;
parameter    C_S_AXI_AXI_CPU_ADDR_WIDTH = 18;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_AXI_CPU_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input   s_axi_AXI_CPU_AWVALID;
output   s_axi_AXI_CPU_AWREADY;
input  [C_S_AXI_AXI_CPU_ADDR_WIDTH - 1:0] s_axi_AXI_CPU_AWADDR;
input   s_axi_AXI_CPU_WVALID;
output   s_axi_AXI_CPU_WREADY;
input  [C_S_AXI_AXI_CPU_DATA_WIDTH - 1:0] s_axi_AXI_CPU_WDATA;
input  [C_S_AXI_AXI_CPU_WSTRB_WIDTH - 1:0] s_axi_AXI_CPU_WSTRB;
input   s_axi_AXI_CPU_ARVALID;
output   s_axi_AXI_CPU_ARREADY;
input  [C_S_AXI_AXI_CPU_ADDR_WIDTH - 1:0] s_axi_AXI_CPU_ARADDR;
output   s_axi_AXI_CPU_RVALID;
input   s_axi_AXI_CPU_RREADY;
output  [C_S_AXI_AXI_CPU_DATA_WIDTH - 1:0] s_axi_AXI_CPU_RDATA;
output  [1:0] s_axi_AXI_CPU_RRESP;
output   s_axi_AXI_CPU_BVALID;
input   s_axi_AXI_CPU_BREADY;
output  [1:0] s_axi_AXI_CPU_BRESP;
output   interrupt;

 reg    ap_rst_n_inv;
wire    ap_start;
reg    ap_done;
reg    ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    ap_ready;
wire   [13:0] in_r_address0;
reg    in_r_ce0;
wire   [31:0] in_r_q0;
wire   [13:0] out_r_address0;
reg    out_r_ce0;
reg    out_r_we0;
wire   [31:0] out_r_d0;
reg   [18:0] indvar_flatten_reg_98;
reg   [9:0] i_reg_109;
reg   [8:0] k_reg_120;
wire   [18:0] add_ln16_1_fu_131_p2;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_state2_pp0_stage0_iter0;
wire    ap_block_state3_pp0_stage0_iter1;
wire    ap_block_state4_pp0_stage0_iter2;
wire    ap_block_state5_pp0_stage0_iter3;
wire    ap_block_state6_pp0_stage0_iter4;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln16_fu_137_p2;
reg   [0:0] icmp_ln16_reg_209;
reg   [0:0] icmp_ln16_reg_209_pp0_iter1_reg;
reg   [0:0] icmp_ln16_reg_209_pp0_iter2_reg;
reg   [0:0] icmp_ln16_reg_209_pp0_iter3_reg;
wire   [8:0] select_ln16_fu_155_p3;
reg   [8:0] select_ln16_reg_213;
reg   [8:0] select_ln16_reg_213_pp0_iter1_reg;
wire   [9:0] select_ln16_1_fu_163_p3;
reg   [9:0] select_ln16_1_reg_218;
wire   [8:0] add_ln18_fu_175_p2;
wire   [63:0] zext_ln22_1_fu_184_p1;
reg   [63:0] zext_ln22_1_reg_238;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_exit_iter0_state2;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg   [9:0] ap_phi_mux_i_phi_fu_113_p4;
wire    ap_block_pp0_stage0;
wire   [0:0] icmp_ln18_fu_149_p2;
wire   [9:0] add_ln16_fu_143_p2;
wire   [13:0] grp_fu_195_p3;
wire   [9:0] grp_fu_195_p0;
wire   [7:0] grp_fu_195_p1;
wire   [8:0] grp_fu_195_p2;
wire    ap_CS_fsm_state7;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire   [13:0] grp_fu_195_p00;
wire   [13:0] grp_fu_195_p20;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
end

example_AXI_CPU_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_AXI_CPU_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_AXI_CPU_DATA_WIDTH ))
AXI_CPU_s_axi_U(
    .AWVALID(s_axi_AXI_CPU_AWVALID),
    .AWREADY(s_axi_AXI_CPU_AWREADY),
    .AWADDR(s_axi_AXI_CPU_AWADDR),
    .WVALID(s_axi_AXI_CPU_WVALID),
    .WREADY(s_axi_AXI_CPU_WREADY),
    .WDATA(s_axi_AXI_CPU_WDATA),
    .WSTRB(s_axi_AXI_CPU_WSTRB),
    .ARVALID(s_axi_AXI_CPU_ARVALID),
    .ARREADY(s_axi_AXI_CPU_ARREADY),
    .ARADDR(s_axi_AXI_CPU_ARADDR),
    .RVALID(s_axi_AXI_CPU_RVALID),
    .RREADY(s_axi_AXI_CPU_RREADY),
    .RDATA(s_axi_AXI_CPU_RDATA),
    .RRESP(s_axi_AXI_CPU_RRESP),
    .BVALID(s_axi_AXI_CPU_BVALID),
    .BREADY(s_axi_AXI_CPU_BREADY),
    .BRESP(s_axi_AXI_CPU_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .in_r_address0(in_r_address0),
    .in_r_ce0(in_r_ce0),
    .in_r_q0(in_r_q0),
    .out_r_address0(out_r_address0),
    .out_r_ce0(out_r_ce0),
    .out_r_we0(out_r_we0),
    .out_r_d0(out_r_d0),
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

example_mac_muladd_10ns_8ns_9ns_14_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 10 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 9 ),
    .dout_WIDTH( 14 ))
mac_muladd_10ns_8ns_9ns_14_4_1_U1(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .din0(grp_fu_195_p0),
    .din1(grp_fu_195_p1),
    .din2(grp_fu_195_p2),
    .ce(1'b1),
    .dout(grp_fu_195_p3)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter0 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (1'b1 == ap_condition_pp0_exit_iter0_state2))) begin
            ap_enable_reg_pp0_iter0 <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter0 <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            if ((1'b1 == ap_condition_pp0_exit_iter0_state2)) begin
                ap_enable_reg_pp0_iter1 <= (1'b1 ^ ap_condition_pp0_exit_iter0_state2);
            end else if ((1'b1 == 1'b1)) begin
                ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
            end
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter4 <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln16_reg_209 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        i_reg_109 <= select_ln16_1_reg_218;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        i_reg_109 <= 10'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_137_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_reg_98 <= add_ln16_1_fu_131_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        indvar_flatten_reg_98 <= 19'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_137_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_reg_120 <= add_ln18_fu_175_p2;
    end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
        k_reg_120 <= 9'd0;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln16_reg_209 <= icmp_ln16_fu_137_p2;
        icmp_ln16_reg_209_pp0_iter1_reg <= icmp_ln16_reg_209;
        select_ln16_reg_213_pp0_iter1_reg <= select_ln16_reg_213;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        icmp_ln16_reg_209_pp0_iter2_reg <= icmp_ln16_reg_209_pp0_iter1_reg;
        icmp_ln16_reg_209_pp0_iter3_reg <= icmp_ln16_reg_209_pp0_iter2_reg;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_137_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln16_1_reg_218 <= select_ln16_1_fu_163_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((icmp_ln16_fu_137_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln16_reg_213 <= select_ln16_fu_155_p3;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (icmp_ln16_reg_209_pp0_iter2_reg == 1'd0))) begin
        zext_ln22_1_reg_238[13 : 0] <= zext_ln22_1_fu_184_p1[13 : 0];
    end
end

always @ (*) begin
    if ((icmp_ln16_fu_137_p2 == 1'd1)) begin
        ap_condition_pp0_exit_iter0_state2 = 1'b1;
    end else begin
        ap_condition_pp0_exit_iter0_state2 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter0 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((icmp_ln16_reg_209 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
        ap_phi_mux_i_phi_fu_113_p4 = select_ln16_1_reg_218;
    end else begin
        ap_phi_mux_i_phi_fu_113_p4 = i_reg_109;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        in_r_ce0 = 1'b1;
    end else begin
        in_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        out_r_ce0 = 1'b1;
    end else begin
        out_r_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln16_reg_209_pp0_iter3_reg == 1'd0))) begin
        out_r_we0 = 1'b1;
    end else begin
        out_r_we0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((icmp_ln16_fu_137_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) & ~((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((((icmp_ln16_fu_137_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_enable_reg_pp0_iter1 == 1'b0)) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b0)))) begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln16_1_fu_131_p2 = (indvar_flatten_reg_98 + 19'd1);

assign add_ln16_fu_143_p2 = (ap_phi_mux_i_phi_fu_113_p4 + 10'd1);

assign add_ln18_fu_175_p2 = (select_ln16_fu_155_p3 + 9'd1);

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);

assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state3_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

assign ap_block_state4_pp0_stage0_iter2 = ~(1'b1 == 1'b1);

assign ap_block_state5_pp0_stage0_iter3 = ~(1'b1 == 1'b1);

assign ap_block_state6_pp0_stage0_iter4 = ~(1'b1 == 1'b1);

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_fu_195_p0 = grp_fu_195_p00;

assign grp_fu_195_p00 = select_ln16_1_fu_163_p3;

assign grp_fu_195_p1 = 14'd100;

assign grp_fu_195_p2 = grp_fu_195_p20;

assign grp_fu_195_p20 = select_ln16_reg_213_pp0_iter1_reg;

assign icmp_ln16_fu_137_p2 = ((indvar_flatten_reg_98 == 19'd307200) ? 1'b1 : 1'b0);

assign icmp_ln18_fu_149_p2 = ((k_reg_120 == 9'd480) ? 1'b1 : 1'b0);

assign in_r_address0 = zext_ln22_1_fu_184_p1;

assign out_r_address0 = zext_ln22_1_reg_238;

assign out_r_d0 = (32'd255 - in_r_q0);

assign select_ln16_1_fu_163_p3 = ((icmp_ln18_fu_149_p2[0:0] == 1'b1) ? add_ln16_fu_143_p2 : ap_phi_mux_i_phi_fu_113_p4);

assign select_ln16_fu_155_p3 = ((icmp_ln18_fu_149_p2[0:0] == 1'b1) ? 9'd0 : k_reg_120);

assign zext_ln22_1_fu_184_p1 = grp_fu_195_p3;

always @ (posedge ap_clk) begin
    zext_ln22_1_reg_238[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
end

endmodule //example
