library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity USART_Synchronizer is
    Port ( i_clk 					    : in STD_LOGIC;
			  i_tx_busy			       : in std_logic;
			  i_tx_transmit_finished : in std_logic;
			  i_rx_valid	          : in std_logic;
			  o_tx_start			    : out std_logic);
end USART_Synchronizer;

architecture Behavioral of USART_Synchronizer is

	signal r_witing : std_logic := '0';

begin
	process (i_clk) is
	begin
		if rising_edge(i_clk) then
		
			if (i_tx_busy = '1' and i_rx_valid = '1') then
				r_witing <= '1';
			end if;
			
			if (r_witing = '1' and i_tx_transmit_finished = '1') then
				r_witing <= '0';
			end if;
			
		end if;
	end process;
	
	o_tx_start <= i_rx_valid when r_witing = '0' else '1';
	
end Behavioral;

