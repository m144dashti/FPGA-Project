
-- VHDL Instantiation Created from source file RX.vhd -- 07:34:00 03/21/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT RX
	PORT(
		i_clk : IN std_logic;
		i_rx : IN std_logic;          
		o_parallel : OUT std_logic_vector(7 downto 0);
		o_valid : OUT std_logic
		);
	END COMPONENT;

	Inst_RX: RX PORT MAP(
		i_clk => ,
		i_rx => ,
		o_parallel => ,
		o_valid => 
	);


