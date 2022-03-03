library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity USART_RX_TX is
    Port ( i_clk 	    : in  STD_LOGIC;
			  i_rx 		 : in  STD_LOGIC;
			  o_tx  		 : out  STD_LOGIC);
end USART_RX_TX;

architecture Behavioral of USART_RX_TX is
---COMPONENT-----------------------------------------
	COMPONENT RX
	PORT(
		i_clk 	  : IN  std_logic;
		i_rx		  : IN  std_logic;          
		o_parallel : OUT std_logic_vector(7 downto 0);
		o_valid	  : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT TX
	PORT(
		clk 		  			  : IN std_logic;
		i_parallel			  : IN std_logic_vector(7 downto 0);
		i_start			     : IN std_logic;
		o_busy			     : OUT std_logic;
		o_transmit_finished : OUT std_logic;
		o_tx     			  : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT USART_Synchronizer
	PORT(
		i_clk : IN std_logic;
		i_tx_busy : IN std_logic;
		i_tx_transmit_finished : IN std_logic;
		i_rx_valid : IN std_logic;          
		o_tx_start : OUT std_logic
		);
	END COMPONENT;
-----------------------------------------------------

---SIGNAL--------------------------------------------
	signal r_parallel : std_logic_vector(7 downto 0);
	signal r_start    : std_logic;
	signal r_tx       : std_logic;
	signal r_tx_busy  : std_logic;
	signal r_rx_valid : std_logic;
	signal r_tx_transmit_finished : std_logic;
-----------------------------------------------------
begin
---PORT MAP------------------------------------------
	My_RX: RX PORT MAP(
		i_clk		  => i_clk,
		i_rx 		  => i_rx,
		o_parallel => r_parallel,
		o_valid 	  => r_rx_valid
	);
	
	My_TX: TX PORT MAP(
		clk 		 			  => i_clk,
		i_parallel 		     => r_parallel,
		i_start	 			  => r_start,
		o_busy 				  => r_tx_busy,
		o_transmit_finished => r_tx_transmit_finished,
		o_tx 				     => r_tx
	);
	
	My_USART_Synchronizer: USART_Synchronizer PORT MAP(
		i_clk						  => i_clk,
		i_tx_busy				  => r_tx_busy,
		i_tx_transmit_finished => r_tx_transmit_finished,
		i_rx_valid				  => r_rx_valid,
		o_tx_start				  => r_start
	);

-----------------------------------------------------

	o_tx <= r_tx;

end Behavioral;

