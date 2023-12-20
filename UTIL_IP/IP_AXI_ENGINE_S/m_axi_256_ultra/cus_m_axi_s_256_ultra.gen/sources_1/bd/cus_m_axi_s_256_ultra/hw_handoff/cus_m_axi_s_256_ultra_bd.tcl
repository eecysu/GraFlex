
################################################################
# This is a generated script based on design: cus_m_axi_s_256_ultra
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
# source cus_m_axi_s_256_ultra_script.tcl

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
set design_name cus_m_axi_s_256_ultra

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
  set m_axis_rd [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis_rd ]

  set s_axis_wr [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis_wr ]
  set_property -dict [ list \
   CONFIG.HAS_TKEEP {0} \
   CONFIG.HAS_TLAST {0} \
   CONFIG.HAS_TREADY {1} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {32} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $s_axis_wr


  # Create ports
  set clk [ create_bd_port -dir I -type clk clk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {m_axis_rd:s_axis_wr} \
 ] $clk
  set m_axi_araddr [ create_bd_port -dir O -from 63 -to 0 m_axi_araddr ]
  set m_axi_arburst [ create_bd_port -dir O -from 1 -to 0 m_axi_arburst ]
  set m_axi_arcache [ create_bd_port -dir O -from 3 -to 0 m_axi_arcache ]
  set m_axi_arid [ create_bd_port -dir O -from 5 -to 0 m_axi_arid ]
  set m_axi_arlen [ create_bd_port -dir O -from 7 -to 0 m_axi_arlen ]
  set m_axi_arlock [ create_bd_port -dir O -from 1 -to 0 m_axi_arlock ]
  set m_axi_arqos [ create_bd_port -dir O -from 3 -to 0 m_axi_arqos ]
  set m_axi_arready [ create_bd_port -dir I m_axi_arready ]
  set m_axi_arregion [ create_bd_port -dir O -from 3 -to 0 m_axi_arregion ]
  set m_axi_arsize [ create_bd_port -dir O -from 2 -to 0 m_axi_arsize ]
  set m_axi_arvalid [ create_bd_port -dir O m_axi_arvalid ]
  set m_axi_awaddr [ create_bd_port -dir O -from 63 -to 0 m_axi_awaddr ]
  set m_axi_awid [ create_bd_port -dir O -from 5 -to 0 m_axi_awid ]
  set m_axi_awlen [ create_bd_port -dir O -from 7 -to 0 m_axi_awlen ]
  set m_axi_awready [ create_bd_port -dir I m_axi_awready ]
  set m_axi_awsize [ create_bd_port -dir O -from 2 -to 0 m_axi_awsize ]
  set m_axi_awvalid [ create_bd_port -dir O m_axi_awvalid ]
  set m_axi_bready [ create_bd_port -dir O m_axi_bready ]
  set m_axi_bvalid [ create_bd_port -dir I m_axi_bvalid ]
  set m_axi_rdata [ create_bd_port -dir I -from 255 -to 0 m_axi_rdata ]
  set m_axi_rid [ create_bd_port -dir I -from 5 -to 0 m_axi_rid ]
  set m_axi_rlast [ create_bd_port -dir I m_axi_rlast ]
  set m_axi_rready [ create_bd_port -dir O m_axi_rready ]
  set m_axi_rresp [ create_bd_port -dir I -from 1 -to 0 m_axi_rresp ]
  set m_axi_rvalid [ create_bd_port -dir I m_axi_rvalid ]
  set m_axi_wdata [ create_bd_port -dir O -from 255 -to 0 m_axi_wdata ]
  set m_axi_wlast [ create_bd_port -dir O m_axi_wlast ]
  set m_axi_wready [ create_bd_port -dir I m_axi_wready ]
  set m_axi_wstrb [ create_bd_port -dir O -from 31 -to 0 m_axi_wstrb ]
  set m_axi_wvalid [ create_bd_port -dir O m_axi_wvalid ]
  set rd_baseAddr [ create_bd_port -dir I -from 63 -to 0 rd_baseAddr ]
  set rd_done [ create_bd_port -dir O rd_done ]
  set rd_req_din [ create_bd_port -dir I -from 31 -to 0 rd_req_din ]
  set rd_req_full_n [ create_bd_port -dir O rd_req_full_n ]
  set rd_req_wr_en [ create_bd_port -dir I rd_req_wr_en ]
  set rd_start [ create_bd_port -dir I rd_start ]
  set rst_n [ create_bd_port -dir I -type rst rst_n ]
  set wr_baseAddr [ create_bd_port -dir I -from 63 -to 0 wr_baseAddr ]
  set wr_done [ create_bd_port -dir O wr_done ]
  set wr_len [ create_bd_port -dir I -from 15 -to 0 wr_len ]
  set wr_start [ create_bd_port -dir I wr_start ]

  # Create instance: mread_master_ultra_0, and set properties
  set mread_master_ultra_0 [ create_bd_cell -type ip -vlnv user.org:user:mread_master_ultra:1.0 mread_master_ultra_0 ]

  # Create instance: step_to_pulse_0, and set properties
  set step_to_pulse_0 [ create_bd_cell -type ip -vlnv user.org:user:step_to_pulse:1.0 step_to_pulse_0 ]

  # Create instance: step_to_pulse_1, and set properties
  set step_to_pulse_1 [ create_bd_cell -type ip -vlnv user.org:user:step_to_pulse:1.0 step_to_pulse_1 ]

  # Create instance: swr_engine_0, and set properties
  set swr_engine_0 [ create_bd_cell -type ip -vlnv user.org:user:swr_engine:1.0 swr_engine_0 ]
  set_property -dict [ list \
   CONFIG.C_M_AXI_DATA_WIDTH {256} \
 ] $swr_engine_0

  # Create interface connections
  connect_bd_intf_net -intf_net mread_master_ultra_0_m_axis [get_bd_intf_ports m_axis_rd] [get_bd_intf_pins mread_master_ultra_0/m_axis]
  connect_bd_intf_net -intf_net s_axis_0_1 [get_bd_intf_ports s_axis_wr] [get_bd_intf_pins swr_engine_0/s_axis]

  # Create port connections
  connect_bd_net -net baseAddr_0_1 [get_bd_ports wr_baseAddr] [get_bd_pins swr_engine_0/baseAddr]
  connect_bd_net -net baseAddr_0_2 [get_bd_ports rd_baseAddr] [get_bd_pins mread_master_ultra_0/baseAddr]
  connect_bd_net -net clk_0_1 [get_bd_ports clk] [get_bd_pins mread_master_ultra_0/clk] [get_bd_pins step_to_pulse_0/clk] [get_bd_pins step_to_pulse_1/clk] [get_bd_pins swr_engine_0/clk]
  connect_bd_net -net m_axi_ARREADY_0_1 [get_bd_ports m_axi_arready] [get_bd_pins mread_master_ultra_0/m_axi_ARREADY]
  connect_bd_net -net m_axi_AWREADY_0_1 [get_bd_ports m_axi_awready] [get_bd_pins swr_engine_0/m_axi_AWREADY]
  connect_bd_net -net m_axi_BVALID_0_1 [get_bd_ports m_axi_bvalid] [get_bd_pins swr_engine_0/m_axi_BVALID]
  connect_bd_net -net m_axi_RDATA_0_1 [get_bd_ports m_axi_rdata] [get_bd_pins mread_master_ultra_0/m_axi_RDATA]
  connect_bd_net -net m_axi_RID_0_1 [get_bd_ports m_axi_rid] [get_bd_pins mread_master_ultra_0/m_axi_RID]
  connect_bd_net -net m_axi_RLAST_0_1 [get_bd_ports m_axi_rlast] [get_bd_pins mread_master_ultra_0/m_axi_RLAST]
  connect_bd_net -net m_axi_RRESP_0_1 [get_bd_ports m_axi_rresp] [get_bd_pins mread_master_ultra_0/m_axi_RRESP]
  connect_bd_net -net m_axi_RVALID_0_1 [get_bd_ports m_axi_rvalid] [get_bd_pins mread_master_ultra_0/m_axi_RVALID]
  connect_bd_net -net m_axi_WREADY_0_1 [get_bd_ports m_axi_wready] [get_bd_pins swr_engine_0/m_axi_WREADY]
  connect_bd_net -net mread_master_ultra_0_m_axi_ARADDR [get_bd_ports m_axi_araddr] [get_bd_pins mread_master_ultra_0/m_axi_ARADDR]
  connect_bd_net -net mread_master_ultra_0_m_axi_ARBURST [get_bd_ports m_axi_arburst] [get_bd_pins mread_master_ultra_0/m_axi_ARBURST]
  connect_bd_net -net mread_master_ultra_0_m_axi_ARCACHE [get_bd_ports m_axi_arcache] [get_bd_pins mread_master_ultra_0/m_axi_ARCACHE]
  connect_bd_net -net mread_master_ultra_0_m_axi_ARID [get_bd_ports m_axi_arid] [get_bd_pins mread_master_ultra_0/m_axi_ARID]
  connect_bd_net -net mread_master_ultra_0_m_axi_ARLEN [get_bd_ports m_axi_arlen] [get_bd_pins mread_master_ultra_0/m_axi_ARLEN]
  connect_bd_net -net mread_master_ultra_0_m_axi_ARLOCK [get_bd_ports m_axi_arlock] [get_bd_pins mread_master_ultra_0/m_axi_ARLOCK]
  connect_bd_net -net mread_master_ultra_0_m_axi_ARQOS [get_bd_ports m_axi_arqos] [get_bd_pins mread_master_ultra_0/m_axi_ARQOS]
  connect_bd_net -net mread_master_ultra_0_m_axi_ARREGION [get_bd_ports m_axi_arregion] [get_bd_pins mread_master_ultra_0/m_axi_ARREGION]
  connect_bd_net -net mread_master_ultra_0_m_axi_ARSIZE [get_bd_ports m_axi_arsize] [get_bd_pins mread_master_ultra_0/m_axi_ARSIZE]
  connect_bd_net -net mread_master_ultra_0_m_axi_ARVALID [get_bd_ports m_axi_arvalid] [get_bd_pins mread_master_ultra_0/m_axi_ARVALID]
  connect_bd_net -net mread_master_ultra_0_m_axi_RREADY [get_bd_ports m_axi_rready] [get_bd_pins mread_master_ultra_0/m_axi_RREADY]
  connect_bd_net -net mread_master_ultra_0_req_done [get_bd_ports rd_done] [get_bd_pins mread_master_ultra_0/req_done]
  connect_bd_net -net mread_master_ultra_0_req_full_n [get_bd_ports rd_req_full_n] [get_bd_pins mread_master_ultra_0/req_full_n]
  connect_bd_net -net req_din_0_1 [get_bd_ports rd_req_din] [get_bd_pins mread_master_ultra_0/req_din]
  connect_bd_net -net req_len_0_1 [get_bd_ports wr_len] [get_bd_pins swr_engine_0/req_len]
  connect_bd_net -net req_wr_en_0_1 [get_bd_ports rd_req_wr_en] [get_bd_pins mread_master_ultra_0/req_wr_en]
  connect_bd_net -net rst_n_0_1 [get_bd_ports rst_n] [get_bd_pins mread_master_ultra_0/rst_n] [get_bd_pins swr_engine_0/rst_n]
  connect_bd_net -net step_in_0_1 [get_bd_ports rd_start] [get_bd_pins step_to_pulse_0/step_in]
  connect_bd_net -net step_in_0_2 [get_bd_ports wr_start] [get_bd_pins step_to_pulse_1/step_in]
  connect_bd_net -net step_to_pulse_0_pul_out [get_bd_pins mread_master_ultra_0/req_start] [get_bd_pins step_to_pulse_0/pul_out]
  connect_bd_net -net step_to_pulse_1_pul_out [get_bd_pins step_to_pulse_1/pul_out] [get_bd_pins swr_engine_0/ctrl_start]
  connect_bd_net -net swr_engine_0_m_axi_AWADDR [get_bd_ports m_axi_awaddr] [get_bd_pins swr_engine_0/m_axi_AWADDR]
  connect_bd_net -net swr_engine_0_m_axi_AWID [get_bd_ports m_axi_awid] [get_bd_pins swr_engine_0/m_axi_AWID]
  connect_bd_net -net swr_engine_0_m_axi_AWLEN [get_bd_ports m_axi_awlen] [get_bd_pins swr_engine_0/m_axi_AWLEN]
  connect_bd_net -net swr_engine_0_m_axi_AWSIZE [get_bd_ports m_axi_awsize] [get_bd_pins swr_engine_0/m_axi_AWSIZE]
  connect_bd_net -net swr_engine_0_m_axi_AWVALID [get_bd_ports m_axi_awvalid] [get_bd_pins swr_engine_0/m_axi_AWVALID]
  connect_bd_net -net swr_engine_0_m_axi_BREADY [get_bd_ports m_axi_bready] [get_bd_pins swr_engine_0/m_axi_BREADY]
  connect_bd_net -net swr_engine_0_m_axi_WDATA [get_bd_ports m_axi_wdata] [get_bd_pins swr_engine_0/m_axi_WDATA]
  connect_bd_net -net swr_engine_0_m_axi_WLAST [get_bd_ports m_axi_wlast] [get_bd_pins swr_engine_0/m_axi_WLAST]
  connect_bd_net -net swr_engine_0_m_axi_WSTRB [get_bd_ports m_axi_wstrb] [get_bd_pins swr_engine_0/m_axi_WSTRB]
  connect_bd_net -net swr_engine_0_m_axi_WVALID [get_bd_ports m_axi_wvalid] [get_bd_pins swr_engine_0/m_axi_WVALID]
  connect_bd_net -net swr_engine_0_req_done [get_bd_ports wr_done] [get_bd_pins swr_engine_0/ctrl_done]

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


