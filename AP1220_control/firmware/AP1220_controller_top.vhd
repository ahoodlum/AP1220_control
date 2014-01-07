Library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

library lattice;
use lattice.components.all;

library machxo2;
use machxo2.all;

entity AP1220_controller_top is
	port (
			clk				: in	std_logic;
			rst				: in	std_logic;
			
			-- SPI SIGNALS
			sclk			: out	std_logic;
			miso			: in	std_logic;
			mosi			: out	std_logic;
			s_en			: out	std_logic;
			
			-- UART SIGNALS
			uart_rx			: in	std_logic;
			uart_tx			: out 	std_logic;

			-- LEDS
			leds			: out 	std_logic_vector(7 DOWNTO 0)
	);
end AP1220_controller_top;

architecture behavioral of AP1220_controller_top is

type state_type is 	(idle, count_wait, send_spi_0, send_spi_1, wait_spi, process_instr);

signal current_state	: state_type;
signal next_state		: state_type;

signal clk_i			: std_logic;
signal rst_n			: std_logic;

type instruction_record is
	record
		status					: std_logic_vector(7 DOWNTO 0);				-- Bit 0 - Valid Command; Bit 1 - NOP; Bit 2 - Trigger;
		loop_number				: natural;
		loop_count				: natural;
		register_address		: std_logic_vector(7 DOWNTO 0);
		register_value			: std_logic_vector(7 DOWNTO 0);
		delay					: natural;
	end record;

type instruction_array is array(0 to 4) of instruction_record;
signal instructions				: instruction_array;
		
signal idx						: natural	:= 0;

signal spi_packet			: std_logic_vector(15 DOWNTO 0);
signal shift_strobe			: std_logic;
signal s_en_i				: std_logic;

signal count_target			: natural;
signal next_count_target	: natural;
signal count_32_bit			: natural;
signal rst_counter			: std_logic;
signal do_count				: std_logic;
signal valid_instr			: std_logic;
signal next_valid_instr		: std_logic;
signal nop_instr			: std_logic; 
signal next_nop_instr		: std_logic;
signal delay				: natural;
signal increment_idx		: std_logic;

	-- WB SPI_Controller SIGNALS --
	signal wb_ack_o			: std_logic;
	signal wb_adr_o			: std_logic_vector(31 DOWNTO 0);
	signal wb_clk_i			: std_logic;
	signal wb_dat_i			: std_logic_vector(7 DOWNTO 0);
	signal wb_dat_o			: std_logic_vector(7 DOWNTO 0);
	signal wb_rst_i			: std_logic;
	signal wb_stb_i			: std_logic;
	signal wb_we_i			: std_logic;

	-- TEMPORARY REGISTERS FOR PROVING WB INTERFACE --
	signal reg_0_i			: std_logic_vector(7 DOWNTO 0);
	signal reg_1_i			: std_logic_vector(7 DOWNTO 0);
	signal reg_2_i			: std_logic_vector(7 DOWNTO 0);
	signal reg_3_i			: std_logic_vector(7 DOWNTO 0);
	signal reg_4_i			: std_logic_vector(7 DOWNTO 0);
	signal reg_5_i			: std_logic_vector(7 DOWNTO 0);
	signal reg_6_i			: std_logic_vector(7 DOWNTO 0);
	signal reg_7_i			: std_logic_vector(7 DOWNTO 0);
	signal Q				: std_logic_vector(7 DOWNTO 0);

	-- LM8 INSTANCE --
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

	component OSCH
	-- synthesis translate_off
    	GENERIC  (NOM_FREQ: string := "88.67");
	-- synthesis translate_on
      PORT ( 
			stdby 		:IN std_logic;
			osc			:OUT std_logic;
			sedstdby	:OUT std_logic
		);
	end component;
	attribute syn_noprune: boolean ;
	attribute syn_noprune of OSCH: component is true;
	
	attribute NOM_FREQ	: string;
	attribute NOM_FREQ of OSCInst0 : label is "88.67";

begin

				rst_n <= not rst;

				instructions(0).status				<= "00000001";
				instructions(0).loop_number			<= 0;
				instructions(0).loop_count			<= 0;
				instructions(0).register_address	<= X"DE";
				instructions(0).register_value		<= X"AD";
				instructions(0).delay				<= 100;
				
				instructions(1).status				<= "00000001";
				instructions(1).loop_number			<= 0;
				instructions(1).loop_count			<= 0;
				instructions(1).register_address	<= X"BE";
				instructions(1).register_value		<= X"EF";
				instructions(1).delay				<= 200;
				
				instructions(2).status				<= "00000011";
				instructions(2).loop_number			<= 0;
				instructions(2).loop_count			<= 0;
				instructions(2).register_address	<= X"DA";
				instructions(2).register_value		<= X"DA";
				instructions(2).delay				<= 20;
				
				instructions(3).status				<= "00000001";
				instructions(3).loop_number			<= 0;
				instructions(3).loop_count			<= 0;
				instructions(3).register_address	<= X"AB";
				instructions(3).register_value		<= X"CD";
				instructions(3).delay				<= 22;
				
				instructions(4).status				<= "00000000";
				instructions(4).loop_number			<= 0;
				instructions(4).loop_count			<= 0;
				instructions(4).register_address	<= X"12";
				instructions(4).register_value		<= X"34";
				instructions(4).delay				<= 300;
		
		
		sclk <= clk;
		s_en <= s_en_i;	
		spi_packet			<= instructions(idx).register_address & instructions(idx).register_value;
		valid_instr 		<= instructions(idx).status(0);
		next_valid_instr	<= instructions(idx+1).status(0);
		nop_instr			<= instructions(idx).status(1);	 
		next_nop_instr		<= instructions(idx+1).status(1);	
		count_target		<= instructions(idx).delay;
		next_count_target	<= instructions(idx+1).delay;
		
		
		-- WISHBONE SLAVE INTERFACE --
		wb_ack_o <= wb_stb_i;
		leds(7 DOWNTO 4) <= Q(3 DOWNTO 0);

		REG: process( clk_i )
		begin
			if( rising_edge( clk_i ) ) then
				if( wb_rst_i = '1' ) then
					Q <= B"00000000";
				elsif( (wb_stb_i and wb_we_i) = '1' ) then
					Q <= wb_dat_o( 7 downto 0 );
				elsif( (wb_stb_i and (not wb_we_i)) = '1' ) then
					wb_dat_i <= reg_0_i;
				else
					Q <= Q;
				end if;
			end if;
	end process REG;
		
		-- SPI CONTROLLER STATE MACHINE --
		
		next_state_assignment : process (clk)
		begin
			if rst = '1' then
				current_state <= idle;
			elsif (falling_edge(clk)) then
				current_state <= next_state;
			end if;
		end process;
			
		
		process (current_state, count_target, s_en_i, count_32_bit, nop_instr, valid_instr) 
		-- process (current_state)
			begin
			
			--rst_counter <= '0'; do_count <= '0'; shift_strobe <= '0'; increment_idx <= '0';
			
			case current_state is
				when idle =>
					next_state <= process_instr;
					rst_counter 	<= '0';
					do_count 		<= '0';
					shift_strobe 	<= '0';
					increment_idx 	<= '0';
						--if nop_instr = '1' then
--							rst_counter 	<= '1';
--							do_count 		<= '1';
--							shift_strobe 	<= '0';
--							increment_idx 	<= '0';
--							next_state <= count_wait;
--						else
--							rst_counter 	<= '0';
--							do_count 		<= '0';
--							shift_strobe 	<= '0';
--							increment_idx 	<= '0';
--							next_state <= send_spi_0;
--						end if;
				
				when send_spi_0 =>		
					rst_counter 	<= '0';
					do_count 		<= '0';	
					shift_strobe 	<= '1';
					increment_idx 	<= '0';
					next_state <= wait_spi;
					
				when wait_spi =>
				
					if s_en_i = '0' then
						rst_counter 	<= '0';
						do_count 		<= '0';	
						shift_strobe 	<= '0';
						increment_idx 	<= '0';
						next_state <= wait_spi;
					else
						rst_counter 	<= '0';
						do_count 		<= '1';	
						shift_strobe 	<= '0';
						increment_idx 	<= '0';
						next_state <= count_wait;
					end if;
				
				when count_wait =>
					if (count_32_bit = count_target) then
						rst_counter 	<= '0';
						do_count 		<= '0';	
						shift_strobe 	<= '0';
						increment_idx 	<= '1';
						next_state <= process_instr;	 
					else
						rst_counter 	<= '0';
						do_count 		<= '1';	
						shift_strobe 	<= '0';
						increment_idx 	<= '0';
						next_state <= count_wait;
					end if;	
			
				when process_instr =>
					if valid_instr = '1' then
						if nop_instr = '1' then
							rst_counter 	<= '1';
							do_count 		<= '1';	
							shift_strobe 	<= '0';
							increment_idx 	<= '0';
							next_state <= count_wait;
						else
							rst_counter 	<= '1';
							do_count 		<= '0';	
							shift_strobe 	<= '0';
							increment_idx 	<= '0';
							next_state <= send_spi_0;
						end if;
					else
						rst_counter 	<= '0';
						do_count 		<= '0';	
						shift_strobe 	<= '0';
						increment_idx 	<= '0';
						next_state <= idle;
					end if;
				
				when others =>
					rst_counter 	<= '0';
					do_count 		<= '0';	
					shift_strobe 	<= '0';
					increment_idx 	<= '0';
					next_state <= idle;
					
				end case;	
		end process;

	incr_idx : process (clk, rst, increment_idx)
	begin
		if rst = '1' then
			idx <= 0;
		elsif(falling_edge(clk)) then
			if increment_idx = '1' then
				idx <= idx + 1;
			end if;
		end if;		 
	end process;

	count_wait_proc : process (clk)
		begin
			if (rising_edge(clk)) then
				if rst_counter = '1' then
					count_32_bit <= 0;
				elsif do_count = '1' then
					count_32_bit <= count_32_bit + 1;
				else
					count_32_bit <= count_32_bit;
				end if;
			end if;
	end process;
	
	SR_16_0 : shift_reg_16_bit
	port map (
			clk				=> clk, 
			rst				=> rst,
			shift_strobe	=> shift_strobe,
			data_in			=> spi_packet,
			s_out			=> mosi,
			s_en			=> s_en_i
			);

	lm8_inst : AP1220_controller
	port map (
	   clk_i  => clk_i
	   ,reset_n  => rst_n
	   ,LEDPIO_OUT  => leds(3 DOWNTO 0)
	   ,uartSIN  => uart_rx
	   ,uartSOUT  => uart_tx
	   , SPI_controllerclk => wb_clk_i
		, SPI_controllerrst => wb_rst_i
		, SPI_controllerslv_adr => wb_adr_o			
		, SPI_controllerslv_master_data => wb_dat_o
		, SPI_controllerslv_slave_data => wb_dat_i
		, SPI_controllerslv_strb => wb_stb_i
		, SPI_controllerslv_cyc => open
		, SPI_controllerslv_ack => wb_ack_o
		, SPI_controllerslv_err => open
		, SPI_controllerslv_rty => open
		, SPI_controllerslv_sel => open
		, SPI_controllerslv_we => wb_we_i
		, SPI_controllerslv_bte => open 
		, SPI_controllerslv_cti => open 
		, SPI_controllerslv_lock => open
		, SPI_controllerintr_active_high => open
	 );

	OSCInst0: OSCH
	--	 synthesis translate_off
	GENERIC MAP ( NOM_FREQ  => "88.67" )
	--	 synthesis translate_on
	PORT MAP ( 
			stdby		=>  '0',
			osc			=>  clk_i,
			sedstdby	=> open
	);

end behavioral;
		
