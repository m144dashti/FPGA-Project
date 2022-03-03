
-- VHDL Instantiation Created from source file Counter.vhd -- 03:47:58 03/21/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Counter
	PORT(
		i_clk : IN std_logic;          
		o_select_2bit : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_Counter: Counter PORT MAP(
		i_clk => ,
		o_select_2bit => 
	);


