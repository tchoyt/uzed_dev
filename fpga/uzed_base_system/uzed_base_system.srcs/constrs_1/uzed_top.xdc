# Board Level Timing Contraints

# Create Base Clocks
# Clock frequencies in MHz - 1 / Clock Freq(MHz) * 1000 = Clock Period(ns)
#============================================================


# Create Clocks
#============================================================

# Pulse Generator
# No setup/hold requirement
#============================================================
set_false_path -to [get_ports pulse_gen_out]

set_property PACKAGE_PIN J16 [get_ports pulse_gen_out]
set_property IOSTANDARD LVCMOS33 [get_ports pulse_gen_out]

#============================================================
# PS I/O - False path, this is hard silicon
#============================================================
set_false_path -from [get_ports zynq_ddr*]
set_false_path -to [get_ports zynq_ddr*]
set_false_path -from [get_ports zynq_fixed_io*]
set_false_path -to [get_ports zynq_fixed_io*]
