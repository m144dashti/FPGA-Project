
-- VHDL Instantiation Created from source file Decoder.vhd -- 03:43:39 03/21/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Decoder
	PORT(
		i_input_2bit : IN std_logic_vector(1 downto 0);          
		o_output_4bit : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_Decoder: Decoder PORT MAP(
		i_input_2bit => ,
		o_output_4bit => 
	);


