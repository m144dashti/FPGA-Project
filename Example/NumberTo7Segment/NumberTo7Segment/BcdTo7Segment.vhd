library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity BcdTo7Segment is
	    Port ( i_bcd      : in   STD_LOGIC_VECTOR (3 downto 0);
				  o_7segment : out  STD_LOGIC_VECTOR (6 downto 0));
end BcdTo7Segment;

architecture Behavioral of BcdTo7Segment is

begin
   process (i_bcd)
   begin
      case i_bcd is
         when "0000" =>    o_7segment <= "0111111"; -- 0
         when "0001" =>    o_7segment <= "0000110"; -- 1
         when "0010" =>    o_7segment <= "1011011"; -- 2
         when "0011" =>    o_7segment <= "1001111"; -- 3
         when "0100" =>    o_7segment <= "1100110"; -- 4
         when "0101" =>    o_7segment <= "1101101"; -- 5
         when "0110" =>    o_7segment <= "1011111"; -- 6
         when "0111" =>    o_7segment <= "0000111"; -- 7
         when "1000" =>    o_7segment <= "1111111"; -- 8
         when "1001" =>    o_7segment <= "1101111"; -- 9
			when "1010" =>    o_7segment <= "1110111"; -- A
         when "1011" =>    o_7segment <= "1111100"; -- B
         when "1100" =>    o_7segment <= "0111001"; -- C
         when "1101" =>    o_7segment <= "1011110"; -- D
         when "1110" =>    o_7segment <= "1111001"; -- E
         when "1111" =>    o_7segment <= "1110001"; -- F
         when others =>    o_7segment <= "0000000"; -- off
      end case;
   end process;
end Behavioral;

