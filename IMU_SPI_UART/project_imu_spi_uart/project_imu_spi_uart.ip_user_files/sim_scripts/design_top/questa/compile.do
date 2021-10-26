vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_bram_ctrl_v4_1_5
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_vip_v1_1_10
vlib questa_lib/msim/processing_system7_vip_v1_0_12
vlib questa_lib/msim/xlconstant_v1_1_7
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_register_slice_v2_1_24
vlib questa_lib/msim/blk_mem_gen_v8_4_4
vlib questa_lib/msim/xlconcat_v2_1_4

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_bram_ctrl_v4_1_5 questa_lib/msim/axi_bram_ctrl_v4_1_5
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_vip_v1_1_10 questa_lib/msim/axi_vip_v1_1_10
vmap processing_system7_vip_v1_0_12 questa_lib/msim/processing_system7_vip_v1_0_12
vmap xlconstant_v1_1_7 questa_lib/msim/xlconstant_v1_1_7
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_register_slice_v2_1_24 questa_lib/msim/axi_register_slice_v2_1_24
vmap blk_mem_gen_v8_4_4 questa_lib/msim/blk_mem_gen_v8_4_4
vmap xlconcat_v2_1_4 questa_lib/msim/xlconcat_v2_1_4

vlog -work xilinx_vip -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"/mnt/data0/xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/mnt/data0/xilinx/Vivado/2021.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/mnt/data0/xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/mnt/data0/xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_top/ip/design_top_CTRL_0_0/sim/design_top_CTRL_0_0.vhd" \
"../../../bd/design_top/ip/design_top_Addr_Counter_0_0/sim/design_top_Addr_Counter_0_0.vhd" \
"../../../bd/design_top/ip/design_top_fsm_intr_0_0/sim/design_top_fsm_intr_0_0.vhd" \
"../../../bd/design_top/ip/design_top_Addr_ctrl_0_0/sim/design_top_Addr_ctrl_0_0.vhd" \
"../../../bd/design_top/ip/design_top_tx_mod_0_0/sim/design_top_tx_mod_0_0.vhd" \
"../../../bd/design_top/ip/design_top_clk_divider_UART_0_0/sim/design_top_clk_divider_UART_0_0.vhd" \
"../../../bd/design_top/ip/design_top_clk_divider_0_0/sim/design_top_clk_divider_0_0.vhd" \

vcom -work axi_bram_ctrl_v4_1_5 -64 -93 \
"../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/33c1/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_top/ip/design_top_axi_bram_ctrl_0_0/sim/design_top_axi_bram_ctrl_0_0.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr -mfcu "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_10 -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/0980/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_12 -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_top/ip/design_top_processing_system7_0_0/sim/design_top_processing_system7_0_0.v" \

vlog -work xlconstant_v1_1_7 -64 -incr -mfcu "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_top/ip/design_top_axi_smc_0/bd_0/ip/ip_0/sim/bd_e6df_one_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_top/ip/design_top_axi_smc_0/bd_0/ip/ip_1/sim/bd_e6df_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_top/ip/design_top_axi_smc_0/bd_0/ip/ip_2/sim/bd_e6df_s00mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_top/ip/design_top_axi_smc_0/bd_0/ip/ip_3/sim/bd_e6df_s00tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_top/ip/design_top_axi_smc_0/bd_0/ip/ip_4/sim/bd_e6df_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_top/ip/design_top_axi_smc_0/bd_0/ip/ip_5/sim/bd_e6df_s00a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_top/ip/design_top_axi_smc_0/bd_0/ip/ip_6/sim/bd_e6df_sarn_0.sv" \
"../../../bd/design_top/ip/design_top_axi_smc_0/bd_0/ip/ip_7/sim/bd_e6df_srn_0.sv" \
"../../../bd/design_top/ip/design_top_axi_smc_0/bd_0/ip/ip_8/sim/bd_e6df_sawn_0.sv" \
"../../../bd/design_top/ip/design_top_axi_smc_0/bd_0/ip/ip_9/sim/bd_e6df_swn_0.sv" \
"../../../bd/design_top/ip/design_top_axi_smc_0/bd_0/ip/ip_10/sim/bd_e6df_sbn_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_top/ip/design_top_axi_smc_0/bd_0/ip/ip_11/sim/bd_e6df_m00s2a_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/7bd7/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_top/ip/design_top_axi_smc_0/bd_0/ip/ip_12/sim/bd_e6df_m00e_0.sv" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_top/ip/design_top_axi_smc_0/bd_0/sim/bd_e6df.v" \

vlog -work smartconnect_v1_0 -64 -incr -mfcu -sv -L axi_vip_v1_1_10 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_12 -L xilinx_vip "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_register_slice_v2_1_24 -64 -incr -mfcu "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/8f68/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_top/ip/design_top_axi_smc_0/sim/design_top_axi_smc_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_top/ip/design_top_rst_ps7_0_50M_0/sim/design_top_rst_ps7_0_50M_0.vhd" \

vlog -work blk_mem_gen_v8_4_4 -64 -incr -mfcu "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/2985/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_top/ip/design_top_axi_bram_ctrl_0_bram_0/sim/design_top_axi_bram_ctrl_0_bram_0.v" \

vlog -work xlconcat_v2_1_4 -64 -incr -mfcu "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr -mfcu "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/ec67/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/f42d/hdl" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/80cc/hdl/verilog" "+incdir+../../../../MYSPI.gen/sources_1/bd/design_top/ipshared/22b9/hdl/verilog" "+incdir+/mnt/data0/xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/design_top/ip/design_top_xlconcat_0_0/sim/design_top_xlconcat_0_0.v" \
"../../../bd/design_top/ip/design_top_xlconstant_0_0/sim/design_top_xlconstant_0_0.v" \
"../../../bd/design_top/ip/design_top_xlconstant_1_1/sim/design_top_xlconstant_1_1.v" \
"../../../bd/design_top/ip/design_top_xlconstant_2_0/sim/design_top_xlconstant_2_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/design_top/sim/design_top.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

