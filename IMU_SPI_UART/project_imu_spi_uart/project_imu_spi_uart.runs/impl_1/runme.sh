#!/bin/sh

# 
# Vivado(TM)
# runme.sh: a Vivado-generated Runs Script for UNIX
# Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
# 

if [ -z "$PATH" ]; then
  PATH=/mnt/data0/xilinx/Vitis/2021.1/bin:/mnt/data0/xilinx/Vivado/2021.1/ids_lite/ISE/bin/lin64:/mnt/data0/xilinx/Vivado/2021.1/bin
else
  PATH=/mnt/data0/xilinx/Vitis/2021.1/bin:/mnt/data0/xilinx/Vivado/2021.1/ids_lite/ISE/bin/lin64:/mnt/data0/xilinx/Vivado/2021.1/bin:$PATH
fi
export PATH

if [ -z "$LD_LIBRARY_PATH" ]; then
  LD_LIBRARY_PATH=
else
  LD_LIBRARY_PATH=:$LD_LIBRARY_PATH
fi
export LD_LIBRARY_PATH

HD_PWD='/home/esme/Desktop/VivadoProjects/EmbeddedSystems/IMU_SPI_UART/project_imu_spi_uart/project_imu_spi_uart.runs/impl_1'
cd "$HD_PWD"

HD_LOG=runme.log
/bin/touch $HD_LOG

ISEStep="./ISEWrap.sh"
EAStep()
{
     $ISEStep $HD_LOG "$@" >> $HD_LOG 2>&1
     if [ $? -ne 0 ]
     then
         exit
     fi
}

# pre-commands:
/bin/touch .init_design.begin.rst
EAStep vivado -log design_top_wrapper.vdi -applog -m64 -product Vivado -messageDb vivado.pb -mode batch -source design_top_wrapper.tcl -notrace


