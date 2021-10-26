// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1.1 (lin64) Build 3286242 Wed Jul 28 13:09:46 MDT 2021
// Date        : Mon Oct 25 17:20:32 2021
// Host        : adm-127190 running 64-bit Ubuntu 20.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/esme/Desktop/VivadoProjects/EmbeddedSystems/IMU_SPI_UART/project_imu_spi_uart/project_imu_spi_uart.gen/sources_1/bd/design_top/ip/design_top_CTRL_0_0/design_top_CTRL_0_0_sim_netlist.v
// Design      : design_top_CTRL_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_top_CTRL_0_0,CTRL,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "CTRL,Vivado 2021.1.1" *) 
(* NotValidForBitStream *)
module design_top_CTRL_0_0
   (clk,
    rst,
    en,
    addr1,
    data1,
    data_ready,
    cs,
    SCLK,
    MOSI,
    MISO);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk, ASSOCIATED_RESET rst, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, INSERT_VIP 0" *) input clk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 rst RST" *) (* x_interface_parameter = "XIL_INTERFACENAME rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst;
  input en;
  input [7:0]addr1;
  output [7:0]data1;
  output data_ready;
  output cs;
  output SCLK;
  output MOSI;
  input MISO;

  wire MISO;
  wire MOSI;
  wire SCLK;
  wire [7:0]addr1;
  wire clk;
  wire cs;
  wire [7:0]data1;
  wire data_ready;
  wire en;
  wire rst;

  design_top_CTRL_0_0_CTRL U0
       (.MISO(MISO),
        .MOSI(MOSI),
        .SCLK(SCLK),
        .addr1(addr1[6:0]),
        .clk(clk),
        .cs(cs),
        .data1(data1),
        .data_ready(data_ready),
        .en(en),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "CTRL" *) 
module design_top_CTRL_0_0_CTRL
   (data1,
    data_ready,
    cs,
    SCLK,
    MOSI,
    rst,
    clk,
    addr1,
    MISO,
    en);
  output [7:0]data1;
  output data_ready;
  output cs;
  output SCLK;
  output MOSI;
  input rst;
  input clk;
  input [6:0]addr1;
  input MISO;
  input en;

  wire \FSM_onehot_current_state[0]_i_1_n_0 ;
  wire \FSM_onehot_current_state[1]_i_1_n_0 ;
  wire \FSM_onehot_current_state[2]_i_1_n_0 ;
  wire \FSM_onehot_current_state[3]_i_1_n_0 ;
  wire \FSM_onehot_current_state[4]_i_1_n_0 ;
  wire \FSM_onehot_current_state[5]_i_1_n_0 ;
  wire \FSM_onehot_current_state[6]_i_1_n_0 ;
  wire \FSM_onehot_current_state[7]_i_1_n_0 ;
  wire \FSM_onehot_current_state[8]_i_1_n_0 ;
  wire \FSM_onehot_current_state_reg_n_0_[0] ;
  wire \FSM_onehot_current_state_reg_n_0_[1] ;
  wire \FSM_onehot_current_state_reg_n_0_[2] ;
  wire \FSM_onehot_current_state_reg_n_0_[4] ;
  wire \FSM_onehot_current_state_reg_n_0_[5] ;
  wire \FSM_onehot_current_state_reg_n_0_[6] ;
  wire \FSM_onehot_current_state_reg_n_0_[7] ;
  wire \FSM_onehot_current_state_reg_n_0_[8] ;
  wire \FSM_onehot_current_state_reg_n_0_[9] ;
  wire MISO;
  wire MOSI;
  wire MOSI_reg_i_1_n_0;
  wire MOSI_reg_i_2_n_0;
  wire SCLK;
  wire SCLK_reg_i_1_n_0;
  wire SCLK_reg_i_2_n_0;
  wire SCLK_reg_i_3_n_0;
  wire [6:0]addr1;
  wire addr_reg;
  wire \addr_reg[0]_i_1_n_0 ;
  wire \addr_reg[1]_i_1_n_0 ;
  wire \addr_reg[2]_i_1_n_0 ;
  wire \addr_reg[3]_i_1_n_0 ;
  wire \addr_reg[4]_i_1_n_0 ;
  wire \addr_reg[5]_i_1_n_0 ;
  wire \addr_reg[6]_i_1_n_0 ;
  wire \addr_reg[7]_i_2_n_0 ;
  wire addr_reg_conf0;
  wire \addr_reg_conf[10]_i_1_n_0 ;
  wire \addr_reg_conf[15]_i_1_n_0 ;
  wire \addr_reg_conf[8]_i_1_n_0 ;
  wire \addr_reg_conf[9]_i_1_n_0 ;
  wire clk;
  wire conf_flag;
  wire conf_flag__0;
  wire \count[0]_i_1_n_0 ;
  wire \count[1]_i_1_n_0 ;
  wire \count[2]_i_1_n_0 ;
  wire \count[2]_i_2_n_0 ;
  wire count_conf;
  wire \count_conf[0]_i_1_n_0 ;
  wire \count_conf[1]_i_1_n_0 ;
  wire \count_conf[2]_i_1_n_0 ;
  wire \count_conf[3]_i_2_n_0 ;
  wire \count_conf_reg_n_0_[0] ;
  wire \count_conf_reg_n_0_[1] ;
  wire \count_conf_reg_n_0_[2] ;
  wire \count_conf_reg_n_0_[3] ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire cs;
  wire cs_reg_i_1_n_0;
  wire cs_reg_i_2_n_0;
  wire [7:0]data1;
  wire \data1_reg[0]_i_1_n_0 ;
  wire \data1_reg[1]_i_1_n_0 ;
  wire \data1_reg[2]_i_1_n_0 ;
  wire \data1_reg[3]_i_1_n_0 ;
  wire \data1_reg[4]_i_1_n_0 ;
  wire \data1_reg[5]_i_1_n_0 ;
  wire \data1_reg[6]_i_1_n_0 ;
  wire \data1_reg[7]_i_1_n_0 ;
  wire \data1_reg[7]_i_2_n_0 ;
  wire data_ready;
  wire data_reg;
  wire \data_reg[0]_i_1_n_0 ;
  wire \data_reg[1]_i_1_n_0 ;
  wire \data_reg[2]_i_1_n_0 ;
  wire \data_reg[3]_i_1_n_0 ;
  wire \data_reg[4]_i_1_n_0 ;
  wire \data_reg[5]_i_1_n_0 ;
  wire \data_reg[6]_i_1_n_0 ;
  wire \data_reg[7]_i_2_n_0 ;
  wire \data_reg_reg_n_0_[7] ;
  wire en;
  wire [7:1]in10;
  wire [15:9]in11;
  wire [7:1]in13;
  wire p_0_in;
  wire p_1_in;
  wire rst;

  LUT6 #(
    .INIT(64'hFFFFFFFF00800000)) 
    \FSM_onehot_current_state[0]_i_1 
       (.I0(conf_flag__0),
        .I1(\count_conf_reg_n_0_[2] ),
        .I2(\count_conf_reg_n_0_[1] ),
        .I3(\count_conf_reg_n_0_[0] ),
        .I4(\count_conf_reg_n_0_[3] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[9] ),
        .O(\FSM_onehot_current_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hD0)) 
    \FSM_onehot_current_state[1]_i_1 
       (.I0(conf_flag),
        .I1(en),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\FSM_onehot_current_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF2AAAAAAA)) 
    \FSM_onehot_current_state[2]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\count_conf_reg_n_0_[2] ),
        .I2(\count_conf_reg_n_0_[0] ),
        .I3(\count_conf_reg_n_0_[1] ),
        .I4(\count_conf_reg_n_0_[3] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(\FSM_onehot_current_state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE2AAAAAAA2AAAAAA)) 
    \FSM_onehot_current_state[3]_i_1 
       (.I0(conf_flag__0),
        .I1(\count_conf_reg_n_0_[3] ),
        .I2(\count_conf_reg_n_0_[0] ),
        .I3(\count_conf_reg_n_0_[1] ),
        .I4(\count_conf_reg_n_0_[2] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\FSM_onehot_current_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_onehot_current_state[4]_i_1 
       (.I0(en),
        .I1(conf_flag),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\FSM_onehot_current_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFF2AAA)) 
    \FSM_onehot_current_state[5]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[2] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[4] ),
        .O(\FSM_onehot_current_state[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFF8000)) 
    \FSM_onehot_current_state[6]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\count_reg_n_0_[1] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[6] ),
        .O(\FSM_onehot_current_state[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hEAAA2AAA)) 
    \FSM_onehot_current_state[7]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(\count_reg_n_0_[2] ),
        .I2(\count_reg_n_0_[1] ),
        .I3(\count_reg_n_0_[0] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[6] ),
        .O(\FSM_onehot_current_state[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_current_state[8]_i_1 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[1] ),
        .I2(\count_reg_n_0_[0] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[7] ),
        .O(\FSM_onehot_current_state[8]_i_1_n_0 ));
  (* FSM_ENCODED_STATES = "s3:0001000000,s4:0010000000,s2:0000100000,s1:0000010000,s0:0000000001,s_conf_1:0000000010,s_conf_3:0000001000,s6:1000000000,s_conf_2:0000000100,s5:0100000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_current_state_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\FSM_onehot_current_state[0]_i_1_n_0 ),
        .PRE(rst),
        .Q(\FSM_onehot_current_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "s3:0001000000,s4:0010000000,s2:0000100000,s1:0000010000,s0:0000000001,s_conf_1:0000000010,s_conf_3:0000001000,s6:1000000000,s_conf_2:0000000100,s5:0100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_current_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "s3:0001000000,s4:0010000000,s2:0000100000,s1:0000010000,s0:0000000001,s_conf_1:0000000010,s_conf_3:0000001000,s6:1000000000,s_conf_2:0000000100,s5:0100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_current_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "s3:0001000000,s4:0010000000,s2:0000100000,s1:0000010000,s0:0000000001,s_conf_1:0000000010,s_conf_3:0000001000,s6:1000000000,s_conf_2:0000000100,s5:0100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_current_state[3]_i_1_n_0 ),
        .Q(conf_flag__0));
  (* FSM_ENCODED_STATES = "s3:0001000000,s4:0010000000,s2:0000100000,s1:0000010000,s0:0000000001,s_conf_1:0000000010,s_conf_3:0000001000,s6:1000000000,s_conf_2:0000000100,s5:0100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_current_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "s3:0001000000,s4:0010000000,s2:0000100000,s1:0000010000,s0:0000000001,s_conf_1:0000000010,s_conf_3:0000001000,s6:1000000000,s_conf_2:0000000100,s5:0100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_current_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "s3:0001000000,s4:0010000000,s2:0000100000,s1:0000010000,s0:0000000001,s_conf_1:0000000010,s_conf_3:0000001000,s6:1000000000,s_conf_2:0000000100,s5:0100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_current_state[6]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[6] ));
  (* FSM_ENCODED_STATES = "s3:0001000000,s4:0010000000,s2:0000100000,s1:0000010000,s0:0000000001,s_conf_1:0000000010,s_conf_3:0000001000,s6:1000000000,s_conf_2:0000000100,s5:0100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_current_state[7]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[7] ));
  (* FSM_ENCODED_STATES = "s3:0001000000,s4:0010000000,s2:0000100000,s1:0000010000,s0:0000000001,s_conf_1:0000000010,s_conf_3:0000001000,s6:1000000000,s_conf_2:0000000100,s5:0100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_current_state[8]_i_1_n_0 ),
        .Q(\FSM_onehot_current_state_reg_n_0_[8] ));
  (* FSM_ENCODED_STATES = "s3:0001000000,s4:0010000000,s2:0000100000,s1:0000010000,s0:0000000001,s_conf_1:0000000010,s_conf_3:0000001000,s6:1000000000,s_conf_2:0000000100,s5:0100000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_current_state_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\FSM_onehot_current_state_reg_n_0_[8] ),
        .Q(\FSM_onehot_current_state_reg_n_0_[9] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    MOSI_reg
       (.CLR(1'b0),
        .D(MOSI_reg_i_1_n_0),
        .G(MOSI_reg_i_2_n_0),
        .GE(1'b1),
        .Q(MOSI));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hF888)) 
    MOSI_reg_i_1
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(p_0_in),
        .I2(p_1_in),
        .I3(\FSM_onehot_current_state_reg_n_0_[5] ),
        .O(MOSI_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    MOSI_reg_i_2
       (.I0(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(MOSI_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    SCLK_reg
       (.CLR(1'b0),
        .D(SCLK_reg_i_1_n_0),
        .G(SCLK_reg_i_2_n_0),
        .GE(1'b1),
        .Q(SCLK));
  LUT6 #(
    .INIT(64'hFFFFFFFFEEEEEEE2)) 
    SCLK_reg_i_1
       (.I0(SCLK_reg_i_3_n_0),
        .I1(clk),
        .I2(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I4(conf_flag__0),
        .I5(\FSM_onehot_current_state_reg_n_0_[9] ),
        .O(SCLK_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    SCLK_reg_i_2
       (.I0(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I1(SCLK_reg_i_3_n_0),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(SCLK_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    SCLK_reg_i_3
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I4(conf_flag__0),
        .I5(\FSM_onehot_current_state_reg_n_0_[8] ),
        .O(SCLK_reg_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \addr_reg[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I1(addr1[0]),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\addr_reg[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \addr_reg[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I1(in13[1]),
        .I2(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I3(addr1[1]),
        .I4(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\addr_reg[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \addr_reg[2]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I1(in13[2]),
        .I2(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I3(addr1[2]),
        .I4(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\addr_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \addr_reg[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I1(in13[3]),
        .I2(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I3(addr1[3]),
        .I4(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\addr_reg[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \addr_reg[4]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I1(in13[4]),
        .I2(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I3(addr1[4]),
        .I4(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\addr_reg[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \addr_reg[5]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I1(in13[5]),
        .I2(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I3(addr1[5]),
        .I4(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\addr_reg[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFF888)) 
    \addr_reg[6]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I1(in13[6]),
        .I2(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I3(addr1[6]),
        .I4(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\addr_reg[6]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \addr_reg[7]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(addr_reg));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \addr_reg[7]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I1(in13[7]),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\addr_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFECEF0000ECEC)) 
    \addr_reg_conf[10]_i_1 
       (.I0(in11[10]),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(rst),
        .I5(in11[11]),
        .O(\addr_reg_conf[10]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0054)) 
    \addr_reg_conf[15]_i_1 
       (.I0(rst),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\addr_reg_conf[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00FE)) 
    \addr_reg_conf[15]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(rst),
        .O(addr_reg_conf0));
  LUT5 #(
    .INIT(32'hFF010000)) 
    \addr_reg_conf[8]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I3(rst),
        .I4(in11[9]),
        .O(\addr_reg_conf[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFECEF0000ECEC)) 
    \addr_reg_conf[9]_i_1 
       (.I0(in11[9]),
        .I1(\FSM_onehot_current_state_reg_n_0_[1] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(rst),
        .I5(in11[10]),
        .O(\addr_reg_conf[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_conf_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\addr_reg_conf[10]_i_1_n_0 ),
        .Q(in11[11]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_conf_reg[11] 
       (.C(clk),
        .CE(addr_reg_conf0),
        .D(in11[11]),
        .Q(in11[12]),
        .R(\addr_reg_conf[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_conf_reg[12] 
       (.C(clk),
        .CE(addr_reg_conf0),
        .D(in11[12]),
        .Q(in11[13]),
        .R(\addr_reg_conf[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_conf_reg[13] 
       (.C(clk),
        .CE(addr_reg_conf0),
        .D(in11[13]),
        .Q(in11[14]),
        .R(\addr_reg_conf[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_conf_reg[14] 
       (.C(clk),
        .CE(addr_reg_conf0),
        .D(in11[14]),
        .Q(in11[15]),
        .R(\addr_reg_conf[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \addr_reg_conf_reg[15] 
       (.C(clk),
        .CE(addr_reg_conf0),
        .D(in11[15]),
        .Q(p_0_in),
        .R(\addr_reg_conf[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b1)) 
    \addr_reg_conf_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\addr_reg_conf[8]_i_1_n_0 ),
        .Q(in11[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    \addr_reg_conf_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\addr_reg_conf[9]_i_1_n_0 ),
        .Q(in11[10]),
        .R(1'b0));
  FDCE \addr_reg_reg[0] 
       (.C(clk),
        .CE(addr_reg),
        .CLR(rst),
        .D(\addr_reg[0]_i_1_n_0 ),
        .Q(in13[1]));
  FDCE \addr_reg_reg[1] 
       (.C(clk),
        .CE(addr_reg),
        .CLR(rst),
        .D(\addr_reg[1]_i_1_n_0 ),
        .Q(in13[2]));
  FDCE \addr_reg_reg[2] 
       (.C(clk),
        .CE(addr_reg),
        .CLR(rst),
        .D(\addr_reg[2]_i_1_n_0 ),
        .Q(in13[3]));
  FDCE \addr_reg_reg[3] 
       (.C(clk),
        .CE(addr_reg),
        .CLR(rst),
        .D(\addr_reg[3]_i_1_n_0 ),
        .Q(in13[4]));
  FDCE \addr_reg_reg[4] 
       (.C(clk),
        .CE(addr_reg),
        .CLR(rst),
        .D(\addr_reg[4]_i_1_n_0 ),
        .Q(in13[5]));
  FDCE \addr_reg_reg[5] 
       (.C(clk),
        .CE(addr_reg),
        .CLR(rst),
        .D(\addr_reg[5]_i_1_n_0 ),
        .Q(in13[6]));
  FDCE \addr_reg_reg[6] 
       (.C(clk),
        .CE(addr_reg),
        .CLR(rst),
        .D(\addr_reg[6]_i_1_n_0 ),
        .Q(in13[7]));
  FDCE \addr_reg_reg[7] 
       (.C(clk),
        .CE(addr_reg),
        .CLR(rst),
        .D(\addr_reg[7]_i_2_n_0 ),
        .Q(p_1_in));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    conf_flag_reg
       (.CLR(1'b0),
        .D(1'b1),
        .G(conf_flag__0),
        .GE(1'b1),
        .Q(conf_flag));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0001FEFE)) 
    \count[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I4(\count_reg_n_0_[0] ),
        .O(\count[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h55545557AAA8AAA8)) 
    \count[1]_i_1 
       (.I0(\count_reg_n_0_[0] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I5(\count_reg_n_0_[1] ),
        .O(\count[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAA8AAABAAA8AAA8)) 
    \count[2]_i_1 
       (.I0(\count[2]_i_2_n_0 ),
        .I1(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I5(\count_reg_n_0_[2] ),
        .O(\count[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \count[2]_i_2 
       (.I0(\count_reg_n_0_[2] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[1] ),
        .O(\count[2]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h0E)) 
    \count_conf[0]_i_1 
       (.I0(conf_flag__0),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\count_conf_reg_n_0_[0] ),
        .O(\count_conf[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h3C28)) 
    \count_conf[1]_i_1 
       (.I0(conf_flag__0),
        .I1(\count_conf_reg_n_0_[0] ),
        .I2(\count_conf_reg_n_0_[1] ),
        .I3(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\count_conf[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h3FC02A80)) 
    \count_conf[2]_i_1 
       (.I0(conf_flag__0),
        .I1(\count_conf_reg_n_0_[1] ),
        .I2(\count_conf_reg_n_0_[0] ),
        .I3(\count_conf_reg_n_0_[2] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\count_conf[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \count_conf[3]_i_1 
       (.I0(conf_flag__0),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(count_conf));
  LUT6 #(
    .INIT(64'h3FFFC0002AAA8000)) 
    \count_conf[3]_i_2 
       (.I0(conf_flag__0),
        .I1(\count_conf_reg_n_0_[2] ),
        .I2(\count_conf_reg_n_0_[1] ),
        .I3(\count_conf_reg_n_0_[0] ),
        .I4(\count_conf_reg_n_0_[3] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[2] ),
        .O(\count_conf[3]_i_2_n_0 ));
  FDCE \count_conf_reg[0] 
       (.C(clk),
        .CE(count_conf),
        .CLR(rst),
        .D(\count_conf[0]_i_1_n_0 ),
        .Q(\count_conf_reg_n_0_[0] ));
  FDCE \count_conf_reg[1] 
       (.C(clk),
        .CE(count_conf),
        .CLR(rst),
        .D(\count_conf[1]_i_1_n_0 ),
        .Q(\count_conf_reg_n_0_[1] ));
  FDCE \count_conf_reg[2] 
       (.C(clk),
        .CE(count_conf),
        .CLR(rst),
        .D(\count_conf[2]_i_1_n_0 ),
        .Q(\count_conf_reg_n_0_[2] ));
  FDCE \count_conf_reg[3] 
       (.C(clk),
        .CE(count_conf),
        .CLR(rst),
        .D(\count_conf[3]_i_2_n_0 ),
        .Q(\count_conf_reg_n_0_[3] ));
  FDCE \count_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count[0]_i_1_n_0 ),
        .Q(\count_reg_n_0_[0] ));
  FDCE \count_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count[1]_i_1_n_0 ),
        .Q(\count_reg_n_0_[1] ));
  FDCE \count_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(rst),
        .D(\count[2]_i_1_n_0 ),
        .Q(\count_reg_n_0_[2] ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    cs_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_current_state_reg_n_0_[0] ),
        .G(cs_reg_i_1_n_0),
        .GE(1'b1),
        .Q(cs));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    cs_reg_i_1
       (.I0(\FSM_onehot_current_state_reg_n_0_[0] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[2] ),
        .I2(cs_reg_i_2_n_0),
        .I3(\FSM_onehot_current_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I5(\FSM_onehot_current_state_reg_n_0_[1] ),
        .O(cs_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    cs_reg_i_2
       (.I0(\FSM_onehot_current_state_reg_n_0_[6] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[5] ),
        .O(cs_reg_i_2_n_0));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data1_reg[0] 
       (.CLR(1'b0),
        .D(\data1_reg[0]_i_1_n_0 ),
        .G(\data1_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(data1[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \data1_reg[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I2(in10[1]),
        .O(\data1_reg[0]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data1_reg[1] 
       (.CLR(1'b0),
        .D(\data1_reg[1]_i_1_n_0 ),
        .G(\data1_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(data1[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \data1_reg[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I2(in10[2]),
        .O(\data1_reg[1]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data1_reg[2] 
       (.CLR(1'b0),
        .D(\data1_reg[2]_i_1_n_0 ),
        .G(\data1_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(data1[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \data1_reg[2]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I2(in10[3]),
        .O(\data1_reg[2]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data1_reg[3] 
       (.CLR(1'b0),
        .D(\data1_reg[3]_i_1_n_0 ),
        .G(\data1_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(data1[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \data1_reg[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I2(in10[4]),
        .O(\data1_reg[3]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data1_reg[4] 
       (.CLR(1'b0),
        .D(\data1_reg[4]_i_1_n_0 ),
        .G(\data1_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(data1[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \data1_reg[4]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I2(in10[5]),
        .O(\data1_reg[4]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data1_reg[5] 
       (.CLR(1'b0),
        .D(\data1_reg[5]_i_1_n_0 ),
        .G(\data1_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(data1[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \data1_reg[5]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I2(in10[6]),
        .O(\data1_reg[5]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data1_reg[6] 
       (.CLR(1'b0),
        .D(\data1_reg[6]_i_1_n_0 ),
        .G(\data1_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(data1[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \data1_reg[6]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I2(in10[7]),
        .O(\data1_reg[6]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \data1_reg[7] 
       (.CLR(1'b0),
        .D(\data1_reg[7]_i_1_n_0 ),
        .G(\data1_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(data1[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \data1_reg[7]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I2(\data_reg_reg_n_0_[7] ),
        .O(\data1_reg[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \data1_reg[7]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[9] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[8] ),
        .I2(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(\data1_reg[7]_i_2_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    data_ready_reg
       (.CLR(1'b0),
        .D(\FSM_onehot_current_state_reg_n_0_[8] ),
        .G(\data1_reg[7]_i_2_n_0 ),
        .GE(1'b1),
        .Q(data_ready));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_reg[0]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(MISO),
        .O(\data_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_reg[1]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(in10[1]),
        .O(\data_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_reg[2]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(in10[2]),
        .O(\data_reg[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_reg[3]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(in10[3]),
        .O(\data_reg[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_reg[4]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(in10[4]),
        .O(\data_reg[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_reg[5]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(in10[5]),
        .O(\data_reg[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_reg[6]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(in10[6]),
        .O(\data_reg[6]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \data_reg[7]_i_1 
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(\FSM_onehot_current_state_reg_n_0_[0] ),
        .O(data_reg));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \data_reg[7]_i_2 
       (.I0(\FSM_onehot_current_state_reg_n_0_[7] ),
        .I1(in10[7]),
        .O(\data_reg[7]_i_2_n_0 ));
  FDCE \data_reg_reg[0] 
       (.C(clk),
        .CE(data_reg),
        .CLR(rst),
        .D(\data_reg[0]_i_1_n_0 ),
        .Q(in10[1]));
  FDCE \data_reg_reg[1] 
       (.C(clk),
        .CE(data_reg),
        .CLR(rst),
        .D(\data_reg[1]_i_1_n_0 ),
        .Q(in10[2]));
  FDCE \data_reg_reg[2] 
       (.C(clk),
        .CE(data_reg),
        .CLR(rst),
        .D(\data_reg[2]_i_1_n_0 ),
        .Q(in10[3]));
  FDCE \data_reg_reg[3] 
       (.C(clk),
        .CE(data_reg),
        .CLR(rst),
        .D(\data_reg[3]_i_1_n_0 ),
        .Q(in10[4]));
  FDCE \data_reg_reg[4] 
       (.C(clk),
        .CE(data_reg),
        .CLR(rst),
        .D(\data_reg[4]_i_1_n_0 ),
        .Q(in10[5]));
  FDCE \data_reg_reg[5] 
       (.C(clk),
        .CE(data_reg),
        .CLR(rst),
        .D(\data_reg[5]_i_1_n_0 ),
        .Q(in10[6]));
  FDCE \data_reg_reg[6] 
       (.C(clk),
        .CE(data_reg),
        .CLR(rst),
        .D(\data_reg[6]_i_1_n_0 ),
        .Q(in10[7]));
  FDCE \data_reg_reg[7] 
       (.C(clk),
        .CE(data_reg),
        .CLR(rst),
        .D(\data_reg[7]_i_2_n_0 ),
        .Q(\data_reg_reg_n_0_[7] ));
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
