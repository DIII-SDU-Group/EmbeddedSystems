// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
// Date        : Mon Oct 25 17:20:33 2021
// Host        : adm-127190 running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/esme/Desktop/VivadoProjects/EmbeddedSystems/IMU_SPI_UART/project_imu_spi_uart/project_imu_spi_uart.gen/sources_1/bd/design_top/ip/design_top_clk_divider_0_0/design_top_clk_divider_0_0_sim_netlist.v
// Design      : design_top_clk_divider_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_top_clk_divider_0_0,clk_divider,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "clk_divider,Vivado 2021.1.1" *) 
(* NotValidForBitStream *)
module design_top_clk_divider_0_0
   (clk,
    rst,
    clk_div);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN design_top_clk, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  output clk_div;

  wire clk;
  wire clk_div;
  wire rst;

  design_top_clk_divider_0_0_clk_divider U0
       (.clk(clk),
        .clk_div(clk_div),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "clk_divider" *) 
module design_top_clk_divider_0_0_clk_divider
   (clk_div,
    clk,
    rst);
  output clk_div;
  input clk;
  input rst;

  wire clk;
  wire clk_div;
  wire clk_div_sig_i_1_n_0;
  wire clk_div_sig_i_2_n_0;
  wire clk_div_sig_i_3_n_0;
  wire clk_div_sig_i_4_n_0;
  wire clk_div_sig_i_5_n_0;
  wire \count_sig[0]_i_2_n_0 ;
  wire \count_sig[0]_i_3_n_0 ;
  wire \count_sig[0]_i_4_n_0 ;
  wire \count_sig[0]_i_5_n_0 ;
  wire \count_sig[0]_i_6_n_0 ;
  wire \count_sig[12]_i_2_n_0 ;
  wire \count_sig[12]_i_3_n_0 ;
  wire \count_sig[12]_i_4_n_0 ;
  wire \count_sig[12]_i_5_n_0 ;
  wire \count_sig[4]_i_2_n_0 ;
  wire \count_sig[4]_i_3_n_0 ;
  wire \count_sig[4]_i_4_n_0 ;
  wire \count_sig[4]_i_5_n_0 ;
  wire \count_sig[8]_i_2_n_0 ;
  wire \count_sig[8]_i_3_n_0 ;
  wire \count_sig[8]_i_4_n_0 ;
  wire \count_sig[8]_i_5_n_0 ;
  wire [15:0]count_sig_reg;
  wire \count_sig_reg[0]_i_1_n_0 ;
  wire \count_sig_reg[0]_i_1_n_1 ;
  wire \count_sig_reg[0]_i_1_n_2 ;
  wire \count_sig_reg[0]_i_1_n_3 ;
  wire \count_sig_reg[0]_i_1_n_4 ;
  wire \count_sig_reg[0]_i_1_n_5 ;
  wire \count_sig_reg[0]_i_1_n_6 ;
  wire \count_sig_reg[0]_i_1_n_7 ;
  wire \count_sig_reg[12]_i_1_n_1 ;
  wire \count_sig_reg[12]_i_1_n_2 ;
  wire \count_sig_reg[12]_i_1_n_3 ;
  wire \count_sig_reg[12]_i_1_n_4 ;
  wire \count_sig_reg[12]_i_1_n_5 ;
  wire \count_sig_reg[12]_i_1_n_6 ;
  wire \count_sig_reg[12]_i_1_n_7 ;
  wire \count_sig_reg[4]_i_1_n_0 ;
  wire \count_sig_reg[4]_i_1_n_1 ;
  wire \count_sig_reg[4]_i_1_n_2 ;
  wire \count_sig_reg[4]_i_1_n_3 ;
  wire \count_sig_reg[4]_i_1_n_4 ;
  wire \count_sig_reg[4]_i_1_n_5 ;
  wire \count_sig_reg[4]_i_1_n_6 ;
  wire \count_sig_reg[4]_i_1_n_7 ;
  wire \count_sig_reg[8]_i_1_n_0 ;
  wire \count_sig_reg[8]_i_1_n_1 ;
  wire \count_sig_reg[8]_i_1_n_2 ;
  wire \count_sig_reg[8]_i_1_n_3 ;
  wire \count_sig_reg[8]_i_1_n_4 ;
  wire \count_sig_reg[8]_i_1_n_5 ;
  wire \count_sig_reg[8]_i_1_n_6 ;
  wire \count_sig_reg[8]_i_1_n_7 ;
  wire rst;
  wire [3:3]\NLW_count_sig_reg[12]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hEFFFFFFF10000000)) 
    clk_div_sig_i_1
       (.I0(rst),
        .I1(clk_div_sig_i_2_n_0),
        .I2(clk_div_sig_i_3_n_0),
        .I3(clk_div_sig_i_4_n_0),
        .I4(clk_div_sig_i_5_n_0),
        .I5(clk_div),
        .O(clk_div_sig_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    clk_div_sig_i_2
       (.I0(count_sig_reg[9]),
        .I1(count_sig_reg[8]),
        .I2(count_sig_reg[11]),
        .I3(count_sig_reg[10]),
        .O(clk_div_sig_i_2_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    clk_div_sig_i_3
       (.I0(count_sig_reg[14]),
        .I1(count_sig_reg[15]),
        .I2(count_sig_reg[13]),
        .I3(count_sig_reg[12]),
        .O(clk_div_sig_i_3_n_0));
  LUT4 #(
    .INIT(16'h0001)) 
    clk_div_sig_i_4
       (.I0(count_sig_reg[7]),
        .I1(count_sig_reg[6]),
        .I2(count_sig_reg[4]),
        .I3(count_sig_reg[3]),
        .O(clk_div_sig_i_4_n_0));
  LUT4 #(
    .INIT(16'h0010)) 
    clk_div_sig_i_5
       (.I0(count_sig_reg[2]),
        .I1(count_sig_reg[1]),
        .I2(count_sig_reg[5]),
        .I3(count_sig_reg[0]),
        .O(clk_div_sig_i_5_n_0));
  FDRE #(
    .INIT(1'b1)) 
    clk_div_sig_reg
       (.C(clk),
        .CE(1'b1),
        .D(clk_div_sig_i_1_n_0),
        .Q(clk_div),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count_sig[0]_i_2 
       (.I0(count_sig_reg[0]),
        .I1(clk_div_sig_i_5_n_0),
        .I2(clk_div_sig_i_4_n_0),
        .I3(clk_div_sig_i_3_n_0),
        .I4(clk_div_sig_i_2_n_0),
        .O(\count_sig[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count_sig[0]_i_3 
       (.I0(count_sig_reg[3]),
        .I1(clk_div_sig_i_5_n_0),
        .I2(clk_div_sig_i_4_n_0),
        .I3(clk_div_sig_i_3_n_0),
        .I4(clk_div_sig_i_2_n_0),
        .O(\count_sig[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count_sig[0]_i_4 
       (.I0(count_sig_reg[2]),
        .I1(clk_div_sig_i_5_n_0),
        .I2(clk_div_sig_i_4_n_0),
        .I3(clk_div_sig_i_3_n_0),
        .I4(clk_div_sig_i_2_n_0),
        .O(\count_sig[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count_sig[0]_i_5 
       (.I0(count_sig_reg[1]),
        .I1(clk_div_sig_i_5_n_0),
        .I2(clk_div_sig_i_4_n_0),
        .I3(clk_div_sig_i_3_n_0),
        .I4(clk_div_sig_i_2_n_0),
        .O(\count_sig[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h55551555)) 
    \count_sig[0]_i_6 
       (.I0(count_sig_reg[0]),
        .I1(clk_div_sig_i_5_n_0),
        .I2(clk_div_sig_i_4_n_0),
        .I3(clk_div_sig_i_3_n_0),
        .I4(clk_div_sig_i_2_n_0),
        .O(\count_sig[0]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count_sig[12]_i_2 
       (.I0(count_sig_reg[15]),
        .I1(clk_div_sig_i_5_n_0),
        .I2(clk_div_sig_i_4_n_0),
        .I3(clk_div_sig_i_3_n_0),
        .I4(clk_div_sig_i_2_n_0),
        .O(\count_sig[12]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count_sig[12]_i_3 
       (.I0(count_sig_reg[14]),
        .I1(clk_div_sig_i_5_n_0),
        .I2(clk_div_sig_i_4_n_0),
        .I3(clk_div_sig_i_3_n_0),
        .I4(clk_div_sig_i_2_n_0),
        .O(\count_sig[12]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count_sig[12]_i_4 
       (.I0(count_sig_reg[13]),
        .I1(clk_div_sig_i_5_n_0),
        .I2(clk_div_sig_i_4_n_0),
        .I3(clk_div_sig_i_3_n_0),
        .I4(clk_div_sig_i_2_n_0),
        .O(\count_sig[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count_sig[12]_i_5 
       (.I0(count_sig_reg[12]),
        .I1(clk_div_sig_i_5_n_0),
        .I2(clk_div_sig_i_4_n_0),
        .I3(clk_div_sig_i_3_n_0),
        .I4(clk_div_sig_i_2_n_0),
        .O(\count_sig[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count_sig[4]_i_2 
       (.I0(count_sig_reg[7]),
        .I1(clk_div_sig_i_5_n_0),
        .I2(clk_div_sig_i_4_n_0),
        .I3(clk_div_sig_i_3_n_0),
        .I4(clk_div_sig_i_2_n_0),
        .O(\count_sig[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count_sig[4]_i_3 
       (.I0(count_sig_reg[6]),
        .I1(clk_div_sig_i_5_n_0),
        .I2(clk_div_sig_i_4_n_0),
        .I3(clk_div_sig_i_3_n_0),
        .I4(clk_div_sig_i_2_n_0),
        .O(\count_sig[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count_sig[4]_i_4 
       (.I0(count_sig_reg[5]),
        .I1(clk_div_sig_i_5_n_0),
        .I2(clk_div_sig_i_4_n_0),
        .I3(clk_div_sig_i_3_n_0),
        .I4(clk_div_sig_i_2_n_0),
        .O(\count_sig[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count_sig[4]_i_5 
       (.I0(count_sig_reg[4]),
        .I1(clk_div_sig_i_5_n_0),
        .I2(clk_div_sig_i_4_n_0),
        .I3(clk_div_sig_i_3_n_0),
        .I4(clk_div_sig_i_2_n_0),
        .O(\count_sig[4]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count_sig[8]_i_2 
       (.I0(count_sig_reg[11]),
        .I1(clk_div_sig_i_5_n_0),
        .I2(clk_div_sig_i_4_n_0),
        .I3(clk_div_sig_i_3_n_0),
        .I4(clk_div_sig_i_2_n_0),
        .O(\count_sig[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count_sig[8]_i_3 
       (.I0(count_sig_reg[10]),
        .I1(clk_div_sig_i_5_n_0),
        .I2(clk_div_sig_i_4_n_0),
        .I3(clk_div_sig_i_3_n_0),
        .I4(clk_div_sig_i_2_n_0),
        .O(\count_sig[8]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count_sig[8]_i_4 
       (.I0(count_sig_reg[9]),
        .I1(clk_div_sig_i_5_n_0),
        .I2(clk_div_sig_i_4_n_0),
        .I3(clk_div_sig_i_3_n_0),
        .I4(clk_div_sig_i_2_n_0),
        .O(\count_sig[8]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAAAA2AAA)) 
    \count_sig[8]_i_5 
       (.I0(count_sig_reg[8]),
        .I1(clk_div_sig_i_5_n_0),
        .I2(clk_div_sig_i_4_n_0),
        .I3(clk_div_sig_i_3_n_0),
        .I4(clk_div_sig_i_2_n_0),
        .O(\count_sig[8]_i_5_n_0 ));
  FDCE \count_sig_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig_reg[0]_i_1_n_7 ),
        .Q(count_sig_reg[0]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_sig_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\count_sig_reg[0]_i_1_n_0 ,\count_sig_reg[0]_i_1_n_1 ,\count_sig_reg[0]_i_1_n_2 ,\count_sig_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count_sig[0]_i_2_n_0 }),
        .O({\count_sig_reg[0]_i_1_n_4 ,\count_sig_reg[0]_i_1_n_5 ,\count_sig_reg[0]_i_1_n_6 ,\count_sig_reg[0]_i_1_n_7 }),
        .S({\count_sig[0]_i_3_n_0 ,\count_sig[0]_i_4_n_0 ,\count_sig[0]_i_5_n_0 ,\count_sig[0]_i_6_n_0 }));
  FDCE \count_sig_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig_reg[8]_i_1_n_5 ),
        .Q(count_sig_reg[10]));
  FDCE \count_sig_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig_reg[8]_i_1_n_4 ),
        .Q(count_sig_reg[11]));
  FDCE \count_sig_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig_reg[12]_i_1_n_7 ),
        .Q(count_sig_reg[12]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_sig_reg[12]_i_1 
       (.CI(\count_sig_reg[8]_i_1_n_0 ),
        .CO({\NLW_count_sig_reg[12]_i_1_CO_UNCONNECTED [3],\count_sig_reg[12]_i_1_n_1 ,\count_sig_reg[12]_i_1_n_2 ,\count_sig_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[12]_i_1_n_4 ,\count_sig_reg[12]_i_1_n_5 ,\count_sig_reg[12]_i_1_n_6 ,\count_sig_reg[12]_i_1_n_7 }),
        .S({\count_sig[12]_i_2_n_0 ,\count_sig[12]_i_3_n_0 ,\count_sig[12]_i_4_n_0 ,\count_sig[12]_i_5_n_0 }));
  FDCE \count_sig_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig_reg[12]_i_1_n_6 ),
        .Q(count_sig_reg[13]));
  FDCE \count_sig_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig_reg[12]_i_1_n_5 ),
        .Q(count_sig_reg[14]));
  FDCE \count_sig_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig_reg[12]_i_1_n_4 ),
        .Q(count_sig_reg[15]));
  FDCE \count_sig_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig_reg[0]_i_1_n_6 ),
        .Q(count_sig_reg[1]));
  FDCE \count_sig_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig_reg[0]_i_1_n_5 ),
        .Q(count_sig_reg[2]));
  FDCE \count_sig_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig_reg[0]_i_1_n_4 ),
        .Q(count_sig_reg[3]));
  FDCE \count_sig_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig_reg[4]_i_1_n_7 ),
        .Q(count_sig_reg[4]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_sig_reg[4]_i_1 
       (.CI(\count_sig_reg[0]_i_1_n_0 ),
        .CO({\count_sig_reg[4]_i_1_n_0 ,\count_sig_reg[4]_i_1_n_1 ,\count_sig_reg[4]_i_1_n_2 ,\count_sig_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[4]_i_1_n_4 ,\count_sig_reg[4]_i_1_n_5 ,\count_sig_reg[4]_i_1_n_6 ,\count_sig_reg[4]_i_1_n_7 }),
        .S({\count_sig[4]_i_2_n_0 ,\count_sig[4]_i_3_n_0 ,\count_sig[4]_i_4_n_0 ,\count_sig[4]_i_5_n_0 }));
  FDCE \count_sig_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig_reg[4]_i_1_n_6 ),
        .Q(count_sig_reg[5]));
  FDCE \count_sig_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig_reg[4]_i_1_n_5 ),
        .Q(count_sig_reg[6]));
  FDCE \count_sig_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig_reg[4]_i_1_n_4 ),
        .Q(count_sig_reg[7]));
  FDCE \count_sig_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig_reg[8]_i_1_n_7 ),
        .Q(count_sig_reg[8]));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \count_sig_reg[8]_i_1 
       (.CI(\count_sig_reg[4]_i_1_n_0 ),
        .CO({\count_sig_reg[8]_i_1_n_0 ,\count_sig_reg[8]_i_1_n_1 ,\count_sig_reg[8]_i_1_n_2 ,\count_sig_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\count_sig_reg[8]_i_1_n_4 ,\count_sig_reg[8]_i_1_n_5 ,\count_sig_reg[8]_i_1_n_6 ,\count_sig_reg[8]_i_1_n_7 }),
        .S({\count_sig[8]_i_2_n_0 ,\count_sig[8]_i_3_n_0 ,\count_sig[8]_i_4_n_0 ,\count_sig[8]_i_5_n_0 }));
  FDCE \count_sig_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_sig_reg[8]_i_1_n_6 ),
        .Q(count_sig_reg[9]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
