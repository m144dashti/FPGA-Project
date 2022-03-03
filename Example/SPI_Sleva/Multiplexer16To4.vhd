library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Multiplexer16To4 is
	 Port ( i_select     : in   STD_LOGIC_VECTOR (1 downto 0);
			  i_deta_bcd_1 : in   STD_LOGIC_VECTOR (3 downto 0);
			  i_deta_bcd_2 : in   STD_LOGIC_VECTOR (3 downto 0);
			  i_deta_bcd_3 : in   STD_LOGIC_VECTOR (3 downto 0);
			  i_deta_bcd_4 : in   STD_LOGIC_VECTOR (3 downto 0);
			  o_deta_bcd   : out  STD_LOGIC_VECTOR (3 downto 0));
end Multiplexer16To4;

architecture Behavioral of Multiplexer16To4 is

begin
   o_deta_bcd <= i_deta_bcd_1  when i_select = "00" else
                 i_deta_bcd_2  when i_select = "01" else
                 i_deta_bcd_3  when i_select = "10" else
                 i_deta_bcd_4  when i_select = "11" ;
end Behavioral;

