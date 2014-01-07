lappend auto_path "C:/lscc/diamond/2.2_x64/data/script"
package require simulation_generation
set ::bali::simulation::Para(PROJECT) {spi_master_tb}
set ::bali::simulation::Para(PROJECTPATH) {C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/diamond}
set ::bali::simulation::Para(FILELIST) {"C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/firmware/shift_reg_16_bit.vhd" "C:/Users/AndrewPC1/Documents/GitHub/AP1220_control/AP1220_control/firmware/SPI_master.vhd" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VHDL" "VHDL" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {spi_master}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VHDL}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {0}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ActiveHDL_Run
