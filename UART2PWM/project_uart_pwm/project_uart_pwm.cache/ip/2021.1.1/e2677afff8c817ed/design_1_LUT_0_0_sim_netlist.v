// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
// Date        : Mon Sep 27 17:25:31 2021
// Host        : adm-127190 running 64-bit Ubuntu 20.04.2 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_LUT_0_0_sim_netlist.v
// Design      : design_1_LUT_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LUT
   (bits,
    percent);
  output [18:0]bits;
  input [3:0]percent;

  wire [18:0]bits;
  wire [3:0]percent;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8202)) 
    \bits[10]_INST_0 
       (.I0(percent[3]),
        .I1(percent[1]),
        .I2(percent[2]),
        .I3(percent[0]),
        .O(bits[8]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \bits[11]_INST_0 
       (.I0(percent[3]),
        .I1(percent[1]),
        .I2(percent[2]),
        .O(bits[9]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h3F80)) 
    \bits[13]_INST_0 
       (.I0(percent[2]),
        .I1(percent[0]),
        .I2(percent[3]),
        .I3(percent[1]),
        .O(bits[10]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hC778)) 
    \bits[14]_INST_0 
       (.I0(percent[1]),
        .I1(percent[3]),
        .I2(percent[2]),
        .I3(percent[0]),
        .O(bits[11]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hCF12)) 
    \bits[15]_INST_0 
       (.I0(percent[3]),
        .I1(percent[2]),
        .I2(percent[0]),
        .I3(percent[1]),
        .O(bits[12]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1534)) 
    \bits[16]_INST_0 
       (.I0(percent[3]),
        .I1(percent[2]),
        .I2(percent[1]),
        .I3(percent[0]),
        .O(bits[13]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hFDFE)) 
    \bits[17]_INST_0 
       (.I0(percent[3]),
        .I1(percent[2]),
        .I2(percent[0]),
        .I3(percent[1]),
        .O(bits[14]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0056)) 
    \bits[18]_INST_0 
       (.I0(percent[3]),
        .I1(percent[2]),
        .I2(percent[1]),
        .I3(percent[0]),
        .O(bits[15]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h5006)) 
    \bits[19]_INST_0 
       (.I0(percent[3]),
        .I1(percent[2]),
        .I2(percent[1]),
        .I3(percent[0]),
        .O(bits[16]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h4442)) 
    \bits[20]_INST_0 
       (.I0(percent[3]),
        .I1(percent[2]),
        .I2(percent[0]),
        .I3(percent[1]),
        .O(bits[17]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    \bits[21]_INST_0 
       (.I0(percent[3]),
        .I1(percent[2]),
        .I2(percent[0]),
        .I3(percent[1]),
        .O(bits[18]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8880)) 
    \bits[2]_INST_0 
       (.I0(percent[3]),
        .I1(percent[0]),
        .I2(percent[1]),
        .I3(percent[2]),
        .O(bits[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \bits[3]_INST_0 
       (.I0(percent[3]),
        .I1(percent[1]),
        .O(bits[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \bits[4]_INST_0 
       (.I0(percent[2]),
        .I1(percent[3]),
        .I2(percent[0]),
        .O(bits[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h8F20)) 
    \bits[5]_INST_0 
       (.I0(percent[2]),
        .I1(percent[0]),
        .I2(percent[3]),
        .I3(percent[1]),
        .O(bits[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hBF40)) 
    \bits[6]_INST_0 
       (.I0(percent[0]),
        .I1(percent[1]),
        .I2(percent[3]),
        .I3(percent[2]),
        .O(bits[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2FB0)) 
    \bits[7]_INST_0 
       (.I0(percent[2]),
        .I1(percent[1]),
        .I2(percent[3]),
        .I3(percent[0]),
        .O(bits[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6F60)) 
    \bits[8]_INST_0 
       (.I0(percent[2]),
        .I1(percent[0]),
        .I2(percent[3]),
        .I3(percent[1]),
        .O(bits[6]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6F00)) 
    \bits[9]_INST_0 
       (.I0(percent[1]),
        .I1(percent[0]),
        .I2(percent[3]),
        .I3(percent[2]),
        .O(bits[7]));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_LUT_0_0,LUT,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "LUT,Vivado 2021.1.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (percent,
    bits);
  input [3:0]percent;
  output [26:0]bits;

  wire \<const0> ;
  wire [21:2]\^bits ;
  wire [3:0]percent;

  assign bits[26] = \<const0> ;
  assign bits[25] = \<const0> ;
  assign bits[24] = \<const0> ;
  assign bits[23] = \<const0> ;
  assign bits[22] = \<const0> ;
  assign bits[21:13] = \^bits [21:13];
  assign bits[12] = percent[0];
  assign bits[11:2] = \^bits [11:2];
  assign bits[1] = \<const0> ;
  assign bits[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_LUT U0
       (.bits({\^bits [21:13],\^bits [11:2]}),
        .percent(percent));
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
