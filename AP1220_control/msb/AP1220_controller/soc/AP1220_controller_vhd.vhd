library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
entity AP1220_controller_vhd is
port(
clk_i   : in std_logic
; reset_n : in std_logic
; LEDPIO_OUT : out std_logic_vector(3 downto 0)
; uartSIN : in std_logic
; uartSOUT : out std_logic
; SPI_controllerclk : out std_logic
; SPI_controllerrst : out std_logic
; SPI_controllerslv_adr : out std_logic_vector(31 downto 0)
; SPI_controllerslv_master_data : out std_logic_vector(7 downto 0)
; SPI_controllerslv_slave_data : in std_logic_vector(7 downto 0)
; SPI_controllerslv_strb : out std_logic
; SPI_controllerslv_cyc : out std_logic
; SPI_controllerslv_ack : in std_logic
; SPI_controllerslv_err : in std_logic
; SPI_controllerslv_rty : in std_logic
; SPI_controllerslv_sel : out std_logic_vector(3 downto 0)
; SPI_controllerslv_we : out std_logic
; SPI_controllerslv_bte : out std_logic_vector(1 downto 0)
; SPI_controllerslv_cti : out std_logic_vector(2 downto 0)
; SPI_controllerslv_lock : out std_logic
; SPI_controllerintr_active_high : in std_logic
);
end AP1220_controller_vhd;

architecture AP1220_controller_vhd_a of AP1220_controller_vhd is

component AP1220_controller
   port(
      clk_i   : in std_logic
      ; reset_n : in std_logic
      ; LEDPIO_OUT : out std_logic_vector(3 downto 0)
      ; uartSIN : in std_logic
      ; uartSOUT : out std_logic
      ; SPI_controllerclk : out std_logic
      ; SPI_controllerrst : out std_logic
      ; SPI_controllerslv_adr : out std_logic_vector(31 downto 0)
      ; SPI_controllerslv_master_data : out std_logic_vector(7 downto 0)
      ; SPI_controllerslv_slave_data : in std_logic_vector(7 downto 0)
      ; SPI_controllerslv_strb : out std_logic
      ; SPI_controllerslv_cyc : out std_logic
      ; SPI_controllerslv_ack : in std_logic
      ; SPI_controllerslv_err : in std_logic
      ; SPI_controllerslv_rty : in std_logic
      ; SPI_controllerslv_sel : out std_logic_vector(3 downto 0)
      ; SPI_controllerslv_we : out std_logic
      ; SPI_controllerslv_bte : out std_logic_vector(1 downto 0)
      ; SPI_controllerslv_cti : out std_logic_vector(2 downto 0)
      ; SPI_controllerslv_lock : out std_logic
      ; SPI_controllerintr_active_high : in std_logic
      );
   end component;

begin

lm8_inst : AP1220_controller
port map (
   clk_i  => clk_i
   ,reset_n  => reset_n
   ,LEDPIO_OUT  => LEDPIO_OUT
   ,uartSIN  => uartSIN
   ,uartSOUT  => uartSOUT
   ,SPI_controllerclk  => SPI_controllerclk
   ,SPI_controllerrst  => SPI_controllerrst
   ,SPI_controllerslv_adr  => SPI_controllerslv_adr
   ,SPI_controllerslv_master_data  => SPI_controllerslv_master_data
   ,SPI_controllerslv_slave_data  => SPI_controllerslv_slave_data
   ,SPI_controllerslv_strb  => SPI_controllerslv_strb
   ,SPI_controllerslv_cyc  => SPI_controllerslv_cyc
   ,SPI_controllerslv_ack  => SPI_controllerslv_ack
   ,SPI_controllerslv_err  => SPI_controllerslv_err
   ,SPI_controllerslv_rty  => SPI_controllerslv_rty
   ,SPI_controllerslv_sel  => SPI_controllerslv_sel
   ,SPI_controllerslv_we  => SPI_controllerslv_we
   ,SPI_controllerslv_bte  => SPI_controllerslv_bte
   ,SPI_controllerslv_cti  => SPI_controllerslv_cti
   ,SPI_controllerslv_lock  => SPI_controllerslv_lock
   ,SPI_controllerintr_active_high  => SPI_controllerintr_active_high
   );

end AP1220_controller_vhd_a;

