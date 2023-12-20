# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FIFO_FULL_TH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ROUTING_BIT" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_DATA_WIDTH { PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to update C_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DATA_WIDTH { PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to validate C_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.FIFO_FULL_TH { PARAM_VALUE.FIFO_FULL_TH } {
	# Procedure called to update FIFO_FULL_TH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FIFO_FULL_TH { PARAM_VALUE.FIFO_FULL_TH } {
	# Procedure called to validate FIFO_FULL_TH
	return true
}

proc update_PARAM_VALUE.ROUTING_BIT { PARAM_VALUE.ROUTING_BIT } {
	# Procedure called to update ROUTING_BIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUTING_BIT { PARAM_VALUE.ROUTING_BIT } {
	# Procedure called to validate ROUTING_BIT
	return true
}


proc update_MODELPARAM_VALUE.ROUTING_BIT { MODELPARAM_VALUE.ROUTING_BIT PARAM_VALUE.ROUTING_BIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUTING_BIT}] ${MODELPARAM_VALUE.ROUTING_BIT}
}

proc update_MODELPARAM_VALUE.C_DATA_WIDTH { MODELPARAM_VALUE.C_DATA_WIDTH PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DATA_WIDTH}] ${MODELPARAM_VALUE.C_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.FIFO_FULL_TH { MODELPARAM_VALUE.FIFO_FULL_TH PARAM_VALUE.FIFO_FULL_TH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FIFO_FULL_TH}] ${MODELPARAM_VALUE.FIFO_FULL_TH}
}

