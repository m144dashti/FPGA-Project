library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity main_spi_sleva is
    Port ( i_clk      : in  STD_LOGIC;
           io_mosi    : in  STD_LOGIC;
           i_sck      : in  STD_LOGIC;
           i_ss       : in  STD_LOGIC;
           o_7segment : OUT std_logic_vector(6 downto 0);
		   o_enable   : OUT std_logic_vector(3 downto 0));
end main_spi_sleva;

architecture Behavioral of main_spi_sleva is
--------------------------------------------------------------------------------
	COMPONENT NumberTo7Segment
	PORT(
		i_clk : IN std_logic;
		i_number : IN std_logic_vector(15 downto 0);          
		o_7segment : OUT std_logic_vector(6 downto 0);
		o_enable : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	COMPONENT spi_sleva
	PORT(
		i_sck : IN std_logic;
		io_mosi : IN std_logic;
		i_start_reseive : IN std_logic;          
		o_valid_reseive : OUT std_logic;
		o_parallel_reseive : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
	signal r_number : std_logic_vector(15 downto 0);
	signal r_data   : std_logic_vector(7 downto 0);
	signal r_valid_reseive : std_logic;
--------------------------------------------------------------------------------

begin

--------------------------------------------------------------------------------
	Inst_NumberTo7Segment: NumberTo7Segment PORT MAP(
		i_clk      => i_clk,
		i_number   => r_number,
		o_7segment => o_7segment,
		o_enable   => o_enable
	);

	Inst_spi_sleva: spi_sleva PORT MAP(
		i_sck              => i_sck,
		io_mosi 		   => io_mosi,
		i_start_reseive    => i_ss,
		o_valid_reseive    => r_valid_reseive,
		o_parallel_reseive => r_data
	);
--------------------------------------------------------------------------------

	r_number <= (r_data & "00000000");
	

end Behavioral;

