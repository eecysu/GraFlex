# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "C_DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_FIFO_DEPTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "FIFO_FULL_TH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ROUTING_HBIT" -parent ${Page_0}


}

proc update_PARAM_VALUE.C_DATA_WIDTH { PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to update C_DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_DATA_WIDTH { PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to validate C_DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.C_FIFO_DEPTH { PARAM_VALUE.C_FIFO_DEPTH } {
	# Procedure called to update C_FIFO_DEPTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_FIFO_DEPTH { PARAM_VALUE.C_FIFO_DEPTH } {
	# Procedure called to validate C_FIFO_DEPTH
	return true
}

proc update_PARAM_VALUE.FIFO_FULL_TH { PARAM_VALUE.FIFO_FULL_TH } {
	# Procedure called to update FIFO_FULL_TH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FIFO_FULL_TH { PARAM_VALUE.FIFO_FULL_TH } {
	# Procedure called to validate FIFO_FULL_TH
	return true
}

proc update_PARAM_VALUE.ROUTING_HBIT { PARAM_VALUE.ROUTING_HBIT } {
	# Procedure called to update ROUTING_HBIT when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ROUTING_HBIT { PARAM_VALUE.ROUTING_HBIT } {
	# Procedure called to validate ROUTING_HBIT
	return true
}


proc update_MODELPARAM_VALUE.ROUTING_HBIT { MODELPARAM_VALUE.ROUTING_HBIT PARAM_VALUE.ROUTING_HBIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ROUTING_HBIT}] ${MODELPARAM_VALUE.ROUTING_HBIT}
}

proc update_MODELPARAM_VALUE.FIFO_FULL_TH { MODELPARAM_VALUE.FIFO_FULL_TH PARAM_VALUE.FIFO_FULL_TH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FIFO_FULL_TH}] ${MODELPARAM_VALUE.FIFO_FULL_TH}
}

proc update_MODELPARAM_VALUE.C_DATA_WIDTH { MODELPARAM_VALUE.C_DATA_WIDTH PARAM_VALUE.C_DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_DATA_WIDTH}] ${MODELPARAM_VALUE.C_DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.C_FIFO_DEPTH { MODELPARAM_VALUE.C_FIFO_DEPTH PARAM_VALUE.C_FIFO_DEPTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_FIFO_DEPTH}] ${MODELPARAM_VALUE.C_FIFO_DEPTH}
}

