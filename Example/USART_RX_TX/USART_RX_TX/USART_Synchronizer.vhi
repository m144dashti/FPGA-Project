
-- VHDL Instantiation Created from source file USART_Synchronizer.vhd -- 04:23:40 03/22/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT USART_Synchronizer
	PORT(
		i_clk : IN std_logic;
		i_tx_busy : IN std_logic;
		i_tx_transmit_finished : IN std_logic;
		i_rx_valid : IN std_logic;          
		o_tx_start : OUT std_logic
		);
	END COMPONENT;

	Inst_USART_Synchronizer: USART_Synchronizer PORT MAP(
		i_clk => ,
		i_tx_busy => ,
		i_tx_transmit_finished => ,
		i_rx_valid => ,
		o_tx_start => 
	);


