Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity spi_master is
	port (
			spi_clk_in		: in	std_logic;
			rst				: in	std_logic;
			--spi_addr		: in	std_logic_vector(7 DOWNTO 0);
			--spi_data		: in	std_logic_vector(7 DOWNTO 0);
			--spi_wr			: in	std_logic;
			
			spi_clk_out		: out 	std_logic;
			spi_en			: out	std_logic;
			spi_mosi		: out	std_logic
	);
end spi_master;

architecture behavioral of spi_master is
type state_type is 	(idle, tx_wait);

signal current_state	: state_type;
signal next_state		: state_type;

signal shift_strobe			: std_logic := '0';
signal shift_count			: integer	:= 0;

signal spi_packet			: std_logic_vector(15 DOWNTO 0);

component shift_reg_16_bit is
	port (
			clk				: in	std_logic;
			rst				: in	std_logic;
			shift_strobe	: in	std_logic;
			data_in			: in	std_logic_vector(15 DOWNTO 0);
			s_out			: out	std_logic;
			s_en			: out	std_logic
	);
end component;

begin
	
		spi_clk_out <= spi_clk_in;
		spi_packet	<= spi_addr & spi_data;
		
		next_state_assignment : process (spi_clk_in)
		begin
			if rst = '1' then
				tx_current_state <= idle;
			elsif (rising_edge(spi_clk_in)) then
				tx_current_state <= tx_next_state;
			end if;
		end process;
		
		
		tx_state_logic : process (spi_clk_in)
		begin
		
		case tx_current_state is
			when idle => 
				if (spi_wr = '1') then
					--spi_en 			<= '0';
					shift_strobe 	<= '1';
					shift_count 	<= 15;
					tx_next_state <= tx_wait;
				else
					shift_strobe 	<= '0';
					--spi_en <= '1';
					tx_next_state <= idle;
				end if;
			
			when tx_wait =>
				if (rising_edge(spi_clk_in)) then
					if shift_count <= 0 then
						--spi_en <= '1';
						tx_next_state <= idle;
					end if;
				end if;
			when others =>
		end case;
	end process;
	
SR_16_0 : shift_reg_16_bit
	port map (
			clk				=> spi_clk_in, 
			rst				=> rst,
			shift_strobe	=> shift_strobe,
			data_in			=> spi_packet,
			s_out			=> spi_mosi,
			s_en			=> spi_en
			);
end behavioral;
					
					
					
			
			
			