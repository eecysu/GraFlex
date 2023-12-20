# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "DW_1" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DW_2" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DW_3" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DW_4" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DW_5" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DW_6" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DW_7" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DW_8" -parent ${Page_0}


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

proc update_PARAM_VALUE.DW_3 { PARAM_VALUE.DW_3 } {
	# Procedure called to update DW_3 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DW_3 { PARAM_VALUE.DW_3 } {
	# Procedure called to validate DW_3
	return true
}

proc update_PARAM_VALUE.DW_4 { PARAM_VALUE.DW_4 } {
	# Procedure called to update DW_4 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DW_4 { PARAM_VALUE.DW_4 } {
	# Procedure called to validate DW_4
	return true
}

proc update_PARAM_VALUE.DW_5 { PARAM_VALUE.DW_5 } {
	# Procedure called to update DW_5 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DW_5 { PARAM_VALUE.DW_5 } {
	# Procedure called to validate DW_5
	return true
}

proc update_PARAM_VALUE.DW_6 { PARAM_VALUE.DW_6 } {
	# Procedure called to update DW_6 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DW_6 { PARAM_VALUE.DW_6 } {
	# Procedure called to validate DW_6
	return true
}

proc update_PARAM_VALUE.DW_7 { PARAM_VALUE.DW_7 } {
	# Procedure called to update DW_7 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DW_7 { PARAM_VALUE.DW_7 } {
	# Procedure called to validate DW_7
	return true
}

proc update_PARAM_VALUE.DW_8 { PARAM_VALUE.DW_8 } {
	# Procedure called to update DW_8 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DW_8 { PARAM_VALUE.DW_8 } {
	# Procedure called to validate DW_8
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

proc update_MODELPARAM_VALUE.DW_3 { MODELPARAM_VALUE.DW_3 PARAM_VALUE.DW_3 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DW_3}] ${MODELPARAM_VALUE.DW_3}
}

proc update_MODELPARAM_VALUE.DW_4 { MODELPARAM_VALUE.DW_4 PARAM_VALUE.DW_4 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DW_4}] ${MODELPARAM_VALUE.DW_4}
}

proc update_MODELPARAM_VALUE.DW_5 { MODELPARAM_VALUE.DW_5 PARAM_VALUE.DW_5 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DW_5}] ${MODELPARAM_VALUE.DW_5}
}

proc update_MODELPARAM_VALUE.DW_6 { MODELPARAM_VALUE.DW_6 PARAM_VALUE.DW_6 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DW_6}] ${MODELPARAM_VALUE.DW_6}
}

proc update_MODELPARAM_VALUE.DW_7 { MODELPARAM_VALUE.DW_7 PARAM_VALUE.DW_7 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DW_7}] ${MODELPARAM_VALUE.DW_7}
}

proc update_MODELPARAM_VALUE.DW_8 { MODELPARAM_VALUE.DW_8 PARAM_VALUE.DW_8 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DW_8}] ${MODELPARAM_VALUE.DW_8}
}

