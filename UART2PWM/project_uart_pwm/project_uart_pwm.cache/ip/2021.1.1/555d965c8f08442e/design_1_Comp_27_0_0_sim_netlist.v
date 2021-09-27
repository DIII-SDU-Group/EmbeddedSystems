// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
// Date        : Mon Sep 27 17:25:30 2021
// Host        : adm-127190 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_Comp_27_0_0_sim_netlist.v
// Design      : design_1_Comp_27_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Comp_27
   (z,
    y,
    x);
  output z;
  input [26:0]y;
  input [26:0]x;

  wire [26:0]x;
  wire [26:0]y;
  wire z;
  wire z_INST_0_i_10_n_0;
  wire z_INST_0_i_11_n_0;
  wire z_INST_0_i_12_n_0;
  wire z_INST_0_i_13_n_0;
  wire z_INST_0_i_14_n_0;
  wire z_INST_0_i_15_n_0;
  wire z_INST_0_i_15_n_1;
  wire z_INST_0_i_15_n_2;
  wire z_INST_0_i_15_n_3;
  wire z_INST_0_i_16_n_0;
  wire z_INST_0_i_17_n_0;
  wire z_INST_0_i_18_n_0;
  wire z_INST_0_i_19_n_0;
  wire z_INST_0_i_1_n_0;
  wire z_INST_0_i_1_n_1;
  wire z_INST_0_i_1_n_2;
  wire z_INST_0_i_1_n_3;
  wire z_INST_0_i_20_n_0;
  wire z_INST_0_i_21_n_0;
  wire z_INST_0_i_22_n_0;
  wire z_INST_0_i_23_n_0;
  wire z_INST_0_i_24_n_0;
  wire z_INST_0_i_25_n_0;
  wire z_INST_0_i_26_n_0;
  wire z_INST_0_i_27_n_0;
  wire z_INST_0_i_28_n_0;
  wire z_INST_0_i_29_n_0;
  wire z_INST_0_i_2_n_0;
  wire z_INST_0_i_30_n_0;
  wire z_INST_0_i_31_n_0;
  wire z_INST_0_i_3_n_0;
  wire z_INST_0_i_4_n_0;
  wire z_INST_0_i_5_n_0;
  wire z_INST_0_i_6_n_0;
  wire z_INST_0_i_6_n_1;
  wire z_INST_0_i_6_n_2;
  wire z_INST_0_i_6_n_3;
  wire z_INST_0_i_7_n_0;
  wire z_INST_0_i_8_n_0;
  wire z_INST_0_i_9_n_0;
  wire z_INST_0_n_3;
  wire [3:2]NLW_z_INST_0_CO_UNCONNECTED;
  wire [3:0]NLW_z_INST_0_O_UNCONNECTED;
  wire [3:0]NLW_z_INST_0_i_1_O_UNCONNECTED;
  wire [3:0]NLW_z_INST_0_i_15_O_UNCONNECTED;
  wire [3:0]NLW_z_INST_0_i_6_O_UNCONNECTED;

  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 z_INST_0
       (.CI(z_INST_0_i_1_n_0),
        .CO({NLW_z_INST_0_CO_UNCONNECTED[3:2],z,z_INST_0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,z_INST_0_i_2_n_0,z_INST_0_i_3_n_0}),
        .O(NLW_z_INST_0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,z_INST_0_i_4_n_0,z_INST_0_i_5_n_0}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 z_INST_0_i_1
       (.CI(z_INST_0_i_6_n_0),
        .CO({z_INST_0_i_1_n_0,z_INST_0_i_1_n_1,z_INST_0_i_1_n_2,z_INST_0_i_1_n_3}),
        .CYINIT(1'b0),
        .DI({z_INST_0_i_7_n_0,z_INST_0_i_8_n_0,z_INST_0_i_9_n_0,z_INST_0_i_10_n_0}),
        .O(NLW_z_INST_0_i_1_O_UNCONNECTED[3:0]),
        .S({z_INST_0_i_11_n_0,z_INST_0_i_12_n_0,z_INST_0_i_13_n_0,z_INST_0_i_14_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    z_INST_0_i_10
       (.I0(y[16]),
        .I1(x[16]),
        .I2(x[17]),
        .I3(y[17]),
        .O(z_INST_0_i_10_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    z_INST_0_i_11
       (.I0(y[22]),
        .I1(x[22]),
        .I2(y[23]),
        .I3(x[23]),
        .O(z_INST_0_i_11_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    z_INST_0_i_12
       (.I0(y[20]),
        .I1(x[20]),
        .I2(y[21]),
        .I3(x[21]),
        .O(z_INST_0_i_12_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    z_INST_0_i_13
       (.I0(y[18]),
        .I1(x[18]),
        .I2(y[19]),
        .I3(x[19]),
        .O(z_INST_0_i_13_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    z_INST_0_i_14
       (.I0(y[16]),
        .I1(x[16]),
        .I2(y[17]),
        .I3(x[17]),
        .O(z_INST_0_i_14_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 z_INST_0_i_15
       (.CI(1'b0),
        .CO({z_INST_0_i_15_n_0,z_INST_0_i_15_n_1,z_INST_0_i_15_n_2,z_INST_0_i_15_n_3}),
        .CYINIT(1'b1),
        .DI({z_INST_0_i_24_n_0,z_INST_0_i_25_n_0,z_INST_0_i_26_n_0,z_INST_0_i_27_n_0}),
        .O(NLW_z_INST_0_i_15_O_UNCONNECTED[3:0]),
        .S({z_INST_0_i_28_n_0,z_INST_0_i_29_n_0,z_INST_0_i_30_n_0,z_INST_0_i_31_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    z_INST_0_i_16
       (.I0(y[14]),
        .I1(x[14]),
        .I2(x[15]),
        .I3(y[15]),
        .O(z_INST_0_i_16_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    z_INST_0_i_17
       (.I0(y[12]),
        .I1(x[12]),
        .I2(x[13]),
        .I3(y[13]),
        .O(z_INST_0_i_17_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    z_INST_0_i_18
       (.I0(y[10]),
        .I1(x[10]),
        .I2(x[11]),
        .I3(y[11]),
        .O(z_INST_0_i_18_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    z_INST_0_i_19
       (.I0(y[8]),
        .I1(x[8]),
        .I2(x[9]),
        .I3(y[9]),
        .O(z_INST_0_i_19_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    z_INST_0_i_2
       (.I0(y[26]),
        .I1(x[26]),
        .O(z_INST_0_i_2_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    z_INST_0_i_20
       (.I0(y[14]),
        .I1(x[14]),
        .I2(y[15]),
        .I3(x[15]),
        .O(z_INST_0_i_20_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    z_INST_0_i_21
       (.I0(y[12]),
        .I1(x[12]),
        .I2(y[13]),
        .I3(x[13]),
        .O(z_INST_0_i_21_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    z_INST_0_i_22
       (.I0(y[10]),
        .I1(x[10]),
        .I2(y[11]),
        .I3(x[11]),
        .O(z_INST_0_i_22_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    z_INST_0_i_23
       (.I0(y[8]),
        .I1(x[8]),
        .I2(y[9]),
        .I3(x[9]),
        .O(z_INST_0_i_23_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    z_INST_0_i_24
       (.I0(y[6]),
        .I1(x[6]),
        .I2(x[7]),
        .I3(y[7]),
        .O(z_INST_0_i_24_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    z_INST_0_i_25
       (.I0(y[4]),
        .I1(x[4]),
        .I2(x[5]),
        .I3(y[5]),
        .O(z_INST_0_i_25_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    z_INST_0_i_26
       (.I0(y[2]),
        .I1(x[2]),
        .I2(x[3]),
        .I3(y[3]),
        .O(z_INST_0_i_26_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    z_INST_0_i_27
       (.I0(y[0]),
        .I1(x[0]),
        .I2(x[1]),
        .I3(y[1]),
        .O(z_INST_0_i_27_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    z_INST_0_i_28
       (.I0(y[6]),
        .I1(x[6]),
        .I2(y[7]),
        .I3(x[7]),
        .O(z_INST_0_i_28_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    z_INST_0_i_29
       (.I0(y[4]),
        .I1(x[4]),
        .I2(y[5]),
        .I3(x[5]),
        .O(z_INST_0_i_29_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    z_INST_0_i_3
       (.I0(y[24]),
        .I1(x[24]),
        .I2(x[25]),
        .I3(y[25]),
        .O(z_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    z_INST_0_i_30
       (.I0(y[2]),
        .I1(x[2]),
        .I2(y[3]),
        .I3(x[3]),
        .O(z_INST_0_i_30_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    z_INST_0_i_31
       (.I0(y[0]),
        .I1(x[0]),
        .I2(y[1]),
        .I3(x[1]),
        .O(z_INST_0_i_31_n_0));
  LUT2 #(
    .INIT(4'h9)) 
    z_INST_0_i_4
       (.I0(x[26]),
        .I1(y[26]),
        .O(z_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    z_INST_0_i_5
       (.I0(y[24]),
        .I1(x[24]),
        .I2(y[25]),
        .I3(x[25]),
        .O(z_INST_0_i_5_n_0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY4 z_INST_0_i_6
       (.CI(z_INST_0_i_15_n_0),
        .CO({z_INST_0_i_6_n_0,z_INST_0_i_6_n_1,z_INST_0_i_6_n_2,z_INST_0_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({z_INST_0_i_16_n_0,z_INST_0_i_17_n_0,z_INST_0_i_18_n_0,z_INST_0_i_19_n_0}),
        .O(NLW_z_INST_0_i_6_O_UNCONNECTED[3:0]),
        .S({z_INST_0_i_20_n_0,z_INST_0_i_21_n_0,z_INST_0_i_22_n_0,z_INST_0_i_23_n_0}));
  LUT4 #(
    .INIT(16'h2F02)) 
    z_INST_0_i_7
       (.I0(y[22]),
        .I1(x[22]),
        .I2(x[23]),
        .I3(y[23]),
        .O(z_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    z_INST_0_i_8
       (.I0(y[20]),
        .I1(x[20]),
        .I2(x[21]),
        .I3(y[21]),
        .O(z_INST_0_i_8_n_0));
  LUT4 #(
    .INIT(16'h2F02)) 
    z_INST_0_i_9
       (.I0(y[18]),
        .I1(x[18]),
        .I2(x[19]),
        .I3(y[19]),
        .O(z_INST_0_i_9_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_Comp_27_0_0,Comp_27,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Comp_27,Vivado 2021.1.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (x,
    y,
    z);
  input [26:0]x;
  input [26:0]y;
  output z;

  wire [26:0]x;
  wire [26:0]y;
  wire z;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_Comp_27 U0
       (.x(x),
        .y(y),
        .z(z));
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
