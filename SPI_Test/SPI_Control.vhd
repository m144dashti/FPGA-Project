library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SPI_Control is
    Port ( i_clk			      : in   STD_LOGIC;
    	   i_puls_start_transmit  : in   STD_LOGIC;
    	   i_puls_start_reseive	  : in   STD_LOGIC;
    	   o_valid_transmit		  : out  STD_LOGIC;
    	   o_valid_reseive 		  : out  STD_LOGIC;
    	   o_clk_spi		      : out  STD_LOGIC;
    	   o_start_transmit       : out  STD_LOGIC;
		   o_start_reseive        : out  STD_LOGIC
	);
end SPI_Control;

architecture Behavioral of SPI_Control is

begin
	process (i_clk , i_puls_start_transmit)
	begin
		if rising_edge(i_puls_start_transmit) then
			o_valid_transmit <= '1';

		end if;

	end process;



end Behavioral;

		