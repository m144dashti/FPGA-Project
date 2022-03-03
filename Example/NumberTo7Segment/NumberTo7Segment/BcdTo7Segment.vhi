
-- VHDL Instantiation Created from source file BcdTo7Segment.vhd -- 03:30:11 03/21/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT BcdTo7Segment
	PORT(
		i_bcd : IN std_logic_vector(3 downto 0);          
		o_7segment : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;

	Inst_BcdTo7Segment: BcdTo7Segment PORT MAP(
		i_bcd => ,
		o_7segment => 
	);


