library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity USART_RX is
    Port ( i_clk 		 : in  STD_LOGIC;
			  i_rx 		 : in  STD_LOGIC;
			  o_7segment : out  STD_LOGIC_vector(6  downto 0);
           o_enable   : out  STD_LOGIC_vector(3  downto 0)
		);
end USART_RX;

architecture Behavioral of USART_RX is
---COMPONENT--------------------------------------------
	COMPONENT RX
	PORT(
		i_clk      : IN std_logic;
		i_rx 	     : IN std_logic;          
		o_parallel : OUT std_logic_vector(7 downto 0);
		o_valid    : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT NumberTo7Segment
	PORT(
		i_clk 	  : IN std_logic;
		i_number   : IN std_logic_vector(15 downto 0);          
		o_7segment : OUT std_logic_vector(6 downto 0);
		o_enable   : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
--------------------------------------------------------
	
---SIGNAL-----------------------------------------------
	signal r_parallel : std_logic_vector(7 downto 0);
	signal r_number   : std_logic_vector(15 downto 0);
--------------------------------------------------------
begin
---PORT MAP---------------------------------------------
	My_RX: RX PORT MAP(
		i_clk 	  => i_clk,
		i_rx 		  => i_rx,
		o_parallel => r_parallel,
		o_valid	  => open
	);
	
	My_NumberTo7Segment: NumberTo7Segment PORT MAP(
		i_clk 	  => i_clk,
		i_number   => r_number,
		o_7segment => o_7segment,
		o_enable   => o_enable
	);
--------------------------------------------------------

	r_number <= (r_parallel & "00000000");

end Behavioral;

