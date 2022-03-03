library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SPI_Main is
    Port ( i_clk      : in   STD_LOGIC;
    	   i_miso     : in   STD_LOGIC;
    	   o_sclk	  : out  STD_LOGIC;
		   i_miso     : in   STD_LOGIC;
		   o_mosi     : out  STD_LOGIC;
    	   o_7segment : out  STD_LOGIC_vector(6  downto 0);
           o_enable   : out  STD_LOGIC_vector(3  downto 0));
end SPI_Main;

architecture Behavioral of SPI_Main is


begin


end Behavioral;

