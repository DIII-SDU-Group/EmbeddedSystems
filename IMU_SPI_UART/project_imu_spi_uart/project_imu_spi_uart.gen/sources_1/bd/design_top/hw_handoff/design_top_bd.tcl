
################################################################
# This is a generated script based on design: design_top
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2021.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_top_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# CTRL, clk_divider, Addr_Counter, Addr_ctrl, fsm_intr, clk_divider_UART, tx_mod

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7z020clg400-1
   set_property BOARD_PART tul.com.tw:pynq-z2:part0:1.0 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_top

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: UART_TX
proc create_hier_cell_UART_TX { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_UART_TX() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir I -from 7 -to 0 data1
  create_bd_pin -dir I -type rst rst
  create_bd_pin -dir I shift_load
  create_bd_pin -dir O sout

  # Create instance: clk_divider_UART_0, and set properties
  set block_name clk_divider_UART
  set block_cell_name clk_divider_UART_0
  if { [catch {set clk_divider_UART_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $clk_divider_UART_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: tx_mod_0, and set properties
  set block_name tx_mod
  set block_cell_name tx_mod_0
  if { [catch {set tx_mod_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $tx_mod_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net CTRL_0_data1 [get_bd_pins data1] [get_bd_pins tx_mod_0/data_in]
  connect_bd_net -net CTRL_0_data_ready [get_bd_pins shift_load] [get_bd_pins tx_mod_0/shift_load]
  connect_bd_net -net clk_1 [get_bd_pins clk] [get_bd_pins clk_divider_UART_0/clk]
  connect_bd_net -net clk_divider_UART_0_clk_div [get_bd_pins clk_divider_UART_0/clk_div] [get_bd_pins tx_mod_0/clkfast]
  connect_bd_net -net rst_0_1 [get_bd_pins rst] [get_bd_pins clk_divider_UART_0/rst] [get_bd_pins tx_mod_0/rst]
  connect_bd_net -net tx_mod_0_sout [get_bd_pins sout] [get_bd_pins tx_mod_0/sout]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: Address_handler
proc create_hier_cell_Address_handler { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_Address_handler() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir O -from 7 -to 0 dout
  create_bd_pin -dir I next_reg
  create_bd_pin -dir I -type rst rst

  # Create instance: Addr_Counter_0, and set properties
  set block_name Addr_Counter
  set block_cell_name Addr_Counter_0
  if { [catch {set Addr_Counter_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Addr_Counter_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Addr_ctrl_0, and set properties
  set block_name Addr_ctrl
  set block_cell_name Addr_ctrl_0
  if { [catch {set Addr_ctrl_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Addr_ctrl_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: fsm_intr_0, and set properties
  set block_name fsm_intr
  set block_cell_name fsm_intr_0
  if { [catch {set fsm_intr_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $fsm_intr_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net Addr_Counter_0_addr [get_bd_pins Addr_Counter_0/addr] [get_bd_pins Addr_ctrl_0/addr]
  connect_bd_net -net Addr_ctrl_0_dout [get_bd_pins dout] [get_bd_pins Addr_ctrl_0/dout]
  connect_bd_net -net clk_divider_0_clk_div [get_bd_pins clk] [get_bd_pins Addr_Counter_0/clk] [get_bd_pins Addr_ctrl_0/clk] [get_bd_pins fsm_intr_0/clk]
  connect_bd_net -net fsm_intr_0_intr [get_bd_pins Addr_Counter_0/en] [get_bd_pins fsm_intr_0/intr]
  connect_bd_net -net rst_0_1 [get_bd_pins rst] [get_bd_pins Addr_Counter_0/rst] [get_bd_pins fsm_intr_0/rst]
  connect_bd_net -net strobe_0_1 [get_bd_pins next_reg] [get_bd_pins fsm_intr_0/strobe]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set CS [ create_bd_port -dir O CS ]
  set LEDs [ create_bd_port -dir O -from 7 -to 0 LEDs ]
  set MISO [ create_bd_port -dir I MISO ]
  set MOSI [ create_bd_port -dir O MOSI ]
  set SCLK [ create_bd_port -dir O SCLK ]
  set clk [ create_bd_port -dir I -type clk clk ]
  set en [ create_bd_port -dir I en ]
  set next_reg_switch [ create_bd_port -dir I next_reg_switch ]
  set rst [ create_bd_port -dir I -type rst rst ]
  set sout [ create_bd_port -dir O sout ]

  # Create instance: Address_handler
  create_hier_cell_Address_handler [current_bd_instance .] Address_handler

  # Create instance: IMU_CTRL, and set properties
  set block_name CTRL
  set block_cell_name IMU_CTRL
  if { [catch {set IMU_CTRL [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $IMU_CTRL eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: UART_TX
  create_hier_cell_UART_TX [current_bd_instance .] UART_TX

  # Create instance: clk_divider, and set properties
  set block_name clk_divider
  set block_cell_name clk_divider
  if { [catch {set clk_divider [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $clk_divider eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net Addr_ctrl_0_dout [get_bd_pins Address_handler/dout] [get_bd_pins IMU_CTRL/addr1]
  connect_bd_net -net CTRL_0_CS [get_bd_ports CS] [get_bd_pins IMU_CTRL/cs]
  connect_bd_net -net CTRL_0_MOSI [get_bd_ports MOSI] [get_bd_pins IMU_CTRL/MOSI]
  connect_bd_net -net CTRL_0_SCLK [get_bd_ports SCLK] [get_bd_pins IMU_CTRL/SCLK]
  connect_bd_net -net CTRL_0_data1 [get_bd_ports LEDs] [get_bd_pins IMU_CTRL/data1] [get_bd_pins UART_TX/data1]
  connect_bd_net -net MISO_0_1 [get_bd_ports MISO] [get_bd_pins IMU_CTRL/MISO]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins UART_TX/clk] [get_bd_pins clk_divider/clk]
  connect_bd_net -net clk_divider_0_clk_div [get_bd_pins Address_handler/clk] [get_bd_pins IMU_CTRL/clk] [get_bd_pins clk_divider/clk_div]
  connect_bd_net -net en_0_1 [get_bd_ports en] [get_bd_pins IMU_CTRL/en]
  connect_bd_net -net rst_0_1 [get_bd_ports rst] [get_bd_pins Address_handler/rst] [get_bd_pins IMU_CTRL/rst] [get_bd_pins UART_TX/rst] [get_bd_pins clk_divider/rst]
  connect_bd_net -net shift_load_1 [get_bd_pins IMU_CTRL/data_ready] [get_bd_pins UART_TX/shift_load]
  connect_bd_net -net strobe_0_1 [get_bd_ports next_reg_switch] [get_bd_pins Address_handler/next_reg]
  connect_bd_net -net tx_mod_0_sout [get_bd_ports sout] [get_bd_pins UART_TX/sout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


