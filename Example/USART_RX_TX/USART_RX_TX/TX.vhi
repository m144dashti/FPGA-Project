
-- VHDL Instantiation Created from source file TX.vhd -- 00:49:14 03/22/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT TX
	PORT(
		clk : IN std_logic;
		i_parallel : IN std_logic_vector(7 downto 0);
		i_start : IN std_logic;          
		o_busy : OUT std_logic;
		o_transmit_finished : OUT std_logic;
		o_tx : OUT std_logic
		);
	END COMPONENT;

	Inst_TX: TX PORT MAP(
		clk => ,
		i_parallel => ,
		i_start => ,
		o_busy => ,
		o_transmit_finished => ,
		o_tx => 
	);


