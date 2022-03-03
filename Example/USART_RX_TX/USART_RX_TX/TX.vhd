library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity TX is
	 generic ( g_clk_per_bit : integer := 48000000 / 115200 );
	 
    Port ( clk 		 			 : in   STD_LOGIC;
           i_parallel		    : in   STD_LOGIC_VECTOR (7 downto 0);
           i_start			    : in   STD_LOGIC;
           o_busy	 				 : out  STD_LOGIC;
           o_transmit_finished : out  STD_LOGIC;
           o_tx 				    : out  STD_LOGIC);
			  
end TX;

architecture Behavioral of TX is

	type state_machine is ( state_idl , state_transmit_deta , state_clear );
	
	signal r_stata   		: state_machine 					  := state_idl;
	signal r_tx_deta		: STD_LOGIC_VECTOR(9 downto 0);
	signal r_counter 		: unsigned(8 downto 0)     	  := to_unsigned(0 , 9);
	signal r_bit_counter : integer range 0 to 9     	  := 0;

begin
	process (clk) is
	begin
		if rising_edge(clk) then
			case r_stata is
				
				when state_idl =>
					o_transmit_finished <= '0';
					if i_start = '1' then
						r_stata <= state_transmit_deta;
						r_tx_deta <= ('1' & i_parallel & '0');
						o_busy <= '1';
					end if;
				
				
				when state_transmit_deta =>
					o_tx <= r_tx_deta(r_bit_counter);
					r_counter <= r_counter +1;
					if r_counter = to_unsigned(g_clk_per_bit-1 , 9) then
						r_counter <= to_unsigned(0 , 9);
						r_bit_counter <= r_bit_counter + 1;
					end if;
					if r_bit_counter = 9 then
						r_bit_counter <= 0;
						r_stata <= state_clear;
					end if;
				
				
				when state_clear =>
					r_stata  <= state_idl;
					o_busy <= '0';
					o_transmit_finished <= '1';
			end case;
		end if;
	end process;

end Behavioral;

