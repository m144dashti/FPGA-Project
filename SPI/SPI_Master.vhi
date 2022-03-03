
-- VHDL Instantiation Created from source file SPI_Master.vhd -- 03:41:55 03/27/2021
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT SPI_Master
	PORT(
		i_clk : IN std_logic;
		i_miso : IN std_logic;
		i_start_transmit : IN std_logic;
		i_start_reseive : IN std_logic;
		i_parallel_transmit : IN std_logic_vector(7 downto 0);          
		o_sclk : OUT std_logic;
		o_mosi : OUT std_logic;
		o_valid_transmit : OUT std_logic;
		o_valid_reseive : OUT std_logic;
		o_parallel_reseive : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_SPI_Master: SPI_Master PORT MAP(
		i_clk => ,
		o_sclk => ,
		i_miso => ,
		o_mosi => ,
		i_start_transmit => ,
		i_start_reseive => ,
		o_valid_transmit => ,
		o_valid_reseive => ,
		i_parallel_transmit => ,
		o_parallel_reseive => 
	);


