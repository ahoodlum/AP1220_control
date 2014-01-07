SetActiveLib -work
comp -include "C:\Users\AndrewPC1\Documents\GitHub\AP1220_control\AP1220_control\firmware\shift_reg_16_bit.vhd" 
comp -include "C:\Users\AndrewPC1\Documents\GitHub\AP1220_control\AP1220_control\firmware\SPI_master.vhd" 
comp -include "$dsn\src\TestBench\spi_master_TB.vhd" 
asim +access +r TESTBENCH_FOR_spi_master 
wave 
wave -noreg spi_clk_in
wave -noreg rst
wave -noreg spi_addr
wave -noreg spi_data
wave -noreg spi_wr
wave -noreg spi_clk_out
wave -noreg spi_en
wave -noreg spi_mosi
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\spi_master_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_spi_master 
