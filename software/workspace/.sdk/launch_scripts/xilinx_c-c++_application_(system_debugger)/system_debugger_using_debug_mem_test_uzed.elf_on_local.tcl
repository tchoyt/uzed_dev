connect -url tcp:127.0.0.1:3121
source /home/thoyt/sw_work/xilinx_sdk_workspace/uzed_base/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS3 210299A1774A"} -index 0
loadhw /home/thoyt/sw_work/xilinx_sdk_workspace/uzed_base/system.hdf
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS3 210299A1774A"} -index 0
stop
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS3 210299A1774A"} -index 0
rst -processor
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS3 210299A1774A"} -index 0
dow /home/thoyt/sw_work/xilinx_sdk_workspace/mem_test_uzed/Debug/mem_test_uzed.elf
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS3 210299A1774A"} -index 0
con
