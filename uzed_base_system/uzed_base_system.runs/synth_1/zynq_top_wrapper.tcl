# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /home/thoyt/fpga_work/uzed_base_system/uzed_base_system.cache/wt [current_project]
set_property parent.project_path /home/thoyt/fpga_work/uzed_base_system/uzed_base_system.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property board_part em.avnet.com:microzed_7010:part0:1.1 [current_project]
set_property ip_output_repo /home/thoyt/fpga_work/uzed_base_system/uzed_base_system.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib /home/thoyt/fpga_work/uzed_base_system/uzed_base_system.srcs/sources_1/bd/zynq_top/hdl/zynq_top_wrapper.v
add_files /home/thoyt/fpga_work/uzed_base_system/uzed_base_system.srcs/sources_1/bd/zynq_top/zynq_top.bd
set_property used_in_implementation false [get_files -all /home/thoyt/fpga_work/uzed_base_system/uzed_base_system.srcs/sources_1/bd/zynq_top/ip/zynq_top_processing_system7_0_0/zynq_top_processing_system7_0_0.xdc]
set_property used_in_implementation false [get_files -all /home/thoyt/fpga_work/uzed_base_system/uzed_base_system.srcs/sources_1/bd/zynq_top/zynq_top_ooc.xdc]
set_property is_locked true [get_files /home/thoyt/fpga_work/uzed_base_system/uzed_base_system.srcs/sources_1/bd/zynq_top/zynq_top.bd]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top zynq_top_wrapper -part xc7z010clg400-1


write_checkpoint -force -noxdef zynq_top_wrapper.dcp

catch { report_utilization -file zynq_top_wrapper_utilization_synth.rpt -pb zynq_top_wrapper_utilization_synth.pb }