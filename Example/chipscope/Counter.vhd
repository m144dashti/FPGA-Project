library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Counter is
    Port ( i_clk         : in   STD_LOGIC;
           o_select_2bit : out  STD_LOGIC_VECTOR (1 downto 0));
end Counter;

architecture Behavioral of Counter is
	signal r_counter 		 : unsigned (15 downto 0)  := (others => '0');
   signal r_select_2bit  : unsigned (1 downto 0)   := (others => '0');
begin
	o_select_2bit <= STD_LOGIC_VECTOR(r_select_2bit);
   process (i_clk)
   begin
      if rising_edge(i_clk) then
         r_counter <= r_counter + 1;
         if (r_counter = to_unsigned(60000,16)) then
               r_select_2bit <= r_select_2bit + 1;
               r_counter  <= (others => '0');  
         end if;
      end if;
   end process;
end Behavioral;

