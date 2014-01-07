SetActiveLib -work
comp -include "C:\Users\AndrewPC1\Documents\GitHub\AP1220_control\AP1220_control\diamond\SPI_controller\SPI_controller_SPI_controller_mapvho.vho" 
comp -include "$dsn\src\TestBench\shift_reg_16_bit_TB.vhd" 
asim +access +r TESTBENCH_FOR_shift_reg_16_bit 
wave 
wave -noreg clk
wave -noreg rst
wave -noreg shift_strobe
wave -noreg data_in
wave -noreg s_out
wave -noreg s_en
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\shift_reg_16_bit_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_shift_reg_16_bit 
