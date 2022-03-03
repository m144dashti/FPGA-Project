
-- VHDL Instantiation Created from source file spi_sleva.vhd -- 04:17:33 04/05/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT spi_sleva
	PORT(
		i_sck : IN std_logic;
		io_miso : IN std_logic;
		i_cs : IN std_logic;
		i_start_transmit : IN std_logic;
		i_parallel_transmit : IN std_logic_vector(7 downto 0);          
		io_mosi : OUT std_logic;
		o_finesh_transmit : OUT std_logic;
		o_parallel_reseive : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_spi_sleva: spi_sleva PORT MAP(
		i_sck => ,
		io_miso => ,
		io_mosi => ,
		i_cs => ,
		i_start_transmit => ,
		o_finesh_transmit => ,
		i_parallel_transmit => ,
		o_parallel_reseive => 
	);


