setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/spi_master_tb/spi_master_tb.adf"]} { 
	design create spi_master_tb "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond"
  set newDesign 1
}
design open "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/spi_master_tb"
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
addfile "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/firmware/SPI_master.vhd"
vlib "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/spi_master_tb/work"
set worklib work
adel -all
vcom -dbg -work work "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/firmware/shift_reg_16_bit.vhd"
vcom -dbg -work work "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/firmware/SPI_master.vhd"
entity spi_master
vsim +access +r spi_master   -PL pmi_work -L ovi_machxo2
add wave *
