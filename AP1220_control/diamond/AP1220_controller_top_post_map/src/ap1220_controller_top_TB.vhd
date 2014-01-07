library ieee;
use ieee.NUMERIC_STD.all;
use ieee.std_logic_1164.all;

	-- Add your library and packages declaration here ...

entity ap1220_controller_top_tb is
end ap1220_controller_top_tb;

architecture TB_ARCHITECTURE of ap1220_controller_top_tb is
	-- Component declaration of the tested unit
	component ap1220_controller_top
	port(
		clk : in STD_LOGIC;
		rst : in STD_LOGIC;
		sclk : out STD_LOGIC;
		miso : in STD_LOGIC;
		mosi : out STD_LOGIC;
		s_en : out STD_LOGIC;
		uart_rx : in STD_LOGIC;
		uart_tx : out STD_LOGIC;
		leds : out STD_LOGIC_VECTOR(7 downto 0) );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal clk : STD_LOGIC			:= '0';
	signal rst : STD_LOGIC			:= '1';
	signal miso : STD_LOGIC;
	signal uart_rx : STD_LOGIC;
	-- Observed signals - signals mapped to the output ports of tested entity
	signal sclk : STD_LOGIC;
	signal mosi : STD_LOGIC;
	signal s_en : STD_LOGIC;
	signal uart_tx : STD_LOGIC;
	signal leds : STD_LOGIC_VECTOR(7 downto 0);

	-- Add your code here ...
	constant PERIOD : time := 160 ns;

begin

	-- Unit Under Test port map
	UUT : ap1220_controller_top
		port map (
			clk => clk,
			rst => rst,
			sclk => sclk,
			miso => miso,
			mosi => mosi,
			s_en => s_en,
			uart_rx => uart_rx,
			uart_tx => uart_tx,
			leds => leds
		);

	-- Add your stimulus here ...
	clk <= not clk after PERIOD / 2;
	
	
	STIMULI : process
	begin		
		wait for 4 * PERIOD;
		rst <= '1';
		wait for 4 * PERIOD;
		rst <= '0';
		wait for PERIOD;
		wait for PERIOD;
		wait for PERIOD*1000;
		rst <= '1';
		wait for 4 * PERIOD;
		rst <= '0';
		wait;
	end process STIMULI;
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_ap1220_controller_top of ap1220_controller_top_tb is
	for TB_ARCHITECTURE
		for UUT : ap1220_controller_top
			use entity work.ap1220_controller_top(behavioral);
		end for;
	end for;
end TESTBENCH_FOR_ap1220_controller_top;

