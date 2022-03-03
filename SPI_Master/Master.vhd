library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Master is
    Port ( i_clk : in  STD_LOGIC);
end Master;

architecture Behavioral of Master is

	component DCM_IP
	port
	 ( CLK_IN       : in   std_logic;
	   CLK_OUT      : out  std_logic);
	end component;

	signal clk : std_logic;

begin

	My_DCM : DCM_IP
	  port map
	   ( CLK_IN  => i_clk,
	     CLK_OUT => clk);



end Behavioral;

