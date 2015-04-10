# 
# Synthesis run script generated by Vivado
# 

  set_param gui.test TreeTableDev
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1
set_property target_language Verilog [current_project]
set_property board_part_repo_paths /home/derek/Documents/year_4/ECE532/board_repository [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
set_param project.compositeFile.enableAutoGeneration 0
set_property default_lib xil_defaultlib [current_project]
set_property ip_repo_paths {
  /home/derek/Documents/year_4/ECE532/ip_repo
  /home/derek/Documents/year_4/ECE532/ip_repo/ip_repo/Board_Analyzer_BRAM_1.0
} [current_fileset]

add_files /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/design_1.bd
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_0/design_1_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/design_1_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_dlmb_v10_0/design_1_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/design_1_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_ilmb_v10_0/design_1_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_dlmb_bram_if_cntlr_0/design_1_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_ilmb_bram_if_cntlr_0/design_1_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_lmb_bram_0/design_1_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_axi_intc_0/design_1_microblaze_0_axi_intc_0.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_axi_intc_0/design_1_microblaze_0_axi_intc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_microblaze_0_axi_intc_0/design_1_microblaze_0_axi_intc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_mdm_1_0/design_1_mdm_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_rst_clk_wiz_1_100M_0/design_1_rst_clk_wiz_1_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_axi_uartlite_0_0/design_1_axi_uartlite_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_axi_tft_0_0/design_1_axi_tft_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_axi_tft_0_0/design_1_axi_tft_0_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_axi_tft_0_0/design_1_axi_tft_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_axi_gpio_0_0/design_1_axi_gpio_0_0_board.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_axi_bram_ctrl_0_0/design_1_axi_bram_ctrl_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_1/design_1_blk_mem_gen_0_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_xbar_2/design_1_xbar_2_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_3/design_1_mig_7series_0_3/user_design/constraints/design_1_mig_7series_0_3.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_3/design_1_mig_7series_0_3/user_design/constraints/design_1_mig_7series_0_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_mig_7series_0_3/design_1_mig_7series_0_3_board.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_rst_mig_7series_0_81M_1/design_1_rst_mig_7series_0_81M_1.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_rst_mig_7series_0_81M_1/design_1_rst_mig_7series_0_81M_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_rst_mig_7series_0_81M_1/design_1_rst_mig_7series_0_81M_1_board.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_xbar_3/design_1_xbar_3_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_auto_pc_0/design_1_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_auto_cc_0/design_1_auto_cc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_auto_cc_0/design_1_auto_cc_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_auto_us_0/design_1_auto_us_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/ip/design_1_auto_us_0/design_1_auto_us_0_clocks.xdc]
set_property used_in_implementation false [get_files -all /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/design_1_ooc.xdc]
set_msg_config -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property is_locked true [get_files /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/design_1.bd]

read_verilog -library xil_defaultlib /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/sources_1/bd/design_1/hdl/design_1_wrapper.v
read_xdc /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/constrs_1/imports/tutorials/Nexys4DDR_Master.xdc
set_property used_in_implementation false [get_files /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/constrs_1/imports/tutorials/Nexys4DDR_Master.xdc]

read_xdc /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/constrs_1/new/design_1_wrapper.xdc
set_property used_in_implementation false [get_files /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.srcs/constrs_1/new/design_1_wrapper.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2/tetris_test2.cache/wt [current_project]
set_property parent.project_dir /home/derek/Documents/year_4/ECE532/git/ece352/designs/tetris_test2 [current_project]
synth_design -top design_1_wrapper -part xc7a100tcsg324-1
write_checkpoint design_1_wrapper.dcp
report_utilization -file design_1_wrapper_utilization_synth.rpt -pb design_1_wrapper_utilization_synth.pb
