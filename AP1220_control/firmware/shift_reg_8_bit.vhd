Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity shift_reg_8_bit is
	port (
			clk				: in	std_logic;
			rst				: in	std_logic;
			shift_strobe	: in	std_logic;
			data_in			: in	std_logic_vector(7 DOWNTO 0);
			s_out			: out	std_logic
	);
end shift_reg_8_bit;

architecture behavioral of shift_reg_8_bit is

type shift_state_type is (idle, shift);
signal shift_state 		: shift_state_type	:= idle;
signal shift_state_next : shift_state_type	:= idle;
signal shift_count		: integer	:= 8;
signal data				: std_logic_vector(7 DOWNTO 0) := (others => '0');

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
	if(falling_edge(clk)) then
		if shift_state = idle then
			if shift_strobe = '1' then
				shift_state_next <= shift;
				data <= data_in;
				s_out <= '0';
			else
				shift_state_next <= idle;
				s_out <= '1';
				shift_count <= 8;
			end if;
		elsif shift_state = shift then
			if shift_count > 0 then
				s_out <= data(0);
				data <= '0' & data(7 DOWNTO 1);
				shift_count <= shift_count - 1;
				shift_state_next <= shift;
			else
				s_out <= '0';
				shift_state_next <= idle;
			end if;
		end if;
	end if;
end process;

end behavioral;
			
			
		
			
				
			


