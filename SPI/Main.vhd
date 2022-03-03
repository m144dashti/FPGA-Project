library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Main is
    Port ( i_clk      : in   STD_LOGIC;
    	   i_miso     : in   STD_LOGIC;
    	   o_sclk	  : out  STD_LOGIC;
		   o_mosi     : out  STD_LOGIC;
			o_7segment : out  STD_LOGIC_vector(6 downto 0);
           o_enable   : out  STD_LOGIC_vector(3 downto 0));
end Main;

architecture Behavioral of Main is
----COMPONENT-------------------------------------------------------------------
	COMPONENT DCM_IP
	PORT
	 (  CLK_IN     : in     std_logic;
	    CLK_OUT    : out    std_logic);
	END COMPONENT;

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

	COMPONENT NumberTo7Segment
	PORT(
		i_clk : IN std_logic;
		i_number : IN std_logic_vector(15 downto 0);          
		o_7segment : OUT std_logic_vector(6 downto 0);
		o_enable : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
--------------------------------------------------------------------------------
	signal r_clk      		 : std_logic;
	signal r_number 		 : std_logic_vector(15 downto 0) := (others => '0');
	signal r_data   		 : std_logic_vector(7 downto 0)  := "10011010";
	signal r_valid_transmit	 : std_logic 					 := '0';
	signal r_valid_reseive	 : std_logic 					 := '0';
	signal r_start_transmit	 : std_logic 					 := '0';
	signal r_start_reseive	 : std_logic 				   	 := '0';
	signal r_conter			 : unsigned(22 downto 0) 		 := to_unsigned(0, 23);

begin
--------------------------------------------------------------------------------
	My_DCM : DCM_IP PORT MAP( 
		CLK_IN  => i_clk,
	    CLK_OUT => r_clk
	);

	My_SPI_Master: SPI_Master PORT MAP(
		i_clk			    => r_clk,
		o_sclk 				=> o_sclk,
		i_miso 				=> i_miso,
		o_mosi 				=> o_mosi,
		i_start_transmit    => r_start_transmit,
		i_start_reseive     => r_start_reseive,
		o_valid_transmit    => r_valid_transmit,
		o_valid_reseive     => r_valid_reseive,
		i_parallel_transmit => r_data,
		o_parallel_reseive  => r_number(7 downto 0)
	);

	My_NumberTo7Segment: NumberTo7Segment PORT MAP(
		i_clk 	   => r_clk,
		i_number   => r_number,
		o_7segment => o_7segment,
		o_enable   => o_enable
	);
--------------------------------------------------------------------------------

	process (r_clk)
	begin
		if rising_edge(r_clk) then
			r_start_transmit <= '0';
			r_start_reseive <= '0';
			r_conter <= r_conter + 1;
			if r_conter = to_unsigned(4500000, 23) then
				r_conter <= to_unsigned(0, 23);
				r_start_transmit <= '1';
				r_start_reseive <= '1';
			end if;
		end if;

	end process;

end Behavioral;

