// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
// Date        : Mon Oct 25 17:20:33 2021
// Host        : adm-127190 running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/esme/Desktop/VivadoProjects/EmbeddedSystems/IMU_SPI_UART/project_imu_spi_uart/project_imu_spi_uart.gen/sources_1/bd/design_top/ip/design_top_Addr_ctrl_0_0/design_top_Addr_ctrl_0_0_sim_netlist.v
// Design      : design_top_Addr_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_top_Addr_ctrl_0_0,Addr_ctrl,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "Addr_ctrl,Vivado 2021.1.1" *) 
(* NotValidForBitStream *)
module design_top_Addr_ctrl_0_0
   (clk,
    addr,
    dout);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  input [3:0]addr;
  output [7:0]dout;

  wire \<const0> ;
  wire [3:0]addr;
  wire clk;
  wire [5:0]\^dout ;

  assign dout[7] = \<const0> ;
  assign dout[6] = \<const0> ;
  assign dout[5:0] = \^dout [5:0];
  GND GND
       (.G(\<const0> ));
  design_top_Addr_ctrl_0_0_Addr_ctrl U0
       (.addr(addr),
        .clk(clk),
        .dout(\^dout ));
endmodule

(* ORIG_REF_NAME = "Addr_ctrl" *) 
module design_top_Addr_ctrl_0_0_Addr_ctrl
   (dout,
    addr,
    clk);
  output [5:0]dout;
  input [3:0]addr;
  input clk;

  wire [3:0]addr;
  wire clk;
  wire [5:0]dout;
  wire \dout[5]_i_1_n_0 ;
  wire [4:0]\rom[0]_0 ;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \dout[0]_i_1 
       (.I0(addr[1]),
        .I1(addr[2]),
        .I2(addr[3]),
        .I3(addr[0]),
        .O(\rom[0]_0 [0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F00)) 
    \dout[1]_i_1 
       (.I0(addr[0]),
        .I1(addr[2]),
        .I2(addr[3]),
        .I3(addr[1]),
        .O(\rom[0]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \dout[2]_i_1 
       (.I0(addr[2]),
        .O(\rom[0]_0 [2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h2A54)) 
    \dout[3]_i_1 
       (.I0(addr[3]),
        .I1(addr[1]),
        .I2(addr[0]),
        .I3(addr[2]),
        .O(\rom[0]_0 [3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6EEF)) 
    \dout[4]_i_1 
       (.I0(addr[3]),
        .I1(addr[2]),
        .I2(addr[0]),
        .I3(addr[1]),
        .O(\rom[0]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \dout[5]_i_1 
       (.I0(addr[2]),
        .I1(addr[1]),
        .I2(addr[0]),
        .I3(addr[3]),
        .O(\dout[5]_i_1_n_0 ));
  FDRE \dout_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\rom[0]_0 [0]),
        .Q(dout[0]),
        .R(1'b0));
  FDRE \dout_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\rom[0]_0 [1]),
        .Q(dout[1]),
        .R(1'b0));
  FDRE \dout_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\rom[0]_0 [2]),
        .Q(dout[2]),
        .R(1'b0));
  FDRE \dout_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\rom[0]_0 [3]),
        .Q(dout[3]),
        .R(1'b0));
  FDRE \dout_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\rom[0]_0 [4]),
        .Q(dout[4]),
        .R(1'b0));
  FDRE \dout_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\dout[5]_i_1_n_0 ),
        .Q(dout[5]),
        .R(1'b0));
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
