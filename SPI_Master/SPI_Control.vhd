library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SPI_Control is
    Port ( i_clk    		: in   STD_LOGIC;
    	   i_start_transmit : in   STD_LOGIC;
           o_clk_spi 		: out  STD_LOGIC);
end SPI_Control;

architecture Behavioral of SPI_Control is

begin
	process (i_clk)
	begin
		if (falling_edge(i_clk)) then
			o_clk_spi <= '1';
			if i_start_transmit = '1' then
				o_clk_spi <= i_clk;
			end if;
			
		end if;
	end process;

end Behavioral;

