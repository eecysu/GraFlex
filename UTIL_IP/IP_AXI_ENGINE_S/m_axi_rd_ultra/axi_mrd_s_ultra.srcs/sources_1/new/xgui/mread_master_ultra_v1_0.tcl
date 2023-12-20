# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MAX_BURST_LENGTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "C_MAX_OUTSTANDING" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TUPLE_ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "TUPLE_LEN_WIDTH" -parent ${Page_0}


}

proc update_PARAM_VALUE.ADDR_WIDTH { PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to update ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_WIDTH { PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to validate ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.C_MAX_BURST_LENGTH { PARAM_VALUE.C_MAX_BURST_LENGTH } {
	# Procedure called to update C_MAX_BURST_LENGTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MAX_BURST_LENGTH { PARAM_VALUE.C_MAX_BURST_LENGTH } {
	# Procedure called to validate C_MAX_BURST_LENGTH
	return true
}

proc update_PARAM_VALUE.C_MAX_OUTSTANDING { PARAM_VALUE.C_MAX_OUTSTANDING } {
	# Procedure called to update C_MAX_OUTSTANDING when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_MAX_OUTSTANDING { PARAM_VALUE.C_MAX_OUTSTANDING } {
	# Procedure called to validate C_MAX_OUTSTANDING
	return true
}

proc update_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to update DATA_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_WIDTH { PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to validate DATA_WIDTH
	return true
}

proc update_PARAM_VALUE.ID_WIDTH { PARAM_VALUE.ID_WIDTH } {
	# Procedure called to update ID_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ID_WIDTH { PARAM_VALUE.ID_WIDTH } {
	# Procedure called to validate ID_WIDTH
	return true
}

proc update_PARAM_VALUE.TUPLE_ADDR_WIDTH { PARAM_VALUE.TUPLE_ADDR_WIDTH } {
	# Procedure called to update TUPLE_ADDR_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TUPLE_ADDR_WIDTH { PARAM_VALUE.TUPLE_ADDR_WIDTH } {
	# Procedure called to validate TUPLE_ADDR_WIDTH
	return true
}

proc update_PARAM_VALUE.TUPLE_LEN_WIDTH { PARAM_VALUE.TUPLE_LEN_WIDTH } {
	# Procedure called to update TUPLE_LEN_WIDTH when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TUPLE_LEN_WIDTH { PARAM_VALUE.TUPLE_LEN_WIDTH } {
	# Procedure called to validate TUPLE_LEN_WIDTH
	return true
}


proc update_MODELPARAM_VALUE.ADDR_WIDTH { MODELPARAM_VALUE.ADDR_WIDTH PARAM_VALUE.ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_WIDTH}] ${MODELPARAM_VALUE.ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.DATA_WIDTH { MODELPARAM_VALUE.DATA_WIDTH PARAM_VALUE.DATA_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_WIDTH}] ${MODELPARAM_VALUE.DATA_WIDTH}
}

proc update_MODELPARAM_VALUE.ID_WIDTH { MODELPARAM_VALUE.ID_WIDTH PARAM_VALUE.ID_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ID_WIDTH}] ${MODELPARAM_VALUE.ID_WIDTH}
}

proc update_MODELPARAM_VALUE.TUPLE_LEN_WIDTH { MODELPARAM_VALUE.TUPLE_LEN_WIDTH PARAM_VALUE.TUPLE_LEN_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TUPLE_LEN_WIDTH}] ${MODELPARAM_VALUE.TUPLE_LEN_WIDTH}
}

proc update_MODELPARAM_VALUE.TUPLE_ADDR_WIDTH { MODELPARAM_VALUE.TUPLE_ADDR_WIDTH PARAM_VALUE.TUPLE_ADDR_WIDTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TUPLE_ADDR_WIDTH}] ${MODELPARAM_VALUE.TUPLE_ADDR_WIDTH}
}

proc update_MODELPARAM_VALUE.C_MAX_OUTSTANDING { MODELPARAM_VALUE.C_MAX_OUTSTANDING PARAM_VALUE.C_MAX_OUTSTANDING } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MAX_OUTSTANDING}] ${MODELPARAM_VALUE.C_MAX_OUTSTANDING}
}

proc update_MODELPARAM_VALUE.C_MAX_BURST_LENGTH { MODELPARAM_VALUE.C_MAX_BURST_LENGTH PARAM_VALUE.C_MAX_BURST_LENGTH } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.C_MAX_BURST_LENGTH}] ${MODELPARAM_VALUE.C_MAX_BURST_LENGTH}
}

