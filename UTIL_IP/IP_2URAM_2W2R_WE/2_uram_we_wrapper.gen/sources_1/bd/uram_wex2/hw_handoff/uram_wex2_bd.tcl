
################################################################
# This is a generated script based on design: uram_wex2
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
set scripts_vivado_version 2020.2
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
# source uram_wex2_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcu280-fsvh2892-2L-e
   set_property BOARD_PART xilinx.com:au280:part0:1.1 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name uram_wex2

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
  set addr0_0 [ create_bd_port -dir I -from 11 -to 0 addr0_0 ]
  set addr0_1 [ create_bd_port -dir I -from 11 -to 0 addr0_1 ]
  set addr1_0 [ create_bd_port -dir I -from 11 -to 0 addr1_0 ]
  set addr1_1 [ create_bd_port -dir I -from 11 -to 0 addr1_1 ]
  set ce0_0 [ create_bd_port -dir I ce0_0 ]
  set ce0_1 [ create_bd_port -dir I ce0_1 ]
  set ce1_0 [ create_bd_port -dir I ce1_0 ]
  set ce1_1 [ create_bd_port -dir I ce1_1 ]
  set clk_0 [ create_bd_port -dir I -type clk clk_0 ]
  set rdata0_0 [ create_bd_port -dir O -from 63 -to 0 rdata0_0 ]
  set rdata0_1 [ create_bd_port -dir O -from 63 -to 0 rdata0_1 ]
  set rdata1_0 [ create_bd_port -dir O -from 63 -to 0 rdata1_0 ]
  set rdata1_1 [ create_bd_port -dir O -from 63 -to 0 rdata1_1 ]
  set rst_n_0 [ create_bd_port -dir I -type rst rst_n_0 ]
  set wdata0_0 [ create_bd_port -dir I -from 63 -to 0 wdata0_0 ]
  set wdata0_1 [ create_bd_port -dir I -from 63 -to 0 wdata0_1 ]
  set wdata1_0 [ create_bd_port -dir I -from 63 -to 0 wdata1_0 ]
  set wdata1_1 [ create_bd_port -dir I -from 63 -to 0 wdata1_1 ]
  set we0_0 [ create_bd_port -dir I -from 7 -to 0 we0_0 ]
  set we0_1 [ create_bd_port -dir I -from 7 -to 0 we0_1 ]
  set we1_0 [ create_bd_port -dir I -from 7 -to 0 we1_0 ]
  set we1_1 [ create_bd_port -dir I -from 7 -to 0 we1_1 ]

  # Create instance: uram_2w_2r_we_0, and set properties
  set uram_2w_2r_we_0 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_0 ]

  # Create instance: uram_2w_2r_we_1, and set properties
  set uram_2w_2r_we_1 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_1 ]

  # Create port connections
  connect_bd_net -net addr0_0_1 [get_bd_ports addr0_0] [get_bd_pins uram_2w_2r_we_0/addr0]
  connect_bd_net -net addr0_1_1 [get_bd_ports addr0_1] [get_bd_pins uram_2w_2r_we_1/addr0]
  connect_bd_net -net addr1_0_1 [get_bd_ports addr1_0] [get_bd_pins uram_2w_2r_we_0/addr1]
  connect_bd_net -net addr1_1_1 [get_bd_ports addr1_1] [get_bd_pins uram_2w_2r_we_1/addr1]
  connect_bd_net -net ce0_0_1 [get_bd_ports ce0_0] [get_bd_pins uram_2w_2r_we_0/ce0]
  connect_bd_net -net ce0_1_1 [get_bd_ports ce0_1] [get_bd_pins uram_2w_2r_we_1/ce0]
  connect_bd_net -net ce1_0_1 [get_bd_ports ce1_0] [get_bd_pins uram_2w_2r_we_0/ce1]
  connect_bd_net -net ce1_1_1 [get_bd_ports ce1_1] [get_bd_pins uram_2w_2r_we_1/ce1]
  connect_bd_net -net clk_0_1 [get_bd_ports clk_0] [get_bd_pins uram_2w_2r_we_0/clk] [get_bd_pins uram_2w_2r_we_1/clk]
  connect_bd_net -net rst_n_0_1 [get_bd_ports rst_n_0] [get_bd_pins uram_2w_2r_we_0/rst_n] [get_bd_pins uram_2w_2r_we_1/rst_n]
  connect_bd_net -net uram_2w_2r_we_0_rdata0 [get_bd_ports rdata0_0] [get_bd_pins uram_2w_2r_we_0/rdata0]
  connect_bd_net -net uram_2w_2r_we_0_rdata1 [get_bd_ports rdata1_0] [get_bd_pins uram_2w_2r_we_0/rdata1]
  connect_bd_net -net uram_2w_2r_we_1_rdata0 [get_bd_ports rdata0_1] [get_bd_pins uram_2w_2r_we_1/rdata0]
  connect_bd_net -net uram_2w_2r_we_1_rdata1 [get_bd_ports rdata1_1] [get_bd_pins uram_2w_2r_we_1/rdata1]
  connect_bd_net -net wdata0_0_1 [get_bd_ports wdata0_0] [get_bd_pins uram_2w_2r_we_0/wdata0]
  connect_bd_net -net wdata0_1_1 [get_bd_ports wdata0_1] [get_bd_pins uram_2w_2r_we_1/wdata0]
  connect_bd_net -net wdata1_0_1 [get_bd_ports wdata1_0] [get_bd_pins uram_2w_2r_we_0/wdata1]
  connect_bd_net -net wdata1_1_1 [get_bd_ports wdata1_1] [get_bd_pins uram_2w_2r_we_1/wdata1]
  connect_bd_net -net we0_0_1 [get_bd_ports we0_0] [get_bd_pins uram_2w_2r_we_0/we0]
  connect_bd_net -net we0_1_1 [get_bd_ports we0_1] [get_bd_pins uram_2w_2r_we_1/we0]
  connect_bd_net -net we1_0_1 [get_bd_ports we1_0] [get_bd_pins uram_2w_2r_we_0/we1]
  connect_bd_net -net we1_1_1 [get_bd_ports we1_1] [get_bd_pins uram_2w_2r_we_1/we1]

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


