Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_reg_16_bit is
	port (
			clk				: in	std_logic;
			rst				: in	std_logic;
			shift_strobe	: in	std_logic;
			data_in			: in	std_logic_vector(15 DOWNTO 0);
			s_out			: out	std_logic;
			s_en			: out	std_logic
	);
end shift_reg_16_bit;

architecture behavioral of shift_reg_16_bit is

type shift_state_type is (idle, shift);
signal shift_state 		: shift_state_type;
signal shift_state_next : shift_state_type;
signal shift_count		: integer;
signal rst_count		: std_logic;
signal data				: std_logic_vector(15 DOWNTO 0);

begin

process(clk)
	begin
	if(rising_edge(clk)) then
		if rst = '1' then
			shift_state <= idle;
		else
			shift_state <= shift_state_next;
		end if;
	end if;
end process;

process(clk)
	begin
	
	if (falling_edge(clk)) then
		case shift_state is
			when idle =>
				s_en <= '1';
				s_out <= '1';
				if shift_strobe = '1' then
					shift_state_next <= shift;
					data <= data_in;
					rst_count <= '1';
				else
					shift_state_next <= idle;
					rst_count <= '0';
				end if;
			when shift =>
				s_en <= '0';
				s_out <= data(shift_count);
				rst_count <= '0';
				if shift_count > 0 then
					shift_state_next <= shift;
				else
					shift_state_next <= idle;
				end if;
			end case;
	end if;
end process;


process (clk, rst_count)
begin
	if rst_count = '1' then
		shift_count <= 14;		-- A value of 15 works fine during sim of this module synthesized by itself
								-- but when incorporated into a higher level module 14 is needed to keep the 
								-- total s_en low time 16 bits
	elsif (falling_edge(clk)) then
		shift_count <= shift_count - 1;
	end if;
end process;
	


end behavioral;
			
			
		
			
				
			


