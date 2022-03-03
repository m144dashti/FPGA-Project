
-- VHDL Instantiation Created from source file NumberTo7Segment.vhd -- 03:48:45 03/27/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT NumberTo7Segment
	PORT(
		i_clk : IN std_logic;
		i_number : IN std_logic_vector(15 downto 0);          
		o_7segment : OUT std_logic_vector(6 downto 0);
		o_enable : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_NumberTo7Segment: NumberTo7Segment PORT MAP(
		i_clk => ,
		i_number => ,
		o_7segment => ,
		o_enable => 
	);


