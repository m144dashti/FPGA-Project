library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity main is
    Port ( i_clk  : in   STD_LOGIC;
    	   o_out1 : out  STD_LOGIC);
end main;

architecture Behavioral of main is

	signal sout : STD_LOGIC := '0' ;
	signal r_out1 : STD_LOGIC;

begin

	o_out1 <= r_out1;

	output1 : process (i_clk)
	begin
		if rising_edge(i_clk) then
			sout <= not sout;
		end if;
	end process output1;


	output2 : process (sout)
	begin
		--if rising_edge(sout) then
			r_out1 <= not r_out1;
		--end if;
	end process output2;


end Behavioral;

