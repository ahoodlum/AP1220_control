library ieee;
use ieee.std_logic_1164.all;

entity SPI_controller_top is
	port (
		clk_in	: in std_logic;
		
		s_clk	: out std_logic;
		mosi	: out std_logic;
		miso	: in std_logic;
		s_en	: out std_logic;
		
		uart_rx	: in std_logic;
		uart_tx	: out std_logic;
		
		leds	: out std_logic_vector
	);
end SPI_controller_top;

architecture behavioral of SPI_controller_top is

type spi_transaction is
	record
		register	:	std_logic_vector(7 DOWNTO 0);
		value		:	std_logic_vector(7 DOWNTO 0);
		delay_msb	:	std_logic_vector(7 DOWNTO 0);
		delay_lsb	:	std_logic_vector(7 DOWNTO 0);
	end record
type transaction_array is array (0 to 255) of spi_transaction;
signal transaction_register : transaction_array;

begin



