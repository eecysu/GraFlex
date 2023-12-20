
################################################################
# This is a generated script based on design: uram_wex32
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
# source uram_wex32_script.tcl

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
set design_name uram_wex32

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
  set addr0_2 [ create_bd_port -dir I -from 11 -to 0 addr0_2 ]
  set addr0_3 [ create_bd_port -dir I -from 11 -to 0 addr0_3 ]
  set addr0_4 [ create_bd_port -dir I -from 11 -to 0 addr0_4 ]
  set addr0_5 [ create_bd_port -dir I -from 11 -to 0 addr0_5 ]
  set addr0_6 [ create_bd_port -dir I -from 11 -to 0 addr0_6 ]
  set addr0_7 [ create_bd_port -dir I -from 11 -to 0 addr0_7 ]
  set addr0_8 [ create_bd_port -dir I -from 11 -to 0 addr0_8 ]
  set addr0_9 [ create_bd_port -dir I -from 11 -to 0 addr0_9 ]
  set addr0_10 [ create_bd_port -dir I -from 11 -to 0 addr0_10 ]
  set addr0_11 [ create_bd_port -dir I -from 11 -to 0 addr0_11 ]
  set addr0_12 [ create_bd_port -dir I -from 11 -to 0 addr0_12 ]
  set addr0_13 [ create_bd_port -dir I -from 11 -to 0 addr0_13 ]
  set addr0_14 [ create_bd_port -dir I -from 11 -to 0 addr0_14 ]
  set addr0_15 [ create_bd_port -dir I -from 11 -to 0 addr0_15 ]
  set addr0_16 [ create_bd_port -dir I -from 11 -to 0 addr0_16 ]
  set addr0_17 [ create_bd_port -dir I -from 11 -to 0 addr0_17 ]
  set addr0_18 [ create_bd_port -dir I -from 11 -to 0 addr0_18 ]
  set addr0_19 [ create_bd_port -dir I -from 11 -to 0 addr0_19 ]
  set addr0_20 [ create_bd_port -dir I -from 11 -to 0 addr0_20 ]
  set addr0_21 [ create_bd_port -dir I -from 11 -to 0 addr0_21 ]
  set addr0_22 [ create_bd_port -dir I -from 11 -to 0 addr0_22 ]
  set addr0_23 [ create_bd_port -dir I -from 11 -to 0 addr0_23 ]
  set addr0_24 [ create_bd_port -dir I -from 11 -to 0 addr0_24 ]
  set addr0_25 [ create_bd_port -dir I -from 11 -to 0 addr0_25 ]
  set addr0_26 [ create_bd_port -dir I -from 11 -to 0 addr0_26 ]
  set addr0_27 [ create_bd_port -dir I -from 11 -to 0 addr0_27 ]
  set addr0_28 [ create_bd_port -dir I -from 11 -to 0 addr0_28 ]
  set addr0_29 [ create_bd_port -dir I -from 11 -to 0 addr0_29 ]
  set addr0_30 [ create_bd_port -dir I -from 11 -to 0 addr0_30 ]
  set addr0_31 [ create_bd_port -dir I -from 11 -to 0 addr0_31 ]
  set addr1_0 [ create_bd_port -dir I -from 11 -to 0 addr1_0 ]
  set addr1_1 [ create_bd_port -dir I -from 11 -to 0 addr1_1 ]
  set addr1_2 [ create_bd_port -dir I -from 11 -to 0 addr1_2 ]
  set addr1_3 [ create_bd_port -dir I -from 11 -to 0 addr1_3 ]
  set addr1_4 [ create_bd_port -dir I -from 11 -to 0 addr1_4 ]
  set addr1_5 [ create_bd_port -dir I -from 11 -to 0 addr1_5 ]
  set addr1_6 [ create_bd_port -dir I -from 11 -to 0 addr1_6 ]
  set addr1_7 [ create_bd_port -dir I -from 11 -to 0 addr1_7 ]
  set addr1_8 [ create_bd_port -dir I -from 11 -to 0 addr1_8 ]
  set addr1_9 [ create_bd_port -dir I -from 11 -to 0 addr1_9 ]
  set addr1_10 [ create_bd_port -dir I -from 11 -to 0 addr1_10 ]
  set addr1_11 [ create_bd_port -dir I -from 11 -to 0 addr1_11 ]
  set addr1_12 [ create_bd_port -dir I -from 11 -to 0 addr1_12 ]
  set addr1_13 [ create_bd_port -dir I -from 11 -to 0 addr1_13 ]
  set addr1_14 [ create_bd_port -dir I -from 11 -to 0 addr1_14 ]
  set addr1_15 [ create_bd_port -dir I -from 11 -to 0 addr1_15 ]
  set addr1_16 [ create_bd_port -dir I -from 11 -to 0 addr1_16 ]
  set addr1_17 [ create_bd_port -dir I -from 11 -to 0 addr1_17 ]
  set addr1_18 [ create_bd_port -dir I -from 11 -to 0 addr1_18 ]
  set addr1_19 [ create_bd_port -dir I -from 11 -to 0 addr1_19 ]
  set addr1_20 [ create_bd_port -dir I -from 11 -to 0 addr1_20 ]
  set addr1_21 [ create_bd_port -dir I -from 11 -to 0 addr1_21 ]
  set addr1_22 [ create_bd_port -dir I -from 11 -to 0 addr1_22 ]
  set addr1_23 [ create_bd_port -dir I -from 11 -to 0 addr1_23 ]
  set addr1_24 [ create_bd_port -dir I -from 11 -to 0 addr1_24 ]
  set addr1_25 [ create_bd_port -dir I -from 11 -to 0 addr1_25 ]
  set addr1_26 [ create_bd_port -dir I -from 11 -to 0 addr1_26 ]
  set addr1_27 [ create_bd_port -dir I -from 11 -to 0 addr1_27 ]
  set addr1_28 [ create_bd_port -dir I -from 11 -to 0 addr1_28 ]
  set addr1_29 [ create_bd_port -dir I -from 11 -to 0 addr1_29 ]
  set addr1_30 [ create_bd_port -dir I -from 11 -to 0 addr1_30 ]
  set addr1_31 [ create_bd_port -dir I -from 11 -to 0 addr1_31 ]
  set ce0_0 [ create_bd_port -dir I ce0_0 ]
  set ce0_1 [ create_bd_port -dir I ce0_1 ]
  set ce0_2 [ create_bd_port -dir I ce0_2 ]
  set ce0_3 [ create_bd_port -dir I ce0_3 ]
  set ce0_4 [ create_bd_port -dir I ce0_4 ]
  set ce0_5 [ create_bd_port -dir I ce0_5 ]
  set ce0_6 [ create_bd_port -dir I ce0_6 ]
  set ce0_7 [ create_bd_port -dir I ce0_7 ]
  set ce0_8 [ create_bd_port -dir I ce0_8 ]
  set ce0_9 [ create_bd_port -dir I ce0_9 ]
  set ce0_10 [ create_bd_port -dir I ce0_10 ]
  set ce0_11 [ create_bd_port -dir I ce0_11 ]
  set ce0_12 [ create_bd_port -dir I ce0_12 ]
  set ce0_13 [ create_bd_port -dir I ce0_13 ]
  set ce0_14 [ create_bd_port -dir I ce0_14 ]
  set ce0_15 [ create_bd_port -dir I ce0_15 ]
  set ce0_16 [ create_bd_port -dir I ce0_16 ]
  set ce0_17 [ create_bd_port -dir I ce0_17 ]
  set ce0_18 [ create_bd_port -dir I ce0_18 ]
  set ce0_19 [ create_bd_port -dir I ce0_19 ]
  set ce0_20 [ create_bd_port -dir I ce0_20 ]
  set ce0_21 [ create_bd_port -dir I ce0_21 ]
  set ce0_22 [ create_bd_port -dir I ce0_22 ]
  set ce0_23 [ create_bd_port -dir I ce0_23 ]
  set ce0_24 [ create_bd_port -dir I ce0_24 ]
  set ce0_25 [ create_bd_port -dir I ce0_25 ]
  set ce0_26 [ create_bd_port -dir I ce0_26 ]
  set ce0_27 [ create_bd_port -dir I ce0_27 ]
  set ce0_28 [ create_bd_port -dir I ce0_28 ]
  set ce0_29 [ create_bd_port -dir I ce0_29 ]
  set ce0_30 [ create_bd_port -dir I ce0_30 ]
  set ce0_31 [ create_bd_port -dir I ce0_31 ]
  set ce1_0 [ create_bd_port -dir I ce1_0 ]
  set ce1_1 [ create_bd_port -dir I ce1_1 ]
  set ce1_2 [ create_bd_port -dir I ce1_2 ]
  set ce1_3 [ create_bd_port -dir I ce1_3 ]
  set ce1_4 [ create_bd_port -dir I ce1_4 ]
  set ce1_5 [ create_bd_port -dir I ce1_5 ]
  set ce1_6 [ create_bd_port -dir I ce1_6 ]
  set ce1_7 [ create_bd_port -dir I ce1_7 ]
  set ce1_8 [ create_bd_port -dir I ce1_8 ]
  set ce1_9 [ create_bd_port -dir I ce1_9 ]
  set ce1_10 [ create_bd_port -dir I ce1_10 ]
  set ce1_11 [ create_bd_port -dir I ce1_11 ]
  set ce1_12 [ create_bd_port -dir I ce1_12 ]
  set ce1_13 [ create_bd_port -dir I ce1_13 ]
  set ce1_14 [ create_bd_port -dir I ce1_14 ]
  set ce1_15 [ create_bd_port -dir I ce1_15 ]
  set ce1_16 [ create_bd_port -dir I ce1_16 ]
  set ce1_17 [ create_bd_port -dir I ce1_17 ]
  set ce1_18 [ create_bd_port -dir I ce1_18 ]
  set ce1_19 [ create_bd_port -dir I ce1_19 ]
  set ce1_20 [ create_bd_port -dir I ce1_20 ]
  set ce1_21 [ create_bd_port -dir I ce1_21 ]
  set ce1_22 [ create_bd_port -dir I ce1_22 ]
  set ce1_23 [ create_bd_port -dir I ce1_23 ]
  set ce1_24 [ create_bd_port -dir I ce1_24 ]
  set ce1_25 [ create_bd_port -dir I ce1_25 ]
  set ce1_26 [ create_bd_port -dir I ce1_26 ]
  set ce1_27 [ create_bd_port -dir I ce1_27 ]
  set ce1_28 [ create_bd_port -dir I ce1_28 ]
  set ce1_29 [ create_bd_port -dir I ce1_29 ]
  set ce1_30 [ create_bd_port -dir I ce1_30 ]
  set ce1_31 [ create_bd_port -dir I ce1_31 ]
  set clk_0 [ create_bd_port -dir I -type clk clk_0 ]
  set rdata0_0 [ create_bd_port -dir O -from 63 -to 0 rdata0_0 ]
  set rdata0_1 [ create_bd_port -dir O -from 63 -to 0 rdata0_1 ]
  set rdata0_2 [ create_bd_port -dir O -from 63 -to 0 rdata0_2 ]
  set rdata0_3 [ create_bd_port -dir O -from 63 -to 0 rdata0_3 ]
  set rdata0_4 [ create_bd_port -dir O -from 63 -to 0 rdata0_4 ]
  set rdata0_5 [ create_bd_port -dir O -from 63 -to 0 rdata0_5 ]
  set rdata0_6 [ create_bd_port -dir O -from 63 -to 0 rdata0_6 ]
  set rdata0_7 [ create_bd_port -dir O -from 63 -to 0 rdata0_7 ]
  set rdata0_8 [ create_bd_port -dir O -from 63 -to 0 rdata0_8 ]
  set rdata0_9 [ create_bd_port -dir O -from 63 -to 0 rdata0_9 ]
  set rdata0_10 [ create_bd_port -dir O -from 63 -to 0 rdata0_10 ]
  set rdata0_11 [ create_bd_port -dir O -from 63 -to 0 rdata0_11 ]
  set rdata0_12 [ create_bd_port -dir O -from 63 -to 0 rdata0_12 ]
  set rdata0_13 [ create_bd_port -dir O -from 63 -to 0 rdata0_13 ]
  set rdata0_14 [ create_bd_port -dir O -from 63 -to 0 rdata0_14 ]
  set rdata0_15 [ create_bd_port -dir O -from 63 -to 0 rdata0_15 ]
  set rdata0_16 [ create_bd_port -dir O -from 63 -to 0 rdata0_16 ]
  set rdata0_17 [ create_bd_port -dir O -from 63 -to 0 rdata0_17 ]
  set rdata0_18 [ create_bd_port -dir O -from 63 -to 0 rdata0_18 ]
  set rdata0_19 [ create_bd_port -dir O -from 63 -to 0 rdata0_19 ]
  set rdata0_20 [ create_bd_port -dir O -from 63 -to 0 rdata0_20 ]
  set rdata0_21 [ create_bd_port -dir O -from 63 -to 0 rdata0_21 ]
  set rdata0_22 [ create_bd_port -dir O -from 63 -to 0 rdata0_22 ]
  set rdata0_23 [ create_bd_port -dir O -from 63 -to 0 rdata0_23 ]
  set rdata0_24 [ create_bd_port -dir O -from 63 -to 0 rdata0_24 ]
  set rdata0_25 [ create_bd_port -dir O -from 63 -to 0 rdata0_25 ]
  set rdata0_26 [ create_bd_port -dir O -from 63 -to 0 rdata0_26 ]
  set rdata0_27 [ create_bd_port -dir O -from 63 -to 0 rdata0_27 ]
  set rdata0_28 [ create_bd_port -dir O -from 63 -to 0 rdata0_28 ]
  set rdata0_29 [ create_bd_port -dir O -from 63 -to 0 rdata0_29 ]
  set rdata0_30 [ create_bd_port -dir O -from 63 -to 0 rdata0_30 ]
  set rdata0_31 [ create_bd_port -dir O -from 63 -to 0 rdata0_31 ]
  set rdata1_0 [ create_bd_port -dir O -from 63 -to 0 rdata1_0 ]
  set rdata1_1 [ create_bd_port -dir O -from 63 -to 0 rdata1_1 ]
  set rdata1_2 [ create_bd_port -dir O -from 63 -to 0 rdata1_2 ]
  set rdata1_3 [ create_bd_port -dir O -from 63 -to 0 rdata1_3 ]
  set rdata1_4 [ create_bd_port -dir O -from 63 -to 0 rdata1_4 ]
  set rdata1_5 [ create_bd_port -dir O -from 63 -to 0 rdata1_5 ]
  set rdata1_6 [ create_bd_port -dir O -from 63 -to 0 rdata1_6 ]
  set rdata1_7 [ create_bd_port -dir O -from 63 -to 0 rdata1_7 ]
  set rdata1_8 [ create_bd_port -dir O -from 63 -to 0 rdata1_8 ]
  set rdata1_9 [ create_bd_port -dir O -from 63 -to 0 rdata1_9 ]
  set rdata1_10 [ create_bd_port -dir O -from 63 -to 0 rdata1_10 ]
  set rdata1_11 [ create_bd_port -dir O -from 63 -to 0 rdata1_11 ]
  set rdata1_12 [ create_bd_port -dir O -from 63 -to 0 rdata1_12 ]
  set rdata1_13 [ create_bd_port -dir O -from 63 -to 0 rdata1_13 ]
  set rdata1_14 [ create_bd_port -dir O -from 63 -to 0 rdata1_14 ]
  set rdata1_15 [ create_bd_port -dir O -from 63 -to 0 rdata1_15 ]
  set rdata1_16 [ create_bd_port -dir O -from 63 -to 0 rdata1_16 ]
  set rdata1_17 [ create_bd_port -dir O -from 63 -to 0 rdata1_17 ]
  set rdata1_18 [ create_bd_port -dir O -from 63 -to 0 rdata1_18 ]
  set rdata1_19 [ create_bd_port -dir O -from 63 -to 0 rdata1_19 ]
  set rdata1_20 [ create_bd_port -dir O -from 63 -to 0 rdata1_20 ]
  set rdata1_21 [ create_bd_port -dir O -from 63 -to 0 rdata1_21 ]
  set rdata1_22 [ create_bd_port -dir O -from 63 -to 0 rdata1_22 ]
  set rdata1_23 [ create_bd_port -dir O -from 63 -to 0 rdata1_23 ]
  set rdata1_24 [ create_bd_port -dir O -from 63 -to 0 rdata1_24 ]
  set rdata1_25 [ create_bd_port -dir O -from 63 -to 0 rdata1_25 ]
  set rdata1_26 [ create_bd_port -dir O -from 63 -to 0 rdata1_26 ]
  set rdata1_27 [ create_bd_port -dir O -from 63 -to 0 rdata1_27 ]
  set rdata1_28 [ create_bd_port -dir O -from 63 -to 0 rdata1_28 ]
  set rdata1_29 [ create_bd_port -dir O -from 63 -to 0 rdata1_29 ]
  set rdata1_30 [ create_bd_port -dir O -from 63 -to 0 rdata1_30 ]
  set rdata1_31 [ create_bd_port -dir O -from 63 -to 0 rdata1_31 ]
  set rst_n_0 [ create_bd_port -dir I -type rst rst_n_0 ]
  set wdata0_0 [ create_bd_port -dir I -from 63 -to 0 wdata0_0 ]
  set wdata0_1 [ create_bd_port -dir I -from 63 -to 0 wdata0_1 ]
  set wdata0_2 [ create_bd_port -dir I -from 63 -to 0 wdata0_2 ]
  set wdata0_3 [ create_bd_port -dir I -from 63 -to 0 wdata0_3 ]
  set wdata0_4 [ create_bd_port -dir I -from 63 -to 0 wdata0_4 ]
  set wdata0_5 [ create_bd_port -dir I -from 63 -to 0 wdata0_5 ]
  set wdata0_6 [ create_bd_port -dir I -from 63 -to 0 wdata0_6 ]
  set wdata0_7 [ create_bd_port -dir I -from 63 -to 0 wdata0_7 ]
  set wdata0_8 [ create_bd_port -dir I -from 63 -to 0 wdata0_8 ]
  set wdata0_9 [ create_bd_port -dir I -from 63 -to 0 wdata0_9 ]
  set wdata0_10 [ create_bd_port -dir I -from 63 -to 0 wdata0_10 ]
  set wdata0_11 [ create_bd_port -dir I -from 63 -to 0 wdata0_11 ]
  set wdata0_12 [ create_bd_port -dir I -from 63 -to 0 wdata0_12 ]
  set wdata0_13 [ create_bd_port -dir I -from 63 -to 0 wdata0_13 ]
  set wdata0_14 [ create_bd_port -dir I -from 63 -to 0 wdata0_14 ]
  set wdata0_15 [ create_bd_port -dir I -from 63 -to 0 wdata0_15 ]
  set wdata0_16 [ create_bd_port -dir I -from 63 -to 0 wdata0_16 ]
  set wdata0_17 [ create_bd_port -dir I -from 63 -to 0 wdata0_17 ]
  set wdata0_18 [ create_bd_port -dir I -from 63 -to 0 wdata0_18 ]
  set wdata0_19 [ create_bd_port -dir I -from 63 -to 0 wdata0_19 ]
  set wdata0_20 [ create_bd_port -dir I -from 63 -to 0 wdata0_20 ]
  set wdata0_21 [ create_bd_port -dir I -from 63 -to 0 wdata0_21 ]
  set wdata0_22 [ create_bd_port -dir I -from 63 -to 0 wdata0_22 ]
  set wdata0_23 [ create_bd_port -dir I -from 63 -to 0 wdata0_23 ]
  set wdata0_24 [ create_bd_port -dir I -from 63 -to 0 wdata0_24 ]
  set wdata0_25 [ create_bd_port -dir I -from 63 -to 0 wdata0_25 ]
  set wdata0_26 [ create_bd_port -dir I -from 63 -to 0 wdata0_26 ]
  set wdata0_27 [ create_bd_port -dir I -from 63 -to 0 wdata0_27 ]
  set wdata0_28 [ create_bd_port -dir I -from 63 -to 0 wdata0_28 ]
  set wdata0_29 [ create_bd_port -dir I -from 63 -to 0 wdata0_29 ]
  set wdata0_30 [ create_bd_port -dir I -from 63 -to 0 wdata0_30 ]
  set wdata0_31 [ create_bd_port -dir I -from 63 -to 0 wdata0_31 ]
  set wdata1_0 [ create_bd_port -dir I -from 63 -to 0 wdata1_0 ]
  set wdata1_1 [ create_bd_port -dir I -from 63 -to 0 wdata1_1 ]
  set wdata1_2 [ create_bd_port -dir I -from 63 -to 0 wdata1_2 ]
  set wdata1_3 [ create_bd_port -dir I -from 63 -to 0 wdata1_3 ]
  set wdata1_4 [ create_bd_port -dir I -from 63 -to 0 wdata1_4 ]
  set wdata1_5 [ create_bd_port -dir I -from 63 -to 0 wdata1_5 ]
  set wdata1_6 [ create_bd_port -dir I -from 63 -to 0 wdata1_6 ]
  set wdata1_7 [ create_bd_port -dir I -from 63 -to 0 wdata1_7 ]
  set wdata1_8 [ create_bd_port -dir I -from 63 -to 0 wdata1_8 ]
  set wdata1_9 [ create_bd_port -dir I -from 63 -to 0 wdata1_9 ]
  set wdata1_10 [ create_bd_port -dir I -from 63 -to 0 wdata1_10 ]
  set wdata1_11 [ create_bd_port -dir I -from 63 -to 0 wdata1_11 ]
  set wdata1_12 [ create_bd_port -dir I -from 63 -to 0 wdata1_12 ]
  set wdata1_13 [ create_bd_port -dir I -from 63 -to 0 wdata1_13 ]
  set wdata1_14 [ create_bd_port -dir I -from 63 -to 0 wdata1_14 ]
  set wdata1_15 [ create_bd_port -dir I -from 63 -to 0 wdata1_15 ]
  set wdata1_16 [ create_bd_port -dir I -from 63 -to 0 wdata1_16 ]
  set wdata1_17 [ create_bd_port -dir I -from 63 -to 0 wdata1_17 ]
  set wdata1_18 [ create_bd_port -dir I -from 63 -to 0 wdata1_18 ]
  set wdata1_19 [ create_bd_port -dir I -from 63 -to 0 wdata1_19 ]
  set wdata1_20 [ create_bd_port -dir I -from 63 -to 0 wdata1_20 ]
  set wdata1_21 [ create_bd_port -dir I -from 63 -to 0 wdata1_21 ]
  set wdata1_22 [ create_bd_port -dir I -from 63 -to 0 wdata1_22 ]
  set wdata1_23 [ create_bd_port -dir I -from 63 -to 0 wdata1_23 ]
  set wdata1_24 [ create_bd_port -dir I -from 63 -to 0 wdata1_24 ]
  set wdata1_25 [ create_bd_port -dir I -from 63 -to 0 wdata1_25 ]
  set wdata1_26 [ create_bd_port -dir I -from 63 -to 0 wdata1_26 ]
  set wdata1_27 [ create_bd_port -dir I -from 63 -to 0 wdata1_27 ]
  set wdata1_28 [ create_bd_port -dir I -from 63 -to 0 wdata1_28 ]
  set wdata1_29 [ create_bd_port -dir I -from 63 -to 0 wdata1_29 ]
  set wdata1_30 [ create_bd_port -dir I -from 63 -to 0 wdata1_30 ]
  set wdata1_31 [ create_bd_port -dir I -from 63 -to 0 wdata1_31 ]
  set we0_0 [ create_bd_port -dir I -from 7 -to 0 we0_0 ]
  set we0_1 [ create_bd_port -dir I -from 7 -to 0 we0_1 ]
  set we0_2 [ create_bd_port -dir I -from 7 -to 0 we0_2 ]
  set we0_3 [ create_bd_port -dir I -from 7 -to 0 we0_3 ]
  set we0_4 [ create_bd_port -dir I -from 7 -to 0 we0_4 ]
  set we0_5 [ create_bd_port -dir I -from 7 -to 0 we0_5 ]
  set we0_6 [ create_bd_port -dir I -from 7 -to 0 we0_6 ]
  set we0_7 [ create_bd_port -dir I -from 7 -to 0 we0_7 ]
  set we0_8 [ create_bd_port -dir I -from 7 -to 0 we0_8 ]
  set we0_9 [ create_bd_port -dir I -from 7 -to 0 we0_9 ]
  set we0_10 [ create_bd_port -dir I -from 7 -to 0 we0_10 ]
  set we0_11 [ create_bd_port -dir I -from 7 -to 0 we0_11 ]
  set we0_12 [ create_bd_port -dir I -from 7 -to 0 we0_12 ]
  set we0_13 [ create_bd_port -dir I -from 7 -to 0 we0_13 ]
  set we0_14 [ create_bd_port -dir I -from 7 -to 0 we0_14 ]
  set we0_15 [ create_bd_port -dir I -from 7 -to 0 we0_15 ]
  set we0_16 [ create_bd_port -dir I -from 7 -to 0 we0_16 ]
  set we0_17 [ create_bd_port -dir I -from 7 -to 0 we0_17 ]
  set we0_18 [ create_bd_port -dir I -from 7 -to 0 we0_18 ]
  set we0_19 [ create_bd_port -dir I -from 7 -to 0 we0_19 ]
  set we0_20 [ create_bd_port -dir I -from 7 -to 0 we0_20 ]
  set we0_21 [ create_bd_port -dir I -from 7 -to 0 we0_21 ]
  set we0_22 [ create_bd_port -dir I -from 7 -to 0 we0_22 ]
  set we0_23 [ create_bd_port -dir I -from 7 -to 0 we0_23 ]
  set we0_24 [ create_bd_port -dir I -from 7 -to 0 we0_24 ]
  set we0_25 [ create_bd_port -dir I -from 7 -to 0 we0_25 ]
  set we0_26 [ create_bd_port -dir I -from 7 -to 0 we0_26 ]
  set we0_27 [ create_bd_port -dir I -from 7 -to 0 we0_27 ]
  set we0_28 [ create_bd_port -dir I -from 7 -to 0 we0_28 ]
  set we0_29 [ create_bd_port -dir I -from 7 -to 0 we0_29 ]
  set we0_30 [ create_bd_port -dir I -from 7 -to 0 we0_30 ]
  set we0_31 [ create_bd_port -dir I -from 7 -to 0 we0_31 ]
  set we1_0 [ create_bd_port -dir I -from 7 -to 0 we1_0 ]
  set we1_1 [ create_bd_port -dir I -from 7 -to 0 we1_1 ]
  set we1_2 [ create_bd_port -dir I -from 7 -to 0 we1_2 ]
  set we1_3 [ create_bd_port -dir I -from 7 -to 0 we1_3 ]
  set we1_4 [ create_bd_port -dir I -from 7 -to 0 we1_4 ]
  set we1_5 [ create_bd_port -dir I -from 7 -to 0 we1_5 ]
  set we1_6 [ create_bd_port -dir I -from 7 -to 0 we1_6 ]
  set we1_7 [ create_bd_port -dir I -from 7 -to 0 we1_7 ]
  set we1_8 [ create_bd_port -dir I -from 7 -to 0 we1_8 ]
  set we1_9 [ create_bd_port -dir I -from 7 -to 0 we1_9 ]
  set we1_10 [ create_bd_port -dir I -from 7 -to 0 we1_10 ]
  set we1_11 [ create_bd_port -dir I -from 7 -to 0 we1_11 ]
  set we1_12 [ create_bd_port -dir I -from 7 -to 0 we1_12 ]
  set we1_13 [ create_bd_port -dir I -from 7 -to 0 we1_13 ]
  set we1_14 [ create_bd_port -dir I -from 7 -to 0 we1_14 ]
  set we1_15 [ create_bd_port -dir I -from 7 -to 0 we1_15 ]
  set we1_16 [ create_bd_port -dir I -from 7 -to 0 we1_16 ]
  set we1_17 [ create_bd_port -dir I -from 7 -to 0 we1_17 ]
  set we1_18 [ create_bd_port -dir I -from 7 -to 0 we1_18 ]
  set we1_19 [ create_bd_port -dir I -from 7 -to 0 we1_19 ]
  set we1_20 [ create_bd_port -dir I -from 7 -to 0 we1_20 ]
  set we1_21 [ create_bd_port -dir I -from 7 -to 0 we1_21 ]
  set we1_22 [ create_bd_port -dir I -from 7 -to 0 we1_22 ]
  set we1_23 [ create_bd_port -dir I -from 7 -to 0 we1_23 ]
  set we1_24 [ create_bd_port -dir I -from 7 -to 0 we1_24 ]
  set we1_25 [ create_bd_port -dir I -from 7 -to 0 we1_25 ]
  set we1_26 [ create_bd_port -dir I -from 7 -to 0 we1_26 ]
  set we1_27 [ create_bd_port -dir I -from 7 -to 0 we1_27 ]
  set we1_28 [ create_bd_port -dir I -from 7 -to 0 we1_28 ]
  set we1_29 [ create_bd_port -dir I -from 7 -to 0 we1_29 ]
  set we1_30 [ create_bd_port -dir I -from 7 -to 0 we1_30 ]
  set we1_31 [ create_bd_port -dir I -from 7 -to 0 we1_31 ]

  # Create instance: uram_2w_2r_we_0, and set properties
  set uram_2w_2r_we_0 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_0 ]

  # Create instance: uram_2w_2r_we_1, and set properties
  set uram_2w_2r_we_1 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_1 ]

  # Create instance: uram_2w_2r_we_2, and set properties
  set uram_2w_2r_we_2 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_2 ]

  # Create instance: uram_2w_2r_we_3, and set properties
  set uram_2w_2r_we_3 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_3 ]

  # Create instance: uram_2w_2r_we_4, and set properties
  set uram_2w_2r_we_4 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_4 ]

  # Create instance: uram_2w_2r_we_5, and set properties
  set uram_2w_2r_we_5 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_5 ]

  # Create instance: uram_2w_2r_we_6, and set properties
  set uram_2w_2r_we_6 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_6 ]

  # Create instance: uram_2w_2r_we_7, and set properties
  set uram_2w_2r_we_7 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_7 ]

  # Create instance: uram_2w_2r_we_8, and set properties
  set uram_2w_2r_we_8 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_8 ]

  # Create instance: uram_2w_2r_we_9, and set properties
  set uram_2w_2r_we_9 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_9 ]

  # Create instance: uram_2w_2r_we_10, and set properties
  set uram_2w_2r_we_10 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_10 ]

  # Create instance: uram_2w_2r_we_11, and set properties
  set uram_2w_2r_we_11 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_11 ]

  # Create instance: uram_2w_2r_we_12, and set properties
  set uram_2w_2r_we_12 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_12 ]

  # Create instance: uram_2w_2r_we_13, and set properties
  set uram_2w_2r_we_13 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_13 ]

  # Create instance: uram_2w_2r_we_14, and set properties
  set uram_2w_2r_we_14 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_14 ]

  # Create instance: uram_2w_2r_we_15, and set properties
  set uram_2w_2r_we_15 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_15 ]

  # Create instance: uram_2w_2r_we_16, and set properties
  set uram_2w_2r_we_16 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_16 ]

  # Create instance: uram_2w_2r_we_17, and set properties
  set uram_2w_2r_we_17 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_17 ]

  # Create instance: uram_2w_2r_we_18, and set properties
  set uram_2w_2r_we_18 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_18 ]

  # Create instance: uram_2w_2r_we_19, and set properties
  set uram_2w_2r_we_19 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_19 ]

  # Create instance: uram_2w_2r_we_20, and set properties
  set uram_2w_2r_we_20 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_20 ]

  # Create instance: uram_2w_2r_we_21, and set properties
  set uram_2w_2r_we_21 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_21 ]

  # Create instance: uram_2w_2r_we_22, and set properties
  set uram_2w_2r_we_22 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_22 ]

  # Create instance: uram_2w_2r_we_23, and set properties
  set uram_2w_2r_we_23 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_23 ]

  # Create instance: uram_2w_2r_we_24, and set properties
  set uram_2w_2r_we_24 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_24 ]

  # Create instance: uram_2w_2r_we_25, and set properties
  set uram_2w_2r_we_25 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_25 ]

  # Create instance: uram_2w_2r_we_26, and set properties
  set uram_2w_2r_we_26 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_26 ]

  # Create instance: uram_2w_2r_we_27, and set properties
  set uram_2w_2r_we_27 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_27 ]

  # Create instance: uram_2w_2r_we_28, and set properties
  set uram_2w_2r_we_28 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_28 ]

  # Create instance: uram_2w_2r_we_29, and set properties
  set uram_2w_2r_we_29 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_29 ]

  # Create instance: uram_2w_2r_we_30, and set properties
  set uram_2w_2r_we_30 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_30 ]

  # Create instance: uram_2w_2r_we_31, and set properties
  set uram_2w_2r_we_31 [ create_bd_cell -type ip -vlnv user.org:user:uram_2w_2r_we:1.0 uram_2w_2r_we_31 ]

  # Create port connections
  connect_bd_net -net addr0_0_1 [get_bd_ports addr0_0] [get_bd_pins uram_2w_2r_we_0/addr0]
  connect_bd_net -net addr0_10_1 [get_bd_ports addr0_10] [get_bd_pins uram_2w_2r_we_10/addr0]
  connect_bd_net -net addr0_11_1 [get_bd_ports addr0_11] [get_bd_pins uram_2w_2r_we_11/addr0]
  connect_bd_net -net addr0_12_1 [get_bd_ports addr0_12] [get_bd_pins uram_2w_2r_we_12/addr0]
  connect_bd_net -net addr0_13_1 [get_bd_ports addr0_13] [get_bd_pins uram_2w_2r_we_13/addr0]
  connect_bd_net -net addr0_14_1 [get_bd_ports addr0_14] [get_bd_pins uram_2w_2r_we_14/addr0]
  connect_bd_net -net addr0_15_1 [get_bd_ports addr0_15] [get_bd_pins uram_2w_2r_we_15/addr0]
  connect_bd_net -net addr0_16_1 [get_bd_ports addr0_16] [get_bd_pins uram_2w_2r_we_16/addr0]
  connect_bd_net -net addr0_17_1 [get_bd_ports addr0_17] [get_bd_pins uram_2w_2r_we_17/addr0]
  connect_bd_net -net addr0_18_1 [get_bd_ports addr0_18] [get_bd_pins uram_2w_2r_we_18/addr0]
  connect_bd_net -net addr0_19_1 [get_bd_ports addr0_19] [get_bd_pins uram_2w_2r_we_19/addr0]
  connect_bd_net -net addr0_1_1 [get_bd_ports addr0_1] [get_bd_pins uram_2w_2r_we_1/addr0]
  connect_bd_net -net addr0_20_1 [get_bd_ports addr0_20] [get_bd_pins uram_2w_2r_we_20/addr0]
  connect_bd_net -net addr0_21_1 [get_bd_ports addr0_21] [get_bd_pins uram_2w_2r_we_21/addr0]
  connect_bd_net -net addr0_22_1 [get_bd_ports addr0_22] [get_bd_pins uram_2w_2r_we_22/addr0]
  connect_bd_net -net addr0_23_1 [get_bd_ports addr0_23] [get_bd_pins uram_2w_2r_we_23/addr0]
  connect_bd_net -net addr0_24_1 [get_bd_ports addr0_24] [get_bd_pins uram_2w_2r_we_24/addr0]
  connect_bd_net -net addr0_25_1 [get_bd_ports addr0_25] [get_bd_pins uram_2w_2r_we_25/addr0]
  connect_bd_net -net addr0_26_1 [get_bd_ports addr0_26] [get_bd_pins uram_2w_2r_we_26/addr0]
  connect_bd_net -net addr0_27_1 [get_bd_ports addr0_27] [get_bd_pins uram_2w_2r_we_27/addr0]
  connect_bd_net -net addr0_28_1 [get_bd_ports addr0_28] [get_bd_pins uram_2w_2r_we_28/addr0]
  connect_bd_net -net addr0_29_1 [get_bd_ports addr0_29] [get_bd_pins uram_2w_2r_we_29/addr0]
  connect_bd_net -net addr0_2_1 [get_bd_ports addr0_2] [get_bd_pins uram_2w_2r_we_2/addr0]
  connect_bd_net -net addr0_30_1 [get_bd_ports addr0_30] [get_bd_pins uram_2w_2r_we_30/addr0]
  connect_bd_net -net addr0_31_1 [get_bd_ports addr0_31] [get_bd_pins uram_2w_2r_we_31/addr0]
  connect_bd_net -net addr0_3_1 [get_bd_ports addr0_3] [get_bd_pins uram_2w_2r_we_3/addr0]
  connect_bd_net -net addr0_4_1 [get_bd_ports addr0_4] [get_bd_pins uram_2w_2r_we_4/addr0]
  connect_bd_net -net addr0_5_1 [get_bd_ports addr0_5] [get_bd_pins uram_2w_2r_we_5/addr0]
  connect_bd_net -net addr0_6_1 [get_bd_ports addr0_6] [get_bd_pins uram_2w_2r_we_6/addr0]
  connect_bd_net -net addr0_7_1 [get_bd_ports addr0_7] [get_bd_pins uram_2w_2r_we_7/addr0]
  connect_bd_net -net addr0_8_1 [get_bd_ports addr0_8] [get_bd_pins uram_2w_2r_we_8/addr0]
  connect_bd_net -net addr0_9_1 [get_bd_ports addr0_9] [get_bd_pins uram_2w_2r_we_9/addr0]
  connect_bd_net -net addr1_0_1 [get_bd_ports addr1_0] [get_bd_pins uram_2w_2r_we_0/addr1]
  connect_bd_net -net addr1_10_1 [get_bd_ports addr1_10] [get_bd_pins uram_2w_2r_we_10/addr1]
  connect_bd_net -net addr1_11_1 [get_bd_ports addr1_11] [get_bd_pins uram_2w_2r_we_11/addr1]
  connect_bd_net -net addr1_12_1 [get_bd_ports addr1_12] [get_bd_pins uram_2w_2r_we_12/addr1]
  connect_bd_net -net addr1_13_1 [get_bd_ports addr1_13] [get_bd_pins uram_2w_2r_we_13/addr1]
  connect_bd_net -net addr1_14_1 [get_bd_ports addr1_14] [get_bd_pins uram_2w_2r_we_14/addr1]
  connect_bd_net -net addr1_15_1 [get_bd_ports addr1_15] [get_bd_pins uram_2w_2r_we_15/addr1]
  connect_bd_net -net addr1_16_1 [get_bd_ports addr1_16] [get_bd_pins uram_2w_2r_we_16/addr1]
  connect_bd_net -net addr1_17_1 [get_bd_ports addr1_17] [get_bd_pins uram_2w_2r_we_17/addr1]
  connect_bd_net -net addr1_18_1 [get_bd_ports addr1_18] [get_bd_pins uram_2w_2r_we_18/addr1]
  connect_bd_net -net addr1_19_1 [get_bd_ports addr1_19] [get_bd_pins uram_2w_2r_we_19/addr1]
  connect_bd_net -net addr1_1_1 [get_bd_ports addr1_1] [get_bd_pins uram_2w_2r_we_1/addr1]
  connect_bd_net -net addr1_20_1 [get_bd_ports addr1_20] [get_bd_pins uram_2w_2r_we_20/addr1]
  connect_bd_net -net addr1_21_1 [get_bd_ports addr1_21] [get_bd_pins uram_2w_2r_we_21/addr1]
  connect_bd_net -net addr1_22_1 [get_bd_ports addr1_22] [get_bd_pins uram_2w_2r_we_22/addr1]
  connect_bd_net -net addr1_23_1 [get_bd_ports addr1_23] [get_bd_pins uram_2w_2r_we_23/addr1]
  connect_bd_net -net addr1_24_1 [get_bd_ports addr1_24] [get_bd_pins uram_2w_2r_we_24/addr1]
  connect_bd_net -net addr1_25_1 [get_bd_ports addr1_25] [get_bd_pins uram_2w_2r_we_25/addr1]
  connect_bd_net -net addr1_26_1 [get_bd_ports addr1_26] [get_bd_pins uram_2w_2r_we_26/addr1]
  connect_bd_net -net addr1_27_1 [get_bd_ports addr1_27] [get_bd_pins uram_2w_2r_we_27/addr1]
  connect_bd_net -net addr1_28_1 [get_bd_ports addr1_28] [get_bd_pins uram_2w_2r_we_28/addr1]
  connect_bd_net -net addr1_29_1 [get_bd_ports addr1_29] [get_bd_pins uram_2w_2r_we_29/addr1]
  connect_bd_net -net addr1_2_1 [get_bd_ports addr1_2] [get_bd_pins uram_2w_2r_we_2/addr1]
  connect_bd_net -net addr1_30_1 [get_bd_ports addr1_30] [get_bd_pins uram_2w_2r_we_30/addr1]
  connect_bd_net -net addr1_31_1 [get_bd_ports addr1_31] [get_bd_pins uram_2w_2r_we_31/addr1]
  connect_bd_net -net addr1_3_1 [get_bd_ports addr1_3] [get_bd_pins uram_2w_2r_we_3/addr1]
  connect_bd_net -net addr1_4_1 [get_bd_ports addr1_4] [get_bd_pins uram_2w_2r_we_4/addr1]
  connect_bd_net -net addr1_5_1 [get_bd_ports addr1_5] [get_bd_pins uram_2w_2r_we_5/addr1]
  connect_bd_net -net addr1_6_1 [get_bd_ports addr1_6] [get_bd_pins uram_2w_2r_we_6/addr1]
  connect_bd_net -net addr1_7_1 [get_bd_ports addr1_7] [get_bd_pins uram_2w_2r_we_7/addr1]
  connect_bd_net -net addr1_8_1 [get_bd_ports addr1_8] [get_bd_pins uram_2w_2r_we_8/addr1]
  connect_bd_net -net addr1_9_1 [get_bd_ports addr1_9] [get_bd_pins uram_2w_2r_we_9/addr1]
  connect_bd_net -net ce0_0_1 [get_bd_ports ce0_0] [get_bd_pins uram_2w_2r_we_0/ce0]
  connect_bd_net -net ce0_10_1 [get_bd_ports ce0_10] [get_bd_pins uram_2w_2r_we_10/ce0]
  connect_bd_net -net ce0_11_1 [get_bd_ports ce0_11] [get_bd_pins uram_2w_2r_we_11/ce0]
  connect_bd_net -net ce0_12_1 [get_bd_ports ce0_12] [get_bd_pins uram_2w_2r_we_12/ce0]
  connect_bd_net -net ce0_13_1 [get_bd_ports ce0_13] [get_bd_pins uram_2w_2r_we_13/ce0]
  connect_bd_net -net ce0_14_1 [get_bd_ports ce0_14] [get_bd_pins uram_2w_2r_we_14/ce0]
  connect_bd_net -net ce0_15_1 [get_bd_ports ce0_15] [get_bd_pins uram_2w_2r_we_15/ce0]
  connect_bd_net -net ce0_16_1 [get_bd_ports ce0_16] [get_bd_pins uram_2w_2r_we_16/ce0]
  connect_bd_net -net ce0_17_1 [get_bd_ports ce0_17] [get_bd_pins uram_2w_2r_we_17/ce0]
  connect_bd_net -net ce0_18_1 [get_bd_ports ce0_18] [get_bd_pins uram_2w_2r_we_18/ce0]
  connect_bd_net -net ce0_19_1 [get_bd_ports ce0_19] [get_bd_pins uram_2w_2r_we_19/ce0]
  connect_bd_net -net ce0_1_1 [get_bd_ports ce0_1] [get_bd_pins uram_2w_2r_we_1/ce0]
  connect_bd_net -net ce0_20_1 [get_bd_ports ce0_20] [get_bd_pins uram_2w_2r_we_20/ce0]
  connect_bd_net -net ce0_21_1 [get_bd_ports ce0_21] [get_bd_pins uram_2w_2r_we_21/ce0]
  connect_bd_net -net ce0_22_1 [get_bd_ports ce0_22] [get_bd_pins uram_2w_2r_we_22/ce0]
  connect_bd_net -net ce0_23_1 [get_bd_ports ce0_23] [get_bd_pins uram_2w_2r_we_23/ce0]
  connect_bd_net -net ce0_24_1 [get_bd_ports ce0_24] [get_bd_pins uram_2w_2r_we_24/ce0]
  connect_bd_net -net ce0_25_1 [get_bd_ports ce0_25] [get_bd_pins uram_2w_2r_we_25/ce0]
  connect_bd_net -net ce0_26_1 [get_bd_ports ce0_26] [get_bd_pins uram_2w_2r_we_26/ce0]
  connect_bd_net -net ce0_27_1 [get_bd_ports ce0_27] [get_bd_pins uram_2w_2r_we_27/ce0]
  connect_bd_net -net ce0_28_1 [get_bd_ports ce0_28] [get_bd_pins uram_2w_2r_we_28/ce0]
  connect_bd_net -net ce0_29_1 [get_bd_ports ce0_29] [get_bd_pins uram_2w_2r_we_29/ce0]
  connect_bd_net -net ce0_2_1 [get_bd_ports ce0_2] [get_bd_pins uram_2w_2r_we_2/ce0]
  connect_bd_net -net ce0_30_1 [get_bd_ports ce0_30] [get_bd_pins uram_2w_2r_we_30/ce0]
  connect_bd_net -net ce0_31_1 [get_bd_ports ce0_31] [get_bd_pins uram_2w_2r_we_31/ce0]
  connect_bd_net -net ce0_3_1 [get_bd_ports ce0_3] [get_bd_pins uram_2w_2r_we_3/ce0]
  connect_bd_net -net ce0_4_1 [get_bd_ports ce0_4] [get_bd_pins uram_2w_2r_we_4/ce0]
  connect_bd_net -net ce0_5_1 [get_bd_ports ce0_5] [get_bd_pins uram_2w_2r_we_5/ce0]
  connect_bd_net -net ce0_6_1 [get_bd_ports ce0_6] [get_bd_pins uram_2w_2r_we_6/ce0]
  connect_bd_net -net ce0_7_1 [get_bd_ports ce0_7] [get_bd_pins uram_2w_2r_we_7/ce0]
  connect_bd_net -net ce0_8_1 [get_bd_ports ce0_8] [get_bd_pins uram_2w_2r_we_8/ce0]
  connect_bd_net -net ce0_9_1 [get_bd_ports ce0_9] [get_bd_pins uram_2w_2r_we_9/ce0]
  connect_bd_net -net ce1_0_1 [get_bd_ports ce1_0] [get_bd_pins uram_2w_2r_we_0/ce1]
  connect_bd_net -net ce1_10_1 [get_bd_ports ce1_10] [get_bd_pins uram_2w_2r_we_10/ce1]
  connect_bd_net -net ce1_11_1 [get_bd_ports ce1_11] [get_bd_pins uram_2w_2r_we_11/ce1]
  connect_bd_net -net ce1_12_1 [get_bd_ports ce1_12] [get_bd_pins uram_2w_2r_we_12/ce1]
  connect_bd_net -net ce1_13_1 [get_bd_ports ce1_13] [get_bd_pins uram_2w_2r_we_13/ce1]
  connect_bd_net -net ce1_14_1 [get_bd_ports ce1_14] [get_bd_pins uram_2w_2r_we_14/ce1]
  connect_bd_net -net ce1_15_1 [get_bd_ports ce1_15] [get_bd_pins uram_2w_2r_we_15/ce1]
  connect_bd_net -net ce1_16_1 [get_bd_ports ce1_16] [get_bd_pins uram_2w_2r_we_16/ce1]
  connect_bd_net -net ce1_17_1 [get_bd_ports ce1_17] [get_bd_pins uram_2w_2r_we_17/ce1]
  connect_bd_net -net ce1_18_1 [get_bd_ports ce1_18] [get_bd_pins uram_2w_2r_we_18/ce1]
  connect_bd_net -net ce1_19_1 [get_bd_ports ce1_19] [get_bd_pins uram_2w_2r_we_19/ce1]
  connect_bd_net -net ce1_1_1 [get_bd_ports ce1_1] [get_bd_pins uram_2w_2r_we_1/ce1]
  connect_bd_net -net ce1_20_1 [get_bd_ports ce1_20] [get_bd_pins uram_2w_2r_we_20/ce1]
  connect_bd_net -net ce1_21_1 [get_bd_ports ce1_21] [get_bd_pins uram_2w_2r_we_21/ce1]
  connect_bd_net -net ce1_22_1 [get_bd_ports ce1_22] [get_bd_pins uram_2w_2r_we_22/ce1]
  connect_bd_net -net ce1_23_1 [get_bd_ports ce1_23] [get_bd_pins uram_2w_2r_we_23/ce1]
  connect_bd_net -net ce1_24_1 [get_bd_ports ce1_24] [get_bd_pins uram_2w_2r_we_24/ce1]
  connect_bd_net -net ce1_25_1 [get_bd_ports ce1_25] [get_bd_pins uram_2w_2r_we_25/ce1]
  connect_bd_net -net ce1_26_1 [get_bd_ports ce1_26] [get_bd_pins uram_2w_2r_we_26/ce1]
  connect_bd_net -net ce1_27_1 [get_bd_ports ce1_27] [get_bd_pins uram_2w_2r_we_27/ce1]
  connect_bd_net -net ce1_28_1 [get_bd_ports ce1_28] [get_bd_pins uram_2w_2r_we_28/ce1]
  connect_bd_net -net ce1_29_1 [get_bd_ports ce1_29] [get_bd_pins uram_2w_2r_we_29/ce1]
  connect_bd_net -net ce1_2_1 [get_bd_ports ce1_2] [get_bd_pins uram_2w_2r_we_2/ce1]
  connect_bd_net -net ce1_30_1 [get_bd_ports ce1_30] [get_bd_pins uram_2w_2r_we_30/ce1]
  connect_bd_net -net ce1_31_1 [get_bd_ports ce1_31] [get_bd_pins uram_2w_2r_we_31/ce1]
  connect_bd_net -net ce1_3_1 [get_bd_ports ce1_3] [get_bd_pins uram_2w_2r_we_3/ce1]
  connect_bd_net -net ce1_4_1 [get_bd_ports ce1_4] [get_bd_pins uram_2w_2r_we_4/ce1]
  connect_bd_net -net ce1_5_1 [get_bd_ports ce1_5] [get_bd_pins uram_2w_2r_we_5/ce1]
  connect_bd_net -net ce1_6_1 [get_bd_ports ce1_6] [get_bd_pins uram_2w_2r_we_6/ce1]
  connect_bd_net -net ce1_7_1 [get_bd_ports ce1_7] [get_bd_pins uram_2w_2r_we_7/ce1]
  connect_bd_net -net ce1_8_1 [get_bd_ports ce1_8] [get_bd_pins uram_2w_2r_we_8/ce1]
  connect_bd_net -net ce1_9_1 [get_bd_ports ce1_9] [get_bd_pins uram_2w_2r_we_9/ce1]
  connect_bd_net -net clk_0_1 [get_bd_ports clk_0] [get_bd_pins uram_2w_2r_we_0/clk] [get_bd_pins uram_2w_2r_we_1/clk] [get_bd_pins uram_2w_2r_we_10/clk] [get_bd_pins uram_2w_2r_we_11/clk] [get_bd_pins uram_2w_2r_we_12/clk] [get_bd_pins uram_2w_2r_we_13/clk] [get_bd_pins uram_2w_2r_we_14/clk] [get_bd_pins uram_2w_2r_we_15/clk] [get_bd_pins uram_2w_2r_we_16/clk] [get_bd_pins uram_2w_2r_we_17/clk] [get_bd_pins uram_2w_2r_we_18/clk] [get_bd_pins uram_2w_2r_we_19/clk] [get_bd_pins uram_2w_2r_we_2/clk] [get_bd_pins uram_2w_2r_we_20/clk] [get_bd_pins uram_2w_2r_we_21/clk] [get_bd_pins uram_2w_2r_we_22/clk] [get_bd_pins uram_2w_2r_we_23/clk] [get_bd_pins uram_2w_2r_we_24/clk] [get_bd_pins uram_2w_2r_we_25/clk] [get_bd_pins uram_2w_2r_we_26/clk] [get_bd_pins uram_2w_2r_we_27/clk] [get_bd_pins uram_2w_2r_we_28/clk] [get_bd_pins uram_2w_2r_we_29/clk] [get_bd_pins uram_2w_2r_we_3/clk] [get_bd_pins uram_2w_2r_we_30/clk] [get_bd_pins uram_2w_2r_we_31/clk] [get_bd_pins uram_2w_2r_we_4/clk] [get_bd_pins uram_2w_2r_we_5/clk] [get_bd_pins uram_2w_2r_we_6/clk] [get_bd_pins uram_2w_2r_we_7/clk] [get_bd_pins uram_2w_2r_we_8/clk] [get_bd_pins uram_2w_2r_we_9/clk]
  connect_bd_net -net rst_n_0_1 [get_bd_ports rst_n_0] [get_bd_pins uram_2w_2r_we_0/rst_n] [get_bd_pins uram_2w_2r_we_1/rst_n] [get_bd_pins uram_2w_2r_we_10/rst_n] [get_bd_pins uram_2w_2r_we_11/rst_n] [get_bd_pins uram_2w_2r_we_12/rst_n] [get_bd_pins uram_2w_2r_we_13/rst_n] [get_bd_pins uram_2w_2r_we_14/rst_n] [get_bd_pins uram_2w_2r_we_15/rst_n] [get_bd_pins uram_2w_2r_we_16/rst_n] [get_bd_pins uram_2w_2r_we_17/rst_n] [get_bd_pins uram_2w_2r_we_18/rst_n] [get_bd_pins uram_2w_2r_we_19/rst_n] [get_bd_pins uram_2w_2r_we_2/rst_n] [get_bd_pins uram_2w_2r_we_20/rst_n] [get_bd_pins uram_2w_2r_we_21/rst_n] [get_bd_pins uram_2w_2r_we_22/rst_n] [get_bd_pins uram_2w_2r_we_23/rst_n] [get_bd_pins uram_2w_2r_we_24/rst_n] [get_bd_pins uram_2w_2r_we_25/rst_n] [get_bd_pins uram_2w_2r_we_26/rst_n] [get_bd_pins uram_2w_2r_we_27/rst_n] [get_bd_pins uram_2w_2r_we_28/rst_n] [get_bd_pins uram_2w_2r_we_29/rst_n] [get_bd_pins uram_2w_2r_we_3/rst_n] [get_bd_pins uram_2w_2r_we_30/rst_n] [get_bd_pins uram_2w_2r_we_31/rst_n] [get_bd_pins uram_2w_2r_we_4/rst_n] [get_bd_pins uram_2w_2r_we_5/rst_n] [get_bd_pins uram_2w_2r_we_6/rst_n] [get_bd_pins uram_2w_2r_we_7/rst_n] [get_bd_pins uram_2w_2r_we_8/rst_n] [get_bd_pins uram_2w_2r_we_9/rst_n]
  connect_bd_net -net uram_2w_2r_we_0_rdata0 [get_bd_ports rdata0_0] [get_bd_pins uram_2w_2r_we_0/rdata0]
  connect_bd_net -net uram_2w_2r_we_0_rdata1 [get_bd_ports rdata1_0] [get_bd_pins uram_2w_2r_we_0/rdata1]
  connect_bd_net -net uram_2w_2r_we_10_rdata0 [get_bd_ports rdata0_10] [get_bd_pins uram_2w_2r_we_10/rdata0]
  connect_bd_net -net uram_2w_2r_we_10_rdata1 [get_bd_ports rdata1_10] [get_bd_pins uram_2w_2r_we_10/rdata1]
  connect_bd_net -net uram_2w_2r_we_11_rdata0 [get_bd_ports rdata0_11] [get_bd_pins uram_2w_2r_we_11/rdata0]
  connect_bd_net -net uram_2w_2r_we_11_rdata1 [get_bd_ports rdata1_11] [get_bd_pins uram_2w_2r_we_11/rdata1]
  connect_bd_net -net uram_2w_2r_we_12_rdata0 [get_bd_ports rdata0_12] [get_bd_pins uram_2w_2r_we_12/rdata0]
  connect_bd_net -net uram_2w_2r_we_12_rdata1 [get_bd_ports rdata1_12] [get_bd_pins uram_2w_2r_we_12/rdata1]
  connect_bd_net -net uram_2w_2r_we_13_rdata0 [get_bd_ports rdata0_13] [get_bd_pins uram_2w_2r_we_13/rdata0]
  connect_bd_net -net uram_2w_2r_we_13_rdata1 [get_bd_ports rdata1_13] [get_bd_pins uram_2w_2r_we_13/rdata1]
  connect_bd_net -net uram_2w_2r_we_14_rdata0 [get_bd_ports rdata0_14] [get_bd_pins uram_2w_2r_we_14/rdata0]
  connect_bd_net -net uram_2w_2r_we_14_rdata1 [get_bd_ports rdata1_14] [get_bd_pins uram_2w_2r_we_14/rdata1]
  connect_bd_net -net uram_2w_2r_we_15_rdata0 [get_bd_ports rdata0_15] [get_bd_pins uram_2w_2r_we_15/rdata0]
  connect_bd_net -net uram_2w_2r_we_15_rdata1 [get_bd_ports rdata1_15] [get_bd_pins uram_2w_2r_we_15/rdata1]
  connect_bd_net -net uram_2w_2r_we_16_rdata0 [get_bd_ports rdata0_16] [get_bd_pins uram_2w_2r_we_16/rdata0]
  connect_bd_net -net uram_2w_2r_we_16_rdata1 [get_bd_ports rdata1_16] [get_bd_pins uram_2w_2r_we_16/rdata1]
  connect_bd_net -net uram_2w_2r_we_17_rdata0 [get_bd_ports rdata0_17] [get_bd_pins uram_2w_2r_we_17/rdata0]
  connect_bd_net -net uram_2w_2r_we_17_rdata1 [get_bd_ports rdata1_17] [get_bd_pins uram_2w_2r_we_17/rdata1]
  connect_bd_net -net uram_2w_2r_we_18_rdata0 [get_bd_ports rdata0_18] [get_bd_pins uram_2w_2r_we_18/rdata0]
  connect_bd_net -net uram_2w_2r_we_18_rdata1 [get_bd_ports rdata1_18] [get_bd_pins uram_2w_2r_we_18/rdata1]
  connect_bd_net -net uram_2w_2r_we_19_rdata0 [get_bd_ports rdata0_19] [get_bd_pins uram_2w_2r_we_19/rdata0]
  connect_bd_net -net uram_2w_2r_we_19_rdata1 [get_bd_ports rdata1_19] [get_bd_pins uram_2w_2r_we_19/rdata1]
  connect_bd_net -net uram_2w_2r_we_1_rdata0 [get_bd_ports rdata0_1] [get_bd_pins uram_2w_2r_we_1/rdata0]
  connect_bd_net -net uram_2w_2r_we_1_rdata1 [get_bd_ports rdata1_1] [get_bd_pins uram_2w_2r_we_1/rdata1]
  connect_bd_net -net uram_2w_2r_we_20_rdata0 [get_bd_ports rdata0_20] [get_bd_pins uram_2w_2r_we_20/rdata0]
  connect_bd_net -net uram_2w_2r_we_20_rdata1 [get_bd_ports rdata1_20] [get_bd_pins uram_2w_2r_we_20/rdata1]
  connect_bd_net -net uram_2w_2r_we_21_rdata0 [get_bd_ports rdata0_21] [get_bd_pins uram_2w_2r_we_21/rdata0]
  connect_bd_net -net uram_2w_2r_we_21_rdata1 [get_bd_ports rdata1_21] [get_bd_pins uram_2w_2r_we_21/rdata1]
  connect_bd_net -net uram_2w_2r_we_22_rdata0 [get_bd_ports rdata0_22] [get_bd_pins uram_2w_2r_we_22/rdata0]
  connect_bd_net -net uram_2w_2r_we_22_rdata1 [get_bd_ports rdata1_22] [get_bd_pins uram_2w_2r_we_22/rdata1]
  connect_bd_net -net uram_2w_2r_we_23_rdata0 [get_bd_ports rdata0_23] [get_bd_pins uram_2w_2r_we_23/rdata0]
  connect_bd_net -net uram_2w_2r_we_23_rdata1 [get_bd_ports rdata1_23] [get_bd_pins uram_2w_2r_we_23/rdata1]
  connect_bd_net -net uram_2w_2r_we_24_rdata0 [get_bd_ports rdata0_24] [get_bd_pins uram_2w_2r_we_24/rdata0]
  connect_bd_net -net uram_2w_2r_we_24_rdata1 [get_bd_ports rdata1_24] [get_bd_pins uram_2w_2r_we_24/rdata1]
  connect_bd_net -net uram_2w_2r_we_25_rdata0 [get_bd_ports rdata0_25] [get_bd_pins uram_2w_2r_we_25/rdata0]
  connect_bd_net -net uram_2w_2r_we_25_rdata1 [get_bd_ports rdata1_25] [get_bd_pins uram_2w_2r_we_25/rdata1]
  connect_bd_net -net uram_2w_2r_we_26_rdata0 [get_bd_ports rdata0_26] [get_bd_pins uram_2w_2r_we_26/rdata0]
  connect_bd_net -net uram_2w_2r_we_26_rdata1 [get_bd_ports rdata1_26] [get_bd_pins uram_2w_2r_we_26/rdata1]
  connect_bd_net -net uram_2w_2r_we_27_rdata0 [get_bd_ports rdata0_27] [get_bd_pins uram_2w_2r_we_27/rdata0]
  connect_bd_net -net uram_2w_2r_we_27_rdata1 [get_bd_ports rdata1_27] [get_bd_pins uram_2w_2r_we_27/rdata1]
  connect_bd_net -net uram_2w_2r_we_28_rdata0 [get_bd_ports rdata0_28] [get_bd_pins uram_2w_2r_we_28/rdata0]
  connect_bd_net -net uram_2w_2r_we_28_rdata1 [get_bd_ports rdata1_28] [get_bd_pins uram_2w_2r_we_28/rdata1]
  connect_bd_net -net uram_2w_2r_we_29_rdata0 [get_bd_ports rdata0_29] [get_bd_pins uram_2w_2r_we_29/rdata0]
  connect_bd_net -net uram_2w_2r_we_29_rdata1 [get_bd_ports rdata1_29] [get_bd_pins uram_2w_2r_we_29/rdata1]
  connect_bd_net -net uram_2w_2r_we_2_rdata0 [get_bd_ports rdata0_2] [get_bd_pins uram_2w_2r_we_2/rdata0]
  connect_bd_net -net uram_2w_2r_we_2_rdata1 [get_bd_ports rdata1_2] [get_bd_pins uram_2w_2r_we_2/rdata1]
  connect_bd_net -net uram_2w_2r_we_30_rdata0 [get_bd_ports rdata0_30] [get_bd_pins uram_2w_2r_we_30/rdata0]
  connect_bd_net -net uram_2w_2r_we_30_rdata1 [get_bd_ports rdata1_30] [get_bd_pins uram_2w_2r_we_30/rdata1]
  connect_bd_net -net uram_2w_2r_we_31_rdata0 [get_bd_ports rdata0_31] [get_bd_pins uram_2w_2r_we_31/rdata0]
  connect_bd_net -net uram_2w_2r_we_31_rdata1 [get_bd_ports rdata1_31] [get_bd_pins uram_2w_2r_we_31/rdata1]
  connect_bd_net -net uram_2w_2r_we_3_rdata0 [get_bd_ports rdata0_3] [get_bd_pins uram_2w_2r_we_3/rdata0]
  connect_bd_net -net uram_2w_2r_we_3_rdata1 [get_bd_ports rdata1_3] [get_bd_pins uram_2w_2r_we_3/rdata1]
  connect_bd_net -net uram_2w_2r_we_4_rdata0 [get_bd_ports rdata0_4] [get_bd_pins uram_2w_2r_we_4/rdata0]
  connect_bd_net -net uram_2w_2r_we_4_rdata1 [get_bd_ports rdata1_4] [get_bd_pins uram_2w_2r_we_4/rdata1]
  connect_bd_net -net uram_2w_2r_we_5_rdata0 [get_bd_ports rdata0_5] [get_bd_pins uram_2w_2r_we_5/rdata0]
  connect_bd_net -net uram_2w_2r_we_5_rdata1 [get_bd_ports rdata1_5] [get_bd_pins uram_2w_2r_we_5/rdata1]
  connect_bd_net -net uram_2w_2r_we_6_rdata0 [get_bd_ports rdata0_6] [get_bd_pins uram_2w_2r_we_6/rdata0]
  connect_bd_net -net uram_2w_2r_we_6_rdata1 [get_bd_ports rdata1_6] [get_bd_pins uram_2w_2r_we_6/rdata1]
  connect_bd_net -net uram_2w_2r_we_7_rdata0 [get_bd_ports rdata0_7] [get_bd_pins uram_2w_2r_we_7/rdata0]
  connect_bd_net -net uram_2w_2r_we_7_rdata1 [get_bd_ports rdata1_7] [get_bd_pins uram_2w_2r_we_7/rdata1]
  connect_bd_net -net uram_2w_2r_we_8_rdata0 [get_bd_ports rdata0_8] [get_bd_pins uram_2w_2r_we_8/rdata0]
  connect_bd_net -net uram_2w_2r_we_8_rdata1 [get_bd_ports rdata1_8] [get_bd_pins uram_2w_2r_we_8/rdata1]
  connect_bd_net -net uram_2w_2r_we_9_rdata0 [get_bd_ports rdata0_9] [get_bd_pins uram_2w_2r_we_9/rdata0]
  connect_bd_net -net uram_2w_2r_we_9_rdata1 [get_bd_ports rdata1_9] [get_bd_pins uram_2w_2r_we_9/rdata1]
  connect_bd_net -net wdata0_0_1 [get_bd_ports wdata0_0] [get_bd_pins uram_2w_2r_we_0/wdata0]
  connect_bd_net -net wdata0_10_1 [get_bd_ports wdata0_10] [get_bd_pins uram_2w_2r_we_10/wdata0]
  connect_bd_net -net wdata0_11_1 [get_bd_ports wdata0_11] [get_bd_pins uram_2w_2r_we_11/wdata0]
  connect_bd_net -net wdata0_12_1 [get_bd_ports wdata0_12] [get_bd_pins uram_2w_2r_we_12/wdata0]
  connect_bd_net -net wdata0_13_1 [get_bd_ports wdata0_13] [get_bd_pins uram_2w_2r_we_13/wdata0]
  connect_bd_net -net wdata0_14_1 [get_bd_ports wdata0_14] [get_bd_pins uram_2w_2r_we_14/wdata0]
  connect_bd_net -net wdata0_15_1 [get_bd_ports wdata0_15] [get_bd_pins uram_2w_2r_we_15/wdata0]
  connect_bd_net -net wdata0_16_1 [get_bd_ports wdata0_16] [get_bd_pins uram_2w_2r_we_16/wdata0]
  connect_bd_net -net wdata0_17_1 [get_bd_ports wdata0_17] [get_bd_pins uram_2w_2r_we_17/wdata0]
  connect_bd_net -net wdata0_18_1 [get_bd_ports wdata0_18] [get_bd_pins uram_2w_2r_we_18/wdata0]
  connect_bd_net -net wdata0_19_1 [get_bd_ports wdata0_19] [get_bd_pins uram_2w_2r_we_19/wdata0]
  connect_bd_net -net wdata0_1_1 [get_bd_ports wdata0_1] [get_bd_pins uram_2w_2r_we_1/wdata0]
  connect_bd_net -net wdata0_20_1 [get_bd_ports wdata0_20] [get_bd_pins uram_2w_2r_we_20/wdata0]
  connect_bd_net -net wdata0_21_1 [get_bd_ports wdata0_21] [get_bd_pins uram_2w_2r_we_21/wdata0]
  connect_bd_net -net wdata0_22_1 [get_bd_ports wdata0_22] [get_bd_pins uram_2w_2r_we_22/wdata0]
  connect_bd_net -net wdata0_23_1 [get_bd_ports wdata0_23] [get_bd_pins uram_2w_2r_we_23/wdata0]
  connect_bd_net -net wdata0_24_1 [get_bd_ports wdata0_24] [get_bd_pins uram_2w_2r_we_24/wdata0]
  connect_bd_net -net wdata0_25_1 [get_bd_ports wdata0_25] [get_bd_pins uram_2w_2r_we_25/wdata0]
  connect_bd_net -net wdata0_26_1 [get_bd_ports wdata0_26] [get_bd_pins uram_2w_2r_we_26/wdata0]
  connect_bd_net -net wdata0_27_1 [get_bd_ports wdata0_27] [get_bd_pins uram_2w_2r_we_27/wdata0]
  connect_bd_net -net wdata0_28_1 [get_bd_ports wdata0_28] [get_bd_pins uram_2w_2r_we_28/wdata0]
  connect_bd_net -net wdata0_29_1 [get_bd_ports wdata0_29] [get_bd_pins uram_2w_2r_we_29/wdata0]
  connect_bd_net -net wdata0_2_1 [get_bd_ports wdata0_2] [get_bd_pins uram_2w_2r_we_2/wdata0]
  connect_bd_net -net wdata0_30_1 [get_bd_ports wdata0_30] [get_bd_pins uram_2w_2r_we_30/wdata0]
  connect_bd_net -net wdata0_31_1 [get_bd_ports wdata0_31] [get_bd_pins uram_2w_2r_we_31/wdata0]
  connect_bd_net -net wdata0_3_1 [get_bd_ports wdata0_3] [get_bd_pins uram_2w_2r_we_3/wdata0]
  connect_bd_net -net wdata0_4_1 [get_bd_ports wdata0_4] [get_bd_pins uram_2w_2r_we_4/wdata0]
  connect_bd_net -net wdata0_5_1 [get_bd_ports wdata0_5] [get_bd_pins uram_2w_2r_we_5/wdata0]
  connect_bd_net -net wdata0_6_1 [get_bd_ports wdata0_6] [get_bd_pins uram_2w_2r_we_6/wdata0]
  connect_bd_net -net wdata0_7_1 [get_bd_ports wdata0_7] [get_bd_pins uram_2w_2r_we_7/wdata0]
  connect_bd_net -net wdata0_8_1 [get_bd_ports wdata0_8] [get_bd_pins uram_2w_2r_we_8/wdata0]
  connect_bd_net -net wdata0_9_1 [get_bd_ports wdata0_9] [get_bd_pins uram_2w_2r_we_9/wdata0]
  connect_bd_net -net wdata1_0_1 [get_bd_ports wdata1_0] [get_bd_pins uram_2w_2r_we_0/wdata1]
  connect_bd_net -net wdata1_10_1 [get_bd_ports wdata1_10] [get_bd_pins uram_2w_2r_we_10/wdata1]
  connect_bd_net -net wdata1_11_1 [get_bd_ports wdata1_11] [get_bd_pins uram_2w_2r_we_11/wdata1]
  connect_bd_net -net wdata1_12_1 [get_bd_ports wdata1_12] [get_bd_pins uram_2w_2r_we_12/wdata1]
  connect_bd_net -net wdata1_13_1 [get_bd_ports wdata1_13] [get_bd_pins uram_2w_2r_we_13/wdata1]
  connect_bd_net -net wdata1_14_1 [get_bd_ports wdata1_14] [get_bd_pins uram_2w_2r_we_14/wdata1]
  connect_bd_net -net wdata1_15_1 [get_bd_ports wdata1_15] [get_bd_pins uram_2w_2r_we_15/wdata1]
  connect_bd_net -net wdata1_16_1 [get_bd_ports wdata1_16] [get_bd_pins uram_2w_2r_we_16/wdata1]
  connect_bd_net -net wdata1_17_1 [get_bd_ports wdata1_17] [get_bd_pins uram_2w_2r_we_17/wdata1]
  connect_bd_net -net wdata1_18_1 [get_bd_ports wdata1_18] [get_bd_pins uram_2w_2r_we_18/wdata1]
  connect_bd_net -net wdata1_19_1 [get_bd_ports wdata1_19] [get_bd_pins uram_2w_2r_we_19/wdata1]
  connect_bd_net -net wdata1_1_1 [get_bd_ports wdata1_1] [get_bd_pins uram_2w_2r_we_1/wdata1]
  connect_bd_net -net wdata1_20_1 [get_bd_ports wdata1_20] [get_bd_pins uram_2w_2r_we_20/wdata1]
  connect_bd_net -net wdata1_21_1 [get_bd_ports wdata1_21] [get_bd_pins uram_2w_2r_we_21/wdata1]
  connect_bd_net -net wdata1_22_1 [get_bd_ports wdata1_22] [get_bd_pins uram_2w_2r_we_22/wdata1]
  connect_bd_net -net wdata1_23_1 [get_bd_ports wdata1_23] [get_bd_pins uram_2w_2r_we_23/wdata1]
  connect_bd_net -net wdata1_24_1 [get_bd_ports wdata1_24] [get_bd_pins uram_2w_2r_we_24/wdata1]
  connect_bd_net -net wdata1_25_1 [get_bd_ports wdata1_25] [get_bd_pins uram_2w_2r_we_25/wdata1]
  connect_bd_net -net wdata1_26_1 [get_bd_ports wdata1_26] [get_bd_pins uram_2w_2r_we_26/wdata1]
  connect_bd_net -net wdata1_27_1 [get_bd_ports wdata1_27] [get_bd_pins uram_2w_2r_we_27/wdata1]
  connect_bd_net -net wdata1_28_1 [get_bd_ports wdata1_28] [get_bd_pins uram_2w_2r_we_28/wdata1]
  connect_bd_net -net wdata1_29_1 [get_bd_ports wdata1_29] [get_bd_pins uram_2w_2r_we_29/wdata1]
  connect_bd_net -net wdata1_2_1 [get_bd_ports wdata1_2] [get_bd_pins uram_2w_2r_we_2/wdata1]
  connect_bd_net -net wdata1_30_1 [get_bd_ports wdata1_30] [get_bd_pins uram_2w_2r_we_30/wdata1]
  connect_bd_net -net wdata1_31_1 [get_bd_ports wdata1_31] [get_bd_pins uram_2w_2r_we_31/wdata1]
  connect_bd_net -net wdata1_3_1 [get_bd_ports wdata1_3] [get_bd_pins uram_2w_2r_we_3/wdata1]
  connect_bd_net -net wdata1_4_1 [get_bd_ports wdata1_4] [get_bd_pins uram_2w_2r_we_4/wdata1]
  connect_bd_net -net wdata1_5_1 [get_bd_ports wdata1_5] [get_bd_pins uram_2w_2r_we_5/wdata1]
  connect_bd_net -net wdata1_6_1 [get_bd_ports wdata1_6] [get_bd_pins uram_2w_2r_we_6/wdata1]
  connect_bd_net -net wdata1_7_1 [get_bd_ports wdata1_7] [get_bd_pins uram_2w_2r_we_7/wdata1]
  connect_bd_net -net wdata1_8_1 [get_bd_ports wdata1_8] [get_bd_pins uram_2w_2r_we_8/wdata1]
  connect_bd_net -net wdata1_9_1 [get_bd_ports wdata1_9] [get_bd_pins uram_2w_2r_we_9/wdata1]
  connect_bd_net -net we0_0_1 [get_bd_ports we0_0] [get_bd_pins uram_2w_2r_we_0/we0]
  connect_bd_net -net we0_10_1 [get_bd_ports we0_10] [get_bd_pins uram_2w_2r_we_10/we0]
  connect_bd_net -net we0_11_1 [get_bd_ports we0_11] [get_bd_pins uram_2w_2r_we_11/we0]
  connect_bd_net -net we0_12_1 [get_bd_ports we0_12] [get_bd_pins uram_2w_2r_we_12/we0]
  connect_bd_net -net we0_13_1 [get_bd_ports we0_13] [get_bd_pins uram_2w_2r_we_13/we0]
  connect_bd_net -net we0_14_1 [get_bd_ports we0_14] [get_bd_pins uram_2w_2r_we_14/we0]
  connect_bd_net -net we0_15_1 [get_bd_ports we0_15] [get_bd_pins uram_2w_2r_we_15/we0]
  connect_bd_net -net we0_16_1 [get_bd_ports we0_16] [get_bd_pins uram_2w_2r_we_16/we0]
  connect_bd_net -net we0_17_1 [get_bd_ports we0_17] [get_bd_pins uram_2w_2r_we_17/we0]
  connect_bd_net -net we0_18_1 [get_bd_ports we0_18] [get_bd_pins uram_2w_2r_we_18/we0]
  connect_bd_net -net we0_19_1 [get_bd_ports we0_19] [get_bd_pins uram_2w_2r_we_19/we0]
  connect_bd_net -net we0_1_1 [get_bd_ports we0_1] [get_bd_pins uram_2w_2r_we_1/we0]
  connect_bd_net -net we0_20_1 [get_bd_ports we0_20] [get_bd_pins uram_2w_2r_we_20/we0]
  connect_bd_net -net we0_21_1 [get_bd_ports we0_21] [get_bd_pins uram_2w_2r_we_21/we0]
  connect_bd_net -net we0_22_1 [get_bd_ports we0_22] [get_bd_pins uram_2w_2r_we_22/we0]
  connect_bd_net -net we0_23_1 [get_bd_ports we0_23] [get_bd_pins uram_2w_2r_we_23/we0]
  connect_bd_net -net we0_24_1 [get_bd_ports we0_24] [get_bd_pins uram_2w_2r_we_24/we0]
  connect_bd_net -net we0_25_1 [get_bd_ports we0_25] [get_bd_pins uram_2w_2r_we_25/we0]
  connect_bd_net -net we0_26_1 [get_bd_ports we0_26] [get_bd_pins uram_2w_2r_we_26/we0]
  connect_bd_net -net we0_27_1 [get_bd_ports we0_27] [get_bd_pins uram_2w_2r_we_27/we0]
  connect_bd_net -net we0_28_1 [get_bd_ports we0_28] [get_bd_pins uram_2w_2r_we_28/we0]
  connect_bd_net -net we0_29_1 [get_bd_ports we0_29] [get_bd_pins uram_2w_2r_we_29/we0]
  connect_bd_net -net we0_2_1 [get_bd_ports we0_2] [get_bd_pins uram_2w_2r_we_2/we0]
  connect_bd_net -net we0_30_1 [get_bd_ports we0_30] [get_bd_pins uram_2w_2r_we_30/we0]
  connect_bd_net -net we0_31_1 [get_bd_ports we0_31] [get_bd_pins uram_2w_2r_we_31/we0]
  connect_bd_net -net we0_3_1 [get_bd_ports we0_3] [get_bd_pins uram_2w_2r_we_3/we0]
  connect_bd_net -net we0_4_1 [get_bd_ports we0_4] [get_bd_pins uram_2w_2r_we_4/we0]
  connect_bd_net -net we0_5_1 [get_bd_ports we0_5] [get_bd_pins uram_2w_2r_we_5/we0]
  connect_bd_net -net we0_6_1 [get_bd_ports we0_6] [get_bd_pins uram_2w_2r_we_6/we0]
  connect_bd_net -net we0_7_1 [get_bd_ports we0_7] [get_bd_pins uram_2w_2r_we_7/we0]
  connect_bd_net -net we0_8_1 [get_bd_ports we0_8] [get_bd_pins uram_2w_2r_we_8/we0]
  connect_bd_net -net we0_9_1 [get_bd_ports we0_9] [get_bd_pins uram_2w_2r_we_9/we0]
  connect_bd_net -net we1_0_1 [get_bd_ports we1_0] [get_bd_pins uram_2w_2r_we_0/we1]
  connect_bd_net -net we1_10_1 [get_bd_ports we1_10] [get_bd_pins uram_2w_2r_we_10/we1]
  connect_bd_net -net we1_11_1 [get_bd_ports we1_11] [get_bd_pins uram_2w_2r_we_11/we1]
  connect_bd_net -net we1_12_1 [get_bd_ports we1_12] [get_bd_pins uram_2w_2r_we_12/we1]
  connect_bd_net -net we1_13_1 [get_bd_ports we1_13] [get_bd_pins uram_2w_2r_we_13/we1]
  connect_bd_net -net we1_14_1 [get_bd_ports we1_14] [get_bd_pins uram_2w_2r_we_14/we1]
  connect_bd_net -net we1_15_1 [get_bd_ports we1_15] [get_bd_pins uram_2w_2r_we_15/we1]
  connect_bd_net -net we1_16_1 [get_bd_ports we1_16] [get_bd_pins uram_2w_2r_we_16/we1]
  connect_bd_net -net we1_17_1 [get_bd_ports we1_17] [get_bd_pins uram_2w_2r_we_17/we1]
  connect_bd_net -net we1_18_1 [get_bd_ports we1_18] [get_bd_pins uram_2w_2r_we_18/we1]
  connect_bd_net -net we1_19_1 [get_bd_ports we1_19] [get_bd_pins uram_2w_2r_we_19/we1]
  connect_bd_net -net we1_1_1 [get_bd_ports we1_1] [get_bd_pins uram_2w_2r_we_1/we1]
  connect_bd_net -net we1_20_1 [get_bd_ports we1_20] [get_bd_pins uram_2w_2r_we_20/we1]
  connect_bd_net -net we1_21_1 [get_bd_ports we1_21] [get_bd_pins uram_2w_2r_we_21/we1]
  connect_bd_net -net we1_22_1 [get_bd_ports we1_22] [get_bd_pins uram_2w_2r_we_22/we1]
  connect_bd_net -net we1_23_1 [get_bd_ports we1_23] [get_bd_pins uram_2w_2r_we_23/we1]
  connect_bd_net -net we1_24_1 [get_bd_ports we1_24] [get_bd_pins uram_2w_2r_we_24/we1]
  connect_bd_net -net we1_25_1 [get_bd_ports we1_25] [get_bd_pins uram_2w_2r_we_25/we1]
  connect_bd_net -net we1_26_1 [get_bd_ports we1_26] [get_bd_pins uram_2w_2r_we_26/we1]
  connect_bd_net -net we1_27_1 [get_bd_ports we1_27] [get_bd_pins uram_2w_2r_we_27/we1]
  connect_bd_net -net we1_28_1 [get_bd_ports we1_28] [get_bd_pins uram_2w_2r_we_28/we1]
  connect_bd_net -net we1_29_1 [get_bd_ports we1_29] [get_bd_pins uram_2w_2r_we_29/we1]
  connect_bd_net -net we1_2_1 [get_bd_ports we1_2] [get_bd_pins uram_2w_2r_we_2/we1]
  connect_bd_net -net we1_30_1 [get_bd_ports we1_30] [get_bd_pins uram_2w_2r_we_30/we1]
  connect_bd_net -net we1_31_1 [get_bd_ports we1_31] [get_bd_pins uram_2w_2r_we_31/we1]
  connect_bd_net -net we1_3_1 [get_bd_ports we1_3] [get_bd_pins uram_2w_2r_we_3/we1]
  connect_bd_net -net we1_4_1 [get_bd_ports we1_4] [get_bd_pins uram_2w_2r_we_4/we1]
  connect_bd_net -net we1_5_1 [get_bd_ports we1_5] [get_bd_pins uram_2w_2r_we_5/we1]
  connect_bd_net -net we1_6_1 [get_bd_ports we1_6] [get_bd_pins uram_2w_2r_we_6/we1]
  connect_bd_net -net we1_7_1 [get_bd_ports we1_7] [get_bd_pins uram_2w_2r_we_7/we1]
  connect_bd_net -net we1_8_1 [get_bd_ports we1_8] [get_bd_pins uram_2w_2r_we_8/we1]
  connect_bd_net -net we1_9_1 [get_bd_ports we1_9] [get_bd_pins uram_2w_2r_we_9/we1]

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


