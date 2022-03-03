
-- VHDL Instantiation Created from source file spi_sleva.vhd -- 05:46:46 04/04/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT spi_sleva
	PORT(
		i_sck : IN std_logic;
		io_mosi : IN std_logic;
		i_start_reseive : IN std_logic;          
		o_valid_reseive : OUT std_logic;
		o_parallel_reseive : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_spi_sleva: spi_sleva PORT MAP(
		i_sck => ,
		io_mosi => ,
		i_start_reseive => ,
		o_valid_reseive => ,
		o_parallel_reseive => 
	);


