// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
// AXI_CPU
// 0x00000 : Control signals
//           bit 0  - ap_start (Read/Write/COH)
//           bit 1  - ap_done (Read/COR)
//           bit 2  - ap_idle (Read)
//           bit 3  - ap_ready (Read)
//           bit 7  - auto_restart (Read/Write)
//           others - reserved
// 0x00004 : Global Interrupt Enable Register
//           bit 0  - Global Interrupt Enable (Read/Write)
//           others - reserved
// 0x00008 : IP Interrupt Enable Register (Read/Write)
//           bit 0  - enable ap_done interrupt (Read/Write)
//           bit 1  - enable ap_ready interrupt (Read/Write)
//           others - reserved
// 0x0000c : IP Interrupt Status Register (Read/TOW)
//           bit 0  - ap_done (COR/TOW)
//           bit 1  - ap_ready (COR/TOW)
//           others - reserved
// 0x10000 ~
// 0x1ffff : Memory 'in_r' (10000 * 32b)
//           Word n : bit [31:0] - in_r[n]
// 0x20000 ~
// 0x2ffff : Memory 'out_r' (10000 * 32b)
//           Word n : bit [31:0] - out_r[n]
// (SC = Self Clear, COR = Clear on Read, TOW = Toggle on Write, COH = Clear on Handshake)

#define XEXAMPLE_AXI_CPU_ADDR_AP_CTRL    0x00000
#define XEXAMPLE_AXI_CPU_ADDR_GIE        0x00004
#define XEXAMPLE_AXI_CPU_ADDR_IER        0x00008
#define XEXAMPLE_AXI_CPU_ADDR_ISR        0x0000c
#define XEXAMPLE_AXI_CPU_ADDR_IN_R_BASE  0x10000
#define XEXAMPLE_AXI_CPU_ADDR_IN_R_HIGH  0x1ffff
#define XEXAMPLE_AXI_CPU_WIDTH_IN_R      32
#define XEXAMPLE_AXI_CPU_DEPTH_IN_R      10000
#define XEXAMPLE_AXI_CPU_ADDR_OUT_R_BASE 0x20000
#define XEXAMPLE_AXI_CPU_ADDR_OUT_R_HIGH 0x2ffff
#define XEXAMPLE_AXI_CPU_WIDTH_OUT_R     32
#define XEXAMPLE_AXI_CPU_DEPTH_OUT_R     10000

