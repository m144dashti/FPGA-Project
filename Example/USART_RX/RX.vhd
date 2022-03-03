library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity RX is
    generic ( g_clk_per_bit : integer := 48000000 / 115200);

    Port ( i_clk      : in   STD_LOGIC;
           i_rx 		 : in   STD_LOGIC;
           o_parallel : out  STD_LOGIC_VECTOR (7 downto 0);
           o_valid 	 : out  STD_LOGIC);
end RX;

architecture Behavioral of RX is

	type state_machine is ( state_idl , state_start_bit , state_recieve_deta , state_clear );
	
	signal r_rx				: STD_LOGIC;
	signal r_stata   		: state_machine 					  := state_idl;
	signal r_counter 		: unsigned(8 downto 0)     	  := to_unsigned(0 , 9);
	signal r_buffer 		: STD_LOGIC_VECTOR (8 downto 0) ;
	signal r_bit_counter : integer range 0 to 8     	  := 0;

begin
	r_rx <= i_rx;

	process (i_clk) is
	begin
		if rising_edge(i_clk) then
			
			case r_stata is
--state_idl-----------------------------------------------------
				when state_idl 			=>
					o_valid <= '0';
					if i_rx = '0' then
						r_stata <= state_start_bit;
					end if;
--state_start_bit-----------------------------------------------
				when state_start_bit 	=>
					r_counter <= r_counter + 1;
					if r_counter = to_unsigned(((g_clk_per_bit-1)/2) , 9) then
						r_counter <= to_unsigned(0 , 9);
						r_stata <= state_idl;
						if r_rx = '0' then
							r_stata <= state_recieve_deta;
						end if;
					end if;
				
--state_recieve_deta--------------------------------------------
				when state_recieve_deta =>
					r_counter <= r_counter +1;
					if r_counter = to_unsigned(g_clk_per_bit-1 , 9) then
						r_counter <= to_unsigned(0 , 9);
						r_buffer(r_bit_counter) <= r_rx;
						r_bit_counter <= r_bit_counter + 1;
					end if;
					if r_bit_counter = 8 then
						r_bit_counter <= 0;
						r_stata <= state_clear;
					end if;
				
--state_clear---------------------------------------------------
				when state_clear 			=>
					o_parallel <= r_buffer (7 downto 0);
					o_valid <= '1';
					r_stata <= state_idl;
				
			end case;
		end if;
	end process;
end Behavioral;

