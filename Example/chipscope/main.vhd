library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity main is
    Port ( i_clk       : in   STD_LOGIC;
		   i_input1    : in   STD_LOGIC;
		   i_input2    : in   STD_LOGIC;
		   i_input3    : in   STD_LOGIC;
		   i_input4    : in   STD_LOGIC_VECTOR(0 DOWNTO 0));
end main;

architecture Behavioral of main is
---COMPONENT----------------------------------------------------
	component DCM_IP
	port
	 (CLK_IN1           : in     std_logic;
	  CLK_OUT1          : out    std_logic);
	end component;

	component ICON_IP
	  PORT ( CONTROL0 : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0));
	end component;
	
	component ILA_IP
	  PORT (
		CONTROL : INOUT STD_LOGIC_VECTOR(35 DOWNTO 0);
	    CLK     : IN    STD_LOGIC;
	    DATA    : IN    STD_LOGIC_VECTOR(3 DOWNTO 0);
	    TRIG0   : IN    STD_LOGIC_VECTOR(0 TO 0));
	end component;

---------------------------------------------------------------
	
---SIGNAL------------------------------------------------------
	signal r_control : STD_LOGIC_VECTOR(35 DOWNTO 0);
	signal r_clk     : STD_LOGIC;
	signal r_data    : STD_LOGIC_VECTOR(3 DOWNTO 0);
	signal r_trig    : STD_LOGIC_VECTOR(0 DOWNTO 0);
---------------------------------------------------------------

begin
---PORT_MAP----------------------------------------------------
	My_DCM : DCM_IP
	  port map
	   (CLK_IN1 => i_clk,
	    CLK_OUT1 => r_clk);

	My_ICON : ICON_IP
	  port map ( CONTROL0 => r_control);
	  
	My_ILA : ILA_IP
	  port map (
		 CONTROL => r_control,
		 CLK     => r_clk,
		 DATA    => r_data,
		 TRIG0   => r_trig
		);	 
---------------------------------------------------------------
	  
	r_data(0) <= i_input1;
	r_data(1) <= i_input2;
	r_data(2) <= i_input3;
	r_data(3) <= i_input4(0);

	r_trig <= i_input4;

end Behavioral;

