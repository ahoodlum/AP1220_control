library ieee;
use ieee.std_logic_1164.all;
library machxo2;
use machxo2.components.all;
library vital2000;
use vital2000.VITAL_Timing.all;

	-- Add your library and packages declaration here ...

entity shift_reg_16_bit_tb is
end shift_reg_16_bit_tb;

architecture TB_ARCHITECTURE of shift_reg_16_bit_tb is
	-- Component declaration of the tested unit
	component shift_reg_16_bit
	port(
		clk : in STD_LOGIC;
		rst : in STD_LOGIC;
		shift_strobe : in STD_LOGIC;
		data_in : in STD_LOGIC_VECTOR(15 downto 0);
		s_out : out STD_LOGIC;
		s_en : out STD_LOGIC );
	end component;

	-- Stimulus signals - signals mapped to the input and inout ports of tested entity
	signal clk : STD_LOGIC	:= '0';
	signal rst : STD_LOGIC;
	signal shift_strobe : STD_LOGIC	:= '0';
	signal data_in : STD_LOGIC_VECTOR(15 downto 0);
	-- Observed signals - signals mapped to the output ports of tested entity
	signal s_out : STD_LOGIC;
	signal s_en : STD_LOGIC;

	-- Add your code here ...
	constant PERIOD : time := 160 ns;
	
begin

	-- Unit Under Test port map
	UUT : shift_reg_16_bit
		port map (
			clk => clk,
			rst => rst,
			shift_strobe => shift_strobe,
			data_in => data_in,
			s_out => s_out,
			s_en => s_en
		);

	-- Add your stimulus here ...
   	clk <= not clk after PERIOD / 2;
	   
	STIMULI : process
	begin		
		wait for 4 * PERIOD;
		rst <= '1';
		wait for 4 * PERIOD;
		rst <= '0';	
		data_in <= X"DEAD";
		wait for PERIOD;  
		shift_strobe <= '1';
		wait for PERIOD;	
		shift_strobe <= '0';
		wait for PERIOD*20;
		data_in <= X"BEEF";
		wait for PERIOD;
		shift_strobe <= '1';
		wait for PERIOD;	
		shift_strobe <= '0';
		wait;
	end process STIMULI;
	
end TB_ARCHITECTURE;

configuration TESTBENCH_FOR_shift_reg_16_bit of shift_reg_16_bit_tb is
	for TB_ARCHITECTURE
		for UUT : shift_reg_16_bit
			use entity work.shift_reg_16_bit(structure);
		end for;
	end for;
end TESTBENCH_FOR_shift_reg_16_bit;

