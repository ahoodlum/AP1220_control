setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/AP1220_controller_top_post_map/AP1220_controller_top_post_map.adf"]} { 
	design create AP1220_controller_top_post_map "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond"
  set newDesign 1
}
design open "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/AP1220_controller_top_post_map"
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
addfile "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/SPI_controller/SPI_controller_SPI_controller_mapvho.vho"
addfile "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/AP1220_controller_top_post_map/src/ap1220_controller_top_TB.vhd"
addfile -sdf "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/SPI_controller/SPI_controller_SPI_controller_mapvho.sdf"
	vlib "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/AP1220_controller_top_post_map/work"
set worklib work
adel -all
vcom -dbg "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/SPI_controller/SPI_controller_SPI_controller_mapvho.vho"
vcom -dbg "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/AP1220_controller_top_post_map/src/ap1220_controller_top_TB.vhd"
entity TESTBENCH_FOR_ap1220_controller_top
designsdffile "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/SPI_controller/SPI_controller_SPI_controller_mapvho.sdf" /TESTBENCH_FOR_ap1220_controller_top/ -sdfmax -load yes
vsim +access +r TESTBENCH_FOR_ap1220_controller_top -sdfmax /TESTBENCH_FOR_ap1220_controller_top/="C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/SPI_controller/SPI_controller_SPI_controller_mapvho.sdf"  -PL pmi_work -L ovi_machxo2
add wave *
