
-- VHDL Instantiation Created from source file Multiplexer16To4.vhd -- 03:39:40 03/21/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Multiplexer16To4
	PORT(
		i_select : IN std_logic_vector(1 downto 0);
		i_deta_bcd_1 : IN std_logic_vector(3 downto 0);
		i_deta_bcd_2 : IN std_logic_vector(3 downto 0);
		i_deta_bcd_3 : IN std_logic_vector(3 downto 0);
		i_deta_bcd_4 : IN std_logic_vector(3 downto 0);          
		o_deta_bcd : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_Multiplexer16To4: Multiplexer16To4 PORT MAP(
		i_select => ,
		i_deta_bcd_1 => ,
		i_deta_bcd_2 => ,
		i_deta_bcd_3 => ,
		i_deta_bcd_4 => ,
		o_deta_bcd => 
	);


