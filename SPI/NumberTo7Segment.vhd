library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity NumberTo7Segment is
    Port ( i_clk 	  : in   STD_LOGIC;
		   i_number	  : in   STD_LOGIC_vector(15 downto 0);
           o_7segment : out  STD_LOGIC_vector(6  downto 0);
           o_enable   : out  STD_LOGIC_vector(3  downto 0)
           );
end NumberTo7Segment;

architecture Behavioral of NumberTo7Segment is
---COMPONENT--------------------------------------------
	COMPONENT BcdTo7Segment
	PORT(
		i_bcd      : IN std_logic_vector(3 downto 0);          
		o_7segment : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Multiplexer16To4
	PORT(
		i_select     : IN  std_logic_vector(1 downto 0);
		i_deta_bcd_1 : IN  std_logic_vector(3 downto 0);
		i_deta_bcd_2 : IN  std_logic_vector(3 downto 0);
		i_deta_bcd_3 : IN  std_logic_vector(3 downto 0);
		i_deta_bcd_4 : IN  std_logic_vector(3 downto 0);          
		o_deta_bcd   : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Decoder
	PORT(
		i_input_2bit  : IN  std_logic_vector(1 downto 0);          
		o_output_4bit : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	
	COMPONENT Counter
	PORT(
		i_clk         : IN std_logic;          
		o_select_2bit : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;
--------------------------------------------------------

---SIGNAL----------------------------------------------
   signal r_deta_bcd     : std_logic_vector(3 downto 0) := (others => '0');
   signal r_enable       : std_logic_vector(3 downto 0) := (others => '0');
   signal r_select_2bit  : std_logic_vector(1 downto 0) := (others => '0');
-------------------------------------------------------
begin
---PORT-MAP---------------------------------------------
	aBcdTo7Segment: BcdTo7Segment PORT MAP(
		i_bcd      => r_deta_bcd,
		o_7segment => o_7segment
	);
	
	aMultiplexer16To4: Multiplexer16To4 PORT MAP(
		i_select     => r_select_2bit,
		i_deta_bcd_1 => i_number(3  downto 0),
		i_deta_bcd_2 => i_number(7  downto 4),
		i_deta_bcd_3 => i_number(11 downto 8),
		i_deta_bcd_4 => i_number(15 downto 12),
		o_deta_bcd   => r_deta_bcd
	);
	
	aDecoder: Decoder PORT MAP(
		i_input_2bit  => r_select_2bit,
		o_output_4bit => r_enable
	);
	
	aCounter: Counter PORT MAP(
		i_clk         => i_clk,
		o_select_2bit => r_select_2bit
	);
--------------------------------------------------------

	o_enable <= r_enable;

end Behavioral;

