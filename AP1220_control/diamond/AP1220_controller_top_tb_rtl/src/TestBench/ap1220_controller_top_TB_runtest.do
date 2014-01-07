SetActiveLib -work
comp -include "C:\Users\AndrewPC1\Documents\GitHub\AP1220_control\AP1220_control\firmware\AP1220_controller_top.vhd" 
comp -include "$dsn\src\TestBench\ap1220_controller_top_TB.vhd" 
asim +access +r TESTBENCH_FOR_ap1220_controller_top 
wave 
wave -noreg clk
wave -noreg rst
wave -noreg sclk
wave -noreg miso
wave -noreg mosi
wave -noreg s_en
wave -noreg uart_rx
wave -noreg uart_tx
wave -noreg leds
# The following lines can be used for timing simulation
# acom <backannotated_vhdl_file_name>
# comp -include "$dsn\src\TestBench\ap1220_controller_top_TB_tim_cfg.vhd" 
# asim +access +r TIMING_FOR_ap1220_controller_top 
