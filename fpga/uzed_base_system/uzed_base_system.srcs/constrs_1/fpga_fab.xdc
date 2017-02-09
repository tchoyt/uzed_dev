# FPGA Logic Timing Contraints

# Clock frequencies (MHz)
# 	Convert to 1/2 Period (ns) for timing constraints below
# 	False paths from input to FF1
# 	1/2 Period from FF1 -> FF2
#============================================================
set AXI_REF_CLK       100.000
set PLS_GEN_CLK       200.000
set AXI_REF_CLK_NS    [expr (round(500 * (( 1 /  $AXI_REF_CLK ) * 1000)) / 500.0)]
set PLS_GEN_CLK_NS    [expr (round(500 * (( 1 /  $PLS_GEN_CLK ) * 1000)) / 500.0)]
set AXI_REF_CLK_CONST [expr $AXI_REF_CLK_NS / 2.0]
set PLS_GEN_CLK_CONST [expr $PLS_GEN_CLK_NS / 2.0]

# Reset Synchronizer Contraints
#============================================================
# Pulse Generator clock reset
set_false_path -to pulse_gen_vcc/pulse_gen_clk_reset_sync/rst_n_reg/CLR
set_false_path -to [get_cells {pulse_gen_vcc/pulse_gen_clk_reset_sync/rff1_reg}]
set_max_delay  -from [get_cells {pulse_gen_vcc/pulse_gen_clk_reset_sync/rff1_reg}] -to [get_cells {pulse_gen_vcc/pulse_gen_clk_reset_sync/rst_n_reg}] $PLS_GEN_CLK_CONST

# Clock Crossing Constraints
#============================================================
# Pulse Generator Contraints
# These registers are static, so can be latched safely
set_false_path -from [get_cells {pulse_gen_vcc/pulse_gen_registers/ctrl_reg*}]
set_false_path -from [get_cells {pulse_gen_vcc/pulse_gen_registers/pulse_reg*}]
set_false_path -from [get_cells {pulse_gen_vcc/pulse_gen_registers/mult_reg*}]
# These nets need to be properly constrainted
set_false_path -to   [get_cells {pulse_gen_vcc/pll_lock_reg_reg[0]}]
set_max_delay  -from [get_cells {pulse_gen_vcc/pll_lock_reg_reg[0]}] -to [get_cells {pulse_gen_vcc/pll_lock_reg_reg[0]}] $AXI_REF_CLK_CONST
set_false_path -to   [get_cells {pulse_gen_vcc/pulse_gen_en_pls_synch/delay_reg_reg[0][0]}]
set_max_delay  -from [get_cells {pulse_gen_vcc/pulse_gen_en_pls_synch/delay_reg_reg[0][0]}] -to [get_cells {pulse_gen_vcc/pulse_gen_en_pls_synch/delay_reg_reg[1][0]}] $PLS_GEN_CLK_CONST
set_false_path -to   [get_cells {pulse_gen_vcc/pulse_gen_en_synch/delay_reg_reg[0][0]}]
set_max_delay  -from [get_cells {pulse_gen_vcc/pulse_gen_en_synch/delay_reg_reg[0][0]}] -to [get_cells {pulse_gen_vcc/pulse_gen_en_synch/delay_reg_reg[1][0]}] $PLS_GEN_CLK_CONST
