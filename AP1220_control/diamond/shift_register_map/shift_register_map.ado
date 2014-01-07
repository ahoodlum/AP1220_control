setenv SIM_WORKING_FOLDER .
set newDesign 0
if {![file exists "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/shift_register_map/shift_register_map.adf"]} { 
	design create shift_register_map "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond"
  set newDesign 1
}
design open "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/shift_register_map"
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
addfile -sdf "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/SPI_controller/SPI_controller_SPI_controller_mapvho.sdf"
	vlib "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/shift_register_map/work"
set worklib work
adel -all
vcom -dbg "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/SPI_controller/SPI_controller_SPI_controller_mapvho.vho"
vsim +access +r    -PL pmi_work -L ovi_machxo2
add wave *
