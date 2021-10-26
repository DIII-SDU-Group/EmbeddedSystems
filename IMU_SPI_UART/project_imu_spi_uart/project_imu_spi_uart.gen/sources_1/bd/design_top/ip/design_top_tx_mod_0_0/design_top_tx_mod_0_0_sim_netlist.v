// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
// Date        : Mon Oct 25 17:20:32 2021
// Host        : adm-127190 running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/esme/Desktop/VivadoProjects/EmbeddedSystems/IMU_SPI_UART/project_imu_spi_uart/project_imu_spi_uart.gen/sources_1/bd/design_top/ip/design_top_tx_mod_0_0/design_top_tx_mod_0_0_sim_netlist.v
// Design      : design_top_tx_mod_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_top_tx_mod_0_0,tx_mod,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "tx_mod,Vivado 2021.1.1" *) 
(* NotValidForBitStream *)
module design_top_tx_mod_0_0
   (clkfast,
    data_in,
    rst,
    shift_load,
    sout,
    xmitmt);
  input clkfast;
  input [7:0]data_in;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input shift_load;
  output sout;
  output xmitmt;

  wire clkfast;
  wire [7:0]data_in;
  wire rst;
  wire shift_load;
  wire sout;
  wire xmitmt;

  design_top_tx_mod_0_0_tx_mod U0
       (.clkfast(clkfast),
        .data_in(data_in),
        .rst(rst),
        .shift_load(shift_load),
        .sout(sout),
        .xmitmt(xmitmt));
endmodule

(* ORIG_REF_NAME = "tx_mod" *) 
module design_top_tx_mod_0_0_tx_mod
   (sout,
    xmitmt,
    clkfast,
    rst,
    shift_load,
    data_in);
  output sout;
  output xmitmt;
  input clkfast;
  input rst;
  input shift_load;
  input [7:0]data_in;

  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state[2]_i_2_n_0 ;
  wire clkfast;
  wire \cnt_bit[0]_i_1_n_0 ;
  wire \cnt_bit[1]_i_1_n_0 ;
  wire \cnt_bit[2]_i_1_n_0 ;
  wire \cnt_bit[3]_i_1_n_0 ;
  wire \cnt_bit[3]_i_2_n_0 ;
  wire \cnt_bit_reg_n_0_[0] ;
  wire \cnt_bit_reg_n_0_[1] ;
  wire \cnt_bit_reg_n_0_[2] ;
  wire \cnt_bit_reg_n_0_[3] ;
  wire count;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[3]_i_2_n_0 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire [2:0]current_state;
  wire [7:0]data_in;
  wire [8:0]in9;
  wire [2:0]next_state;
  wire reg_data;
  wire [9:0]reg_data0_in;
  wire rst;
  wire shift_load;
  wire sout;
  wire xmitmt;

  LUT6 #(
    .INIT(64'h00CC0030008800B8)) 
    \FSM_sequential_current_state[0]_i_1 
       (.I0(\count_reg_n_0_[3] ),
        .I1(current_state[1]),
        .I2(shift_load),
        .I3(current_state[2]),
        .I4(current_state[0]),
        .I5(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .O(next_state[0]));
  LUT6 #(
    .INIT(64'h00000000FFF9AAAA)) 
    \FSM_sequential_current_state[1]_i_1 
       (.I0(current_state[0]),
        .I1(\count_reg_n_0_[3] ),
        .I2(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I3(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .I4(current_state[1]),
        .I5(current_state[2]),
        .O(next_state[1]));
  LUT5 #(
    .INIT(32'h02000000)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(\cnt_bit_reg_n_0_[0] ),
        .I1(\cnt_bit_reg_n_0_[1] ),
        .I2(\cnt_bit_reg_n_0_[2] ),
        .I3(\count_reg_n_0_[3] ),
        .I4(\cnt_bit_reg_n_0_[3] ),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h80808080A3A0A0A0)) 
    \FSM_sequential_current_state[2]_i_1 
       (.I0(shift_load),
        .I1(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .I2(current_state[2]),
        .I3(current_state[0]),
        .I4(current_state[1]),
        .I5(\count_reg_n_0_[3] ),
        .O(next_state[2]));
  LUT3 #(
    .INIT(8'h7F)) 
    \FSM_sequential_current_state[2]_i_2 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[2] ),
        .O(\FSM_sequential_current_state[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "s2:010,s1:001,s3:011,s4:100,s0:000" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(clkfast),
        .CE(1'b1),
        .CLR(rst),
        .D(next_state[0]),
        .Q(current_state[0]));
  (* FSM_ENCODED_STATES = "s2:010,s1:001,s3:011,s4:100,s0:000" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(clkfast),
        .CE(1'b1),
        .CLR(rst),
        .D(next_state[1]),
        .Q(current_state[1]));
  (* FSM_ENCODED_STATES = "s2:010,s1:001,s3:011,s4:100,s0:000" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(clkfast),
        .CE(1'b1),
        .CLR(rst),
        .D(next_state[2]),
        .Q(current_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_bit[0]_i_1 
       (.I0(current_state[0]),
        .I1(\cnt_bit_reg_n_0_[0] ),
        .O(\cnt_bit[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \cnt_bit[1]_i_1 
       (.I0(current_state[0]),
        .I1(\cnt_bit_reg_n_0_[1] ),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .O(\cnt_bit[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \cnt_bit[2]_i_1 
       (.I0(current_state[0]),
        .I1(\cnt_bit_reg_n_0_[2] ),
        .I2(\cnt_bit_reg_n_0_[0] ),
        .I3(\cnt_bit_reg_n_0_[1] ),
        .O(\cnt_bit[2]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    \cnt_bit[3]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .O(\cnt_bit[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \cnt_bit[3]_i_2 
       (.I0(current_state[0]),
        .I1(\cnt_bit_reg_n_0_[3] ),
        .I2(\cnt_bit_reg_n_0_[2] ),
        .I3(\cnt_bit_reg_n_0_[1] ),
        .I4(\cnt_bit_reg_n_0_[0] ),
        .O(\cnt_bit[3]_i_2_n_0 ));
  FDCE \cnt_bit_reg[0] 
       (.C(clkfast),
        .CE(\cnt_bit[3]_i_1_n_0 ),
        .CLR(rst),
        .D(\cnt_bit[0]_i_1_n_0 ),
        .Q(\cnt_bit_reg_n_0_[0] ));
  FDCE \cnt_bit_reg[1] 
       (.C(clkfast),
        .CE(\cnt_bit[3]_i_1_n_0 ),
        .CLR(rst),
        .D(\cnt_bit[1]_i_1_n_0 ),
        .Q(\cnt_bit_reg_n_0_[1] ));
  FDCE \cnt_bit_reg[2] 
       (.C(clkfast),
        .CE(\cnt_bit[3]_i_1_n_0 ),
        .CLR(rst),
        .D(\cnt_bit[2]_i_1_n_0 ),
        .Q(\cnt_bit_reg_n_0_[2] ));
  FDCE \cnt_bit_reg[3] 
       (.C(clkfast),
        .CE(\cnt_bit[3]_i_1_n_0 ),
        .CLR(rst),
        .D(\cnt_bit[3]_i_2_n_0 ),
        .Q(\cnt_bit_reg_n_0_[3] ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0036)) 
    \count[0]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00363600)) 
    \count[1]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(\count_reg_n_0_[1] ),
        .I4(\count_reg_n_0_[0] ),
        .O(\count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0036360036003600)) 
    \count[2]_i_1 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(\count_reg_n_0_[2] ),
        .I4(\count_reg_n_0_[0] ),
        .I5(\count_reg_n_0_[1] ),
        .O(\count[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \count[3]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[0]),
        .I2(current_state[2]),
        .O(count));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h36000036)) 
    \count[3]_i_2 
       (.I0(current_state[0]),
        .I1(current_state[2]),
        .I2(current_state[1]),
        .I3(\count_reg_n_0_[3] ),
        .I4(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .O(\count[3]_i_2_n_0 ));
  FDCE \count_reg[0] 
       (.C(clkfast),
        .CE(count),
        .CLR(rst),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ));
  FDCE \count_reg[1] 
       (.C(clkfast),
        .CE(count),
        .CLR(rst),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ));
  FDCE \count_reg[2] 
       (.C(clkfast),
        .CE(count),
        .CLR(rst),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ));
  FDCE \count_reg[3] 
       (.C(clkfast),
        .CE(count),
        .CLR(rst),
        .D(\count[3]_i_2_n_0 ),
        .Q(\count_reg_n_0_[3] ));
  LUT3 #(
    .INIT(8'h31)) 
    \reg_data[0]_i_1 
       (.I0(current_state[1]),
        .I1(current_state[2]),
        .I2(current_state[0]),
        .O(reg_data));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \reg_data[0]_i_2 
       (.I0(in9[0]),
        .I1(current_state[0]),
        .O(reg_data0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \reg_data[1]_i_1 
       (.I0(current_state[0]),
        .I1(in9[1]),
        .O(reg_data0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_data[2]_i_1 
       (.I0(in9[2]),
        .I1(data_in[0]),
        .I2(current_state[0]),
        .O(reg_data0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_data[3]_i_1 
       (.I0(in9[3]),
        .I1(data_in[1]),
        .I2(current_state[0]),
        .O(reg_data0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_data[4]_i_1 
       (.I0(in9[4]),
        .I1(data_in[2]),
        .I2(current_state[0]),
        .O(reg_data0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_data[5]_i_1 
       (.I0(in9[5]),
        .I1(data_in[3]),
        .I2(current_state[0]),
        .O(reg_data0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_data[6]_i_1 
       (.I0(in9[6]),
        .I1(data_in[4]),
        .I2(current_state[0]),
        .O(reg_data0_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_data[7]_i_1 
       (.I0(in9[7]),
        .I1(data_in[5]),
        .I2(current_state[0]),
        .O(reg_data0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hAC)) 
    \reg_data[8]_i_1 
       (.I0(in9[8]),
        .I1(data_in[6]),
        .I2(current_state[0]),
        .O(reg_data0_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \reg_data[9]_i_1 
       (.I0(data_in[7]),
        .I1(current_state[0]),
        .O(reg_data0_in[9]));
  FDPE \reg_data_reg[0] 
       (.C(clkfast),
        .CE(reg_data),
        .D(reg_data0_in[0]),
        .PRE(rst),
        .Q(sout));
  FDPE \reg_data_reg[1] 
       (.C(clkfast),
        .CE(reg_data),
        .D(reg_data0_in[1]),
        .PRE(rst),
        .Q(in9[0]));
  FDPE \reg_data_reg[2] 
       (.C(clkfast),
        .CE(reg_data),
        .D(reg_data0_in[2]),
        .PRE(rst),
        .Q(in9[1]));
  FDPE \reg_data_reg[3] 
       (.C(clkfast),
        .CE(reg_data),
        .D(reg_data0_in[3]),
        .PRE(rst),
        .Q(in9[2]));
  FDPE \reg_data_reg[4] 
       (.C(clkfast),
        .CE(reg_data),
        .D(reg_data0_in[4]),
        .PRE(rst),
        .Q(in9[3]));
  FDPE \reg_data_reg[5] 
       (.C(clkfast),
        .CE(reg_data),
        .D(reg_data0_in[5]),
        .PRE(rst),
        .Q(in9[4]));
  FDPE \reg_data_reg[6] 
       (.C(clkfast),
        .CE(reg_data),
        .D(reg_data0_in[6]),
        .PRE(rst),
        .Q(in9[5]));
  FDPE \reg_data_reg[7] 
       (.C(clkfast),
        .CE(reg_data),
        .D(reg_data0_in[7]),
        .PRE(rst),
        .Q(in9[6]));
  FDPE \reg_data_reg[8] 
       (.C(clkfast),
        .CE(reg_data),
        .D(reg_data0_in[8]),
        .PRE(rst),
        .Q(in9[7]));
  FDPE \reg_data_reg[9] 
       (.C(clkfast),
        .CE(reg_data),
        .D(reg_data0_in[9]),
        .PRE(rst),
        .Q(in9[8]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    xmitmt_INST_0
       (.I0(current_state[0]),
        .I1(current_state[1]),
        .O(xmitmt));
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
