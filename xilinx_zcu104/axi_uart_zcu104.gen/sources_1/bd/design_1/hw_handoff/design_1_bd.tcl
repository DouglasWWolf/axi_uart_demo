
################################################################
# This is a generated script based on design: design_1
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
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# button, fifo_to_uart, uart_axi_iface

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu7ev-ffvc1156-2-e
   set_property BOARD_PART xilinx.com:zcu104:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

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
  set CLK_125_N [ create_bd_port -dir I -type clk -freq_hz 125000000 CLK_125_N ]
  set CLK_125_P [ create_bd_port -dir I -type clk -freq_hz 125000000 CLK_125_P ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_RESET {CPU_RESET} \
 ] $CLK_125_P
  set CPU_RESET [ create_bd_port -dir I -type rst CPU_RESET ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $CPU_RESET
  set GPIO_LED [ create_bd_port -dir O -from 3 -to 0 GPIO_LED ]
  set GPIO_PB2 [ create_bd_port -dir I GPIO_PB2 ]
  set GPIO_SW [ create_bd_port -dir I -from 3 -to 0 GPIO_SW ]
  set UART2_RXD [ create_bd_port -dir I UART2_RXD ]
  set UART2_TXD [ create_bd_port -dir O UART2_TXD ]

  # Create instance: axi_gpio_inputs, and set properties
  set axi_gpio_inputs [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_inputs ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_GPIO_WIDTH {4} \
 ] $axi_gpio_inputs

  # Create instance: axi_gpio_outputs, and set properties
  set axi_gpio_outputs [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_outputs ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {0} \
   CONFIG.C_ALL_OUTPUTS {1} \
   CONFIG.GPIO_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_outputs

  # Create instance: axi_uart, and set properties
  set axi_uart [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uart ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {115200} \
   CONFIG.C_S_AXI_ACLK_FREQ_HZ {100000000} \
   CONFIG.UARTLITE_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_uart

  # Create instance: button, and set properties
  set block_name button
  set block_cell_name button
  if { [catch {set button [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $button eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.CLOCKS_PER_USEC {125} \
 ] $button

  # Create instance: fifo_to_uart_0, and set properties
  set block_name fifo_to_uart
  set block_cell_name fifo_to_uart_0
  if { [catch {set fifo_to_uart_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $fifo_to_uart_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: smartconnect_0, and set properties
  set smartconnect_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:smartconnect:1.0 smartconnect_0 ]
  set_property -dict [ list \
   CONFIG.NUM_MI {2} \
   CONFIG.NUM_SI {1} \
 ] $smartconnect_0

  # Create instance: system_clock, and set properties
  set system_clock [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 system_clock ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {80.0} \
   CONFIG.CLKOUT1_JITTER {177.983} \
   CONFIG.CLKOUT1_PHASE_ERROR {222.305} \
   CONFIG.CLK_OUT1_PORT {clk_100mhz} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {48.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {8.000} \
   CONFIG.MMCM_DIVCLK_DIVIDE {5} \
   CONFIG.PRIM_IN_FREQ {125.000} \
   CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {false} \
 ] $system_clock

  # Create instance: system_reset, and set properties
  set system_reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 system_reset ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $system_reset

  # Create instance: uart_axi_iface, and set properties
  set block_name uart_axi_iface
  set block_cell_name uart_axi_iface
  if { [catch {set uart_axi_iface [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $uart_axi_iface eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net fifo_to_uart_0_M_AXI [get_bd_intf_pins axi_uart/S_AXI] [get_bd_intf_pins fifo_to_uart_0/M_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M00_AXI [get_bd_intf_pins axi_gpio_inputs/S_AXI] [get_bd_intf_pins smartconnect_0/M00_AXI]
  connect_bd_intf_net -intf_net smartconnect_0_M01_AXI [get_bd_intf_pins axi_gpio_outputs/S_AXI] [get_bd_intf_pins smartconnect_0/M01_AXI]
  connect_bd_intf_net -intf_net uart_axi_iface_M_AXI [get_bd_intf_pins smartconnect_0/S00_AXI] [get_bd_intf_pins uart_axi_iface/M_AXI]
  connect_bd_intf_net -intf_net uart_axi_iface_UART_RX_FIFO [get_bd_intf_pins fifo_to_uart_0/UART_RX_FIFO] [get_bd_intf_pins uart_axi_iface/UART_RX_FIFO]
  connect_bd_intf_net -intf_net uart_axi_iface_UART_TX_FIFO [get_bd_intf_pins fifo_to_uart_0/UART_TX_FIFO] [get_bd_intf_pins uart_axi_iface/UART_TX_FIFO]

  # Create port connections
  connect_bd_net -net PIN_0_1 [get_bd_ports GPIO_PB2] [get_bd_pins button/PIN]
  connect_bd_net -net axi_gpio_0_gpio_io_o [get_bd_ports GPIO_LED] [get_bd_pins axi_gpio_outputs/gpio_io_o]
  connect_bd_net -net axi_uart_tx [get_bd_ports UART2_TXD] [get_bd_pins axi_uart/tx]
  connect_bd_net -net axi_uartlite_0_interrupt [get_bd_pins axi_uart/interrupt] [get_bd_pins fifo_to_uart_0/UART_INT]
  connect_bd_net -net button_0_Q [get_bd_pins button/Q] [get_bd_pins fifo_to_uart_0/BUTTON]
  connect_bd_net -net clk_in1_n_0_1 [get_bd_ports CLK_125_N] [get_bd_pins system_clock/clk_in1_n]
  connect_bd_net -net clk_in1_p_0_1 [get_bd_ports CLK_125_P] [get_bd_pins system_clock/clk_in1_p]
  connect_bd_net -net ext_reset_in_0_1 [get_bd_ports CPU_RESET] [get_bd_pins system_reset/ext_reset_in]
  connect_bd_net -net gpio_io_i_0_1 [get_bd_ports GPIO_SW] [get_bd_pins axi_gpio_inputs/gpio_io_i]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins axi_gpio_inputs/s_axi_aresetn] [get_bd_pins axi_gpio_outputs/s_axi_aresetn] [get_bd_pins axi_uart/s_axi_aresetn] [get_bd_pins fifo_to_uart_0/M_AXI_ARESETN] [get_bd_pins system_reset/peripheral_aresetn] [get_bd_pins uart_axi_iface/M_AXI_ARESETN]
  connect_bd_net -net rx_0_1 [get_bd_ports UART2_RXD] [get_bd_pins axi_uart/rx]
  connect_bd_net -net system_clock_clk_100mhz [get_bd_pins axi_gpio_inputs/s_axi_aclk] [get_bd_pins axi_gpio_outputs/s_axi_aclk] [get_bd_pins axi_uart/s_axi_aclk] [get_bd_pins button/CLK] [get_bd_pins fifo_to_uart_0/M_AXI_ACLK] [get_bd_pins smartconnect_0/aclk] [get_bd_pins system_clock/clk_100mhz] [get_bd_pins system_reset/slowest_sync_clk] [get_bd_pins uart_axi_iface/M_AXI_ACLK]
  connect_bd_net -net system_reset_interconnect_aresetn [get_bd_pins smartconnect_0/aresetn] [get_bd_pins system_reset/interconnect_aresetn]

  # Create address segments
  assign_bd_address -offset 0x40600000 -range 0x00010000 -target_address_space [get_bd_addr_spaces fifo_to_uart_0/M_AXI] [get_bd_addr_segs axi_uart/S_AXI/Reg] -force
  assign_bd_address -offset 0x40000000 -range 0x00010000 -target_address_space [get_bd_addr_spaces uart_axi_iface/M_AXI] [get_bd_addr_segs axi_gpio_inputs/S_AXI/Reg] -force
  assign_bd_address -offset 0x40010000 -range 0x00010000 -target_address_space [get_bd_addr_spaces uart_axi_iface/M_AXI] [get_bd_addr_segs axi_gpio_outputs/S_AXI/Reg] -force


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


