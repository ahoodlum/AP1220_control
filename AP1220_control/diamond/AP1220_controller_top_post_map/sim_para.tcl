lappend auto_path "C:/lscc/diamond/2.2_x64/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {AP1220_controller_top_post_map}
set ::bali::simulation::Para(PROJECTPATH) {C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond}
set ::bali::simulation::Para(FILELIST) {"C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/SPI_controller/SPI_controller_SPI_controller_mapvho.vho" "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/AP1220_controller_top_post_map/src/ap1220_controller_top_TB.vhd" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"" "" "" }
set ::bali::simulation::Para(COMPLIST) {"VHDL" "none" "none" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {TESTBENCH_FOR_ap1220_controller_top}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {/}
set ::bali::simulation::Para(LANGUAGE) {VHDL}
set ::bali::simulation::Para(SDFPATH)  {C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond/SPI_controller/SPI_controller_SPI_controller_mapvho.sdf}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {0}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ActiveHDL_Run
