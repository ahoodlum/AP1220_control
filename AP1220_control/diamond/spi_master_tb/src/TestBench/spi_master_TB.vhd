library ieee;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity spi_master_tb is
end spi_master_tb;

architecture TB_ARCHITECTURE of spi_master_tb is
	-- Component declaration of the tested unit
	component spi_master
	port(
		spi_clk_in : in STD_LOGIC;
		rst : in STD_LOGIC;
		spi_addr : in STD_LOGIC_VECTOR(7 downto 0);
		spi_data : in STD_LOGIC_VECTOR(7 downto 0);
		spi_wr : in STD_LOGIC;
		spi_clk_out : out STD_LOGIC;
		spi_en : out STD_LOGIC;
		spi_mosi : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal spi_clk_in : STD_LOGIC	:= '0';
	signal rst : STD_LOGIC			:= '0';
	signal spi_addr : STD_LOGIC_VECTOR(7 downto 0);
	signal spi_data : STD_LOGIC_VECTOR(7 downto 0);
	signal spi_wr : STD_LOGIC		:= '0';
	-- Observed signals - signals mapped to the output ports of tested entity
	signal spi_clk_out : STD_LOGIC;
	signal spi_en : STD_LOGIC;
	signal spi_mosi : STD_LOGIC;

	-- Add your code here ...
	constant PERIOD : time := 20 ns;
	
begin

	-- Unit Under Test port map
	UUT : spi_master
		port map (
			spi_clk_in => spi_clk_in,
			rst => rst,
			spi_addr => spi_addr,
			spi_data => spi_data,
			spi_wr => spi_wr,
			spi_clk_out => spi_clk_out,
			spi_en => spi_en,
			spi_mosi => spi_mosi
		);

	-- Add your stimulus here ...
	spi_clk_in <= not spi_clk_in after PERIOD / 2;
	
	
	STIMULI : process
	begin		
		wait for 4 * PERIOD;
		rst <= '1';
		wait for 4 * PERIOD;
		rst <= '0';
		spi_addr <= X"DE";
		spi_data <= X"AD";
		wait for PERIOD;
		spi_wr <= '1';
		wait for PERIOD;
		spi_wr <= '0';
		wait;
	end process STIMULI;
	
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_spi_master of spi_master_tb is
	for TB_ARCHITECTURE
		for UUT : spi_master
			use entity work.spi_master(behavioral);
		end for;
	end for;
end TESTBENCH_FOR_spi_master;

