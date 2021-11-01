//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1 (win64) Build 3247384 Thu Jun 10 19:36:33 MDT 2021
//Date        : Wed Sep 15 10:46:09 2021
//Host        : TEK-CB-ESME-02 running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (LED,
    clk,
    en,
    rst);
  output LED;
  input clk;
  input en;
  input rst;

  wire LED;
  wire clk;
  wire en;
  wire rst;

  design_1 design_1_i
       (.LED(LED),
        .clk(clk),
        .en(en),
        .rst(rst));
endmodule
