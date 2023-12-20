# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DW_1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DW_2" -parent ${Page_0}


}

proc update_PARAM_VALUE.DW_1 { PARAM_VALUE.DW_1 } {
	# Procedure called to update DW_1 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DW_1 { PARAM_VALUE.DW_1 } {
	# Procedure called to validate DW_1
	return true
}

proc update_PARAM_VALUE.DW_2 { PARAM_VALUE.DW_2 } {
	# Procedure called to update DW_2 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DW_2 { PARAM_VALUE.DW_2 } {
	# Procedure called to validate DW_2
	return true
}


proc update_MODELPARAM_VALUE.DW_1 { MODELPARAM_VALUE.DW_1 PARAM_VALUE.DW_1 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DW_1}] ${MODELPARAM_VALUE.DW_1}
}

proc update_MODELPARAM_VALUE.DW_2 { MODELPARAM_VALUE.DW_2 PARAM_VALUE.DW_2 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DW_2}] ${MODELPARAM_VALUE.DW_2}
}

