setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/AP1220_controller_top_tb_rtl/AP1220_controller_top_tb_rtl.adf"]} { 
	design create AP1220_controller_top_tb_rtl "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond"
  set newDesign 1
}
design open "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/AP1220_controller_top_tb_rtl"
cd "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond"
designverincludedir -clear
designverlibrarysim -PL -clear
designverlibrarysim -L -clear
designverlibrarysim -PL pmi_work
designverlibrarysim ovi_machxo2
designverdefinemacro -clear
if {$newDesign == 0} { 
  removefile -Y -D *
}
addfile "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/firmware/shift_reg_16_bit.vhd"
addfile "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/firmware/AP1220_controller_top.vhd"
addfile "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/AP1220_controller_top_tb_rtl/src/TestBench/ap1220_controller_top_TB.vhd"
vlib "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/AP1220_controller_top_tb_rtl/work"
set worklib work
adel -all
vcom -dbg -work work "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/firmware/shift_reg_16_bit.vhd"
vcom -dbg -work work "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/firmware/AP1220_controller_top.vhd"
vcom -dbg "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/AP1220_controller_top_tb_rtl/src/TestBench/ap1220_controller_top_TB.vhd"
entity TESTBENCH_FOR_ap1220_controller_top
vsim +access +r TESTBENCH_FOR_ap1220_controller_top   -PL pmi_work -L ovi_machxo2
add wave *
