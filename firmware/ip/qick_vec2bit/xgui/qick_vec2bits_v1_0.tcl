# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  ipgui::add_param $IPINST -name "IN_DW"
  set OUT_QTY [ipgui::add_param $IPINST -name "OUT_QTY"]
  set_property tooltip {Number of 1bit Outputs} ${OUT_QTY}

}

proc update_PARAM_VALUE.IN_DW { PARAM_VALUE.IN_DW } {
	# Procedure called to update IN_DW when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IN_DW { PARAM_VALUE.IN_DW } {
	# Procedure called to validate IN_DW
	return true
}

proc update_PARAM_VALUE.OUT_QTY { PARAM_VALUE.OUT_QTY } {
	# Procedure called to update OUT_QTY when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.OUT_QTY { PARAM_VALUE.OUT_QTY } {
	# Procedure called to validate OUT_QTY
	return true
}


proc update_MODELPARAM_VALUE.IN_DW { MODELPARAM_VALUE.IN_DW PARAM_VALUE.IN_DW } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IN_DW}] ${MODELPARAM_VALUE.IN_DW}
}

proc update_MODELPARAM_VALUE.OUT_QTY { MODELPARAM_VALUE.OUT_QTY PARAM_VALUE.OUT_QTY } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.OUT_QTY}] ${MODELPARAM_VALUE.OUT_QTY}
}

