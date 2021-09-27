// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
// Date        : Mon Sep 27 17:25:30 2021
// Host        : adm-127190 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/esme/Desktop/VivadoProjects/EmbeddedSystems/UART2PWM/project_uart_pwm/project_uart_pwm.gen/sources_1/bd/design_1/ip/design_1_Counter_27_0_0_1/design_1_Counter_27_0_0_stub.v
// Design      : design_1_Counter_27_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "Counter_27,Vivado 2021.1.1" *)
module design_1_Counter_27_0_0(en, clk, rst, count)
/* synthesis syn_black_box black_box_pad_pin="en,clk,rst,count[26:0]" */;
  input en;
  input clk;
  input rst;
  output [26:0]count;
endmodule
