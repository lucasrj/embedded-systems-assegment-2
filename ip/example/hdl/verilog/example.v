// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
// Version: 2020.2.2
// Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="example_example,hls_ip_2020_2_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xczu3eg-sbva484-1-e,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=1.203000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=41,HLS_SYN_LUT=132,HLS_VERSION=2020_2_2}" *)

module example (
        ap_clk,
        ap_rst_n,
        A_TDATA,
        A_TVALID,
        A_TREADY,
        A_TKEEP,
        A_TSTRB,
        A_TLAST,
        B_TDATA,
        B_TVALID,
        B_TREADY,
        B_TKEEP,
        B_TSTRB,
        B_TLAST,
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
parameter    ap_ST_fsm_state4 = 3'd4;
parameter    C_S_AXI_AXI_CPU_DATA_WIDTH = 32;
parameter    C_S_AXI_AXI_CPU_ADDR_WIDTH = 4;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_AXI_CPU_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input  [31:0] A_TDATA;
input   A_TVALID;
output   A_TREADY;
input  [3:0] A_TKEEP;
input  [3:0] A_TSTRB;
input  [0:0] A_TLAST;
output  [31:0] B_TDATA;
output   B_TVALID;
input   B_TREADY;
output  [3:0] B_TKEEP;
output  [3:0] B_TSTRB;
output  [0:0] B_TLAST;
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
reg    A_TDATA_blk_n;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
wire    ap_block_pp0_stage0;
reg    B_TDATA_blk_n;
reg    ap_enable_reg_pp0_iter1;
reg    ap_block_state2_pp0_stage0_iter0;
reg    ap_block_state3_pp0_stage0_iter1;
reg    ap_block_pp0_stage0_11001;
wire   [0:0] tmp_last_V_fu_96_p1;
reg    ap_block_pp0_stage0_subdone;
reg    ap_condition_pp0_flush_enable;
reg    ap_block_pp0_stage0_01001;
wire    ap_CS_fsm_state4;
wire    regslice_both_B_V_data_V_U_apdone_blk;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0;
wire    ap_enable_pp0;
wire    regslice_both_A_V_data_V_U_apdone_blk;
wire   [31:0] A_TDATA_int_regslice;
wire    A_TVALID_int_regslice;
reg    A_TREADY_int_regslice;
wire    regslice_both_A_V_data_V_U_ack_in;
wire    regslice_both_A_V_keep_V_U_apdone_blk;
wire   [3:0] A_TKEEP_int_regslice;
wire    regslice_both_A_V_keep_V_U_vld_out;
wire    regslice_both_A_V_keep_V_U_ack_in;
wire    regslice_both_A_V_strb_V_U_apdone_blk;
wire   [3:0] A_TSTRB_int_regslice;
wire    regslice_both_A_V_strb_V_U_vld_out;
wire    regslice_both_A_V_strb_V_U_ack_in;
wire    regslice_both_A_V_last_V_U_apdone_blk;
wire   [0:0] A_TLAST_int_regslice;
wire    regslice_both_A_V_last_V_U_vld_out;
wire    regslice_both_A_V_last_V_U_ack_in;
wire   [31:0] B_TDATA_int_regslice;
reg    B_TVALID_int_regslice;
wire    B_TREADY_int_regslice;
wire    regslice_both_B_V_data_V_U_vld_out;
wire    regslice_both_B_V_keep_V_U_apdone_blk;
wire    regslice_both_B_V_keep_V_U_ack_in_dummy;
wire    regslice_both_B_V_keep_V_U_vld_out;
wire    regslice_both_B_V_strb_V_U_apdone_blk;
wire    regslice_both_B_V_strb_V_U_ack_in_dummy;
wire    regslice_both_B_V_strb_V_U_vld_out;
wire    regslice_both_B_V_last_V_U_apdone_blk;
wire    regslice_both_B_V_last_V_U_ack_in_dummy;
wire    regslice_both_B_V_last_V_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter0 = 1'b0;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
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
    .ap_start(ap_start),
    .interrupt(interrupt),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_idle(ap_idle)
);

example_regslice_both #(
    .DataWidth( 32 ))
regslice_both_A_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(A_TDATA),
    .vld_in(A_TVALID),
    .ack_in(regslice_both_A_V_data_V_U_ack_in),
    .data_out(A_TDATA_int_regslice),
    .vld_out(A_TVALID_int_regslice),
    .ack_out(A_TREADY_int_regslice),
    .apdone_blk(regslice_both_A_V_data_V_U_apdone_blk)
);

example_regslice_both #(
    .DataWidth( 4 ))
regslice_both_A_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(A_TKEEP),
    .vld_in(A_TVALID),
    .ack_in(regslice_both_A_V_keep_V_U_ack_in),
    .data_out(A_TKEEP_int_regslice),
    .vld_out(regslice_both_A_V_keep_V_U_vld_out),
    .ack_out(A_TREADY_int_regslice),
    .apdone_blk(regslice_both_A_V_keep_V_U_apdone_blk)
);

example_regslice_both #(
    .DataWidth( 4 ))
regslice_both_A_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(A_TSTRB),
    .vld_in(A_TVALID),
    .ack_in(regslice_both_A_V_strb_V_U_ack_in),
    .data_out(A_TSTRB_int_regslice),
    .vld_out(regslice_both_A_V_strb_V_U_vld_out),
    .ack_out(A_TREADY_int_regslice),
    .apdone_blk(regslice_both_A_V_strb_V_U_apdone_blk)
);

example_regslice_both #(
    .DataWidth( 1 ))
regslice_both_A_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(A_TLAST),
    .vld_in(A_TVALID),
    .ack_in(regslice_both_A_V_last_V_U_ack_in),
    .data_out(A_TLAST_int_regslice),
    .vld_out(regslice_both_A_V_last_V_U_vld_out),
    .ack_out(A_TREADY_int_regslice),
    .apdone_blk(regslice_both_A_V_last_V_U_apdone_blk)
);

example_regslice_both #(
    .DataWidth( 32 ))
regslice_both_B_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(B_TDATA_int_regslice),
    .vld_in(B_TVALID_int_regslice),
    .ack_in(B_TREADY_int_regslice),
    .data_out(B_TDATA),
    .vld_out(regslice_both_B_V_data_V_U_vld_out),
    .ack_out(B_TREADY),
    .apdone_blk(regslice_both_B_V_data_V_U_apdone_blk)
);

example_regslice_both #(
    .DataWidth( 4 ))
regslice_both_B_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(A_TKEEP_int_regslice),
    .vld_in(B_TVALID_int_regslice),
    .ack_in(regslice_both_B_V_keep_V_U_ack_in_dummy),
    .data_out(B_TKEEP),
    .vld_out(regslice_both_B_V_keep_V_U_vld_out),
    .ack_out(B_TREADY),
    .apdone_blk(regslice_both_B_V_keep_V_U_apdone_blk)
);

example_regslice_both #(
    .DataWidth( 4 ))
regslice_both_B_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(A_TSTRB_int_regslice),
    .vld_in(B_TVALID_int_regslice),
    .ack_in(regslice_both_B_V_strb_V_U_ack_in_dummy),
    .data_out(B_TSTRB),
    .vld_out(regslice_both_B_V_strb_V_U_vld_out),
    .ack_out(B_TREADY),
    .apdone_blk(regslice_both_B_V_strb_V_U_apdone_blk)
);

example_regslice_both #(
    .DataWidth( 1 ))
regslice_both_B_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(A_TLAST_int_regslice),
    .vld_in(B_TVALID_int_regslice),
    .ack_in(regslice_both_B_V_last_V_U_ack_in_dummy),
    .data_out(B_TLAST),
    .vld_out(regslice_both_B_V_last_V_U_vld_out),
    .ack_out(B_TREADY),
    .apdone_blk(regslice_both_B_V_last_V_U_apdone_blk)
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
        if ((1'b1 == ap_condition_pp0_flush_enable)) begin
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
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end else if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b1))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_TDATA_blk_n = A_TVALID_int_regslice;
    end else begin
        A_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        A_TREADY_int_regslice = 1'b1;
    end else begin
        A_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if ((((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        B_TDATA_blk_n = B_TREADY_int_regslice;
    end else begin
        B_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        B_TVALID_int_regslice = 1'b1;
    end else begin
        B_TVALID_int_regslice = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_last_V_fu_96_p1 == 1'd1))) begin
        ap_condition_pp0_flush_enable = 1'b1;
    end else begin
        ap_condition_pp0_flush_enable = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (regslice_both_B_V_data_V_U_apdone_blk == 1'b0))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state4) & (regslice_both_B_V_data_V_U_apdone_blk == 1'b0))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
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
            if (~((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (regslice_both_B_V_data_V_U_apdone_blk == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign A_TREADY = regslice_both_A_V_data_V_U_ack_in;

assign B_TDATA_int_regslice = (32'd255 - A_TDATA_int_regslice);

assign B_TVALID = regslice_both_B_V_data_V_U_vld_out;

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd2];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == B_TREADY_int_regslice)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & ((1'b0 == B_TREADY_int_regslice) | (1'b0 == A_TVALID_int_regslice))));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == B_TREADY_int_regslice)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & ((1'b0 == B_TREADY_int_regslice) | (1'b0 == A_TVALID_int_regslice))));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = (((ap_enable_reg_pp0_iter1 == 1'b1) & (1'b0 == B_TREADY_int_regslice)) | ((ap_enable_reg_pp0_iter0 == 1'b1) & ((1'b0 == B_TREADY_int_regslice) | (1'b0 == A_TVALID_int_regslice))));
end

always @ (*) begin
    ap_block_state2_pp0_stage0_iter0 = ((1'b0 == B_TREADY_int_regslice) | (1'b0 == A_TVALID_int_regslice));
end

always @ (*) begin
    ap_block_state3_pp0_stage0_iter1 = (1'b0 == B_TREADY_int_regslice);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign tmp_last_V_fu_96_p1 = A_TLAST_int_regslice;

endmodule //example
