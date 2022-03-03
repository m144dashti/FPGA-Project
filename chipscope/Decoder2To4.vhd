library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Decoder is
    Port ( i_input_2bit  : in   STD_LOGIC_VECTOR (1 downto 0);
           o_output_4bit : out  STD_LOGIC_VECTOR (3 downto 0));
end Decoder;

architecture Behavioral of Decoder is

begin
	process(i_input_2bit)
   begin
      case i_input_2bit is
         when "00"   => o_output_4bit <= "0111";
         when "01"   => o_output_4bit <= "1011";
         when "10"   => o_output_4bit <= "1101";
         when "11"   => o_output_4bit <= "1110";
         when others => o_output_4bit <= "1111";
      end case; 
   end process;
end Behavioral;

