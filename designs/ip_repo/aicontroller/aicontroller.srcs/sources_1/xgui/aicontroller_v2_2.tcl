# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
	set Page0 [ipgui::add_page $IPINST -name "Page 0" -layout vertical]
	set Component_Name [ipgui::add_param $IPINST -parent $Page0 -name Component_Name]
}


proc update_MODELPARAM_VALUE.INIT { MODELPARAM_VALUE.INIT } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "INIT". Setting updated value from the model parameter.
set_property value 0 ${MODELPARAM_VALUE.INIT}
}

proc update_MODELPARAM_VALUE.DONE { MODELPARAM_VALUE.DONE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	# WARNING: There is no corresponding user parameter named "DONE". Setting updated value from the model parameter.
set_property value 7 ${MODELPARAM_VALUE.DONE}
}

