# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1
set_property target_language Verilog [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property default_lib xil_defaultlib [current_project]
read_verilog -library xil_defaultlib {
  D:/Library/Documents/ECE532/Milestone3/aicontroller/aicontroller.srcs/sources_1/imports/new/placement.v
  D:/Library/Documents/ECE532/Milestone3/aicontroller/aicontroller.srcs/sources_1/new/aicontroller.v
}
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/Library/Documents/ECE532/Milestone3/aicontroller/aicontroller.cache/wt [current_project]
set_property parent.project_dir D:/Library/Documents/ECE532/Milestone3/aicontroller [current_project]
synth_design -top aicontroller -part xc7a100tcsg324-1
write_checkpoint aicontroller.dcp
report_utilization -file aicontroller_utilization_synth.rpt -pb aicontroller_utilization_synth.pb