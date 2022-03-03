library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main is
    Port ( i_clk      : in   STD_LOGIC;
           o_7segment : out  STD_LOGIC_vector(6  downto 0);
           o_enable   : out  STD_LOGIC_vector(3  downto 0)
			 );
end main;

architecture Behavioral of main is
	COMPONENT NumberTo7Segment
	PORT(
		i_clk : IN std_logic;
		i_number : IN std_logic_vector(15 downto 0);          
		o_7segment : OUT std_logic_vector(6 downto 0);
		o_enable : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	signal r_number     : std_logic_vector(15 downto 0) := "0010100101011000"; -- 2958
	
begin
	Inst_NumberTo7Segment: NumberTo7Segment PORT MAP(
		i_clk => i_clk,
		i_number => r_number,
		o_7segment => o_7segment,
		o_enable => o_enable
	);

end Behavioral;

