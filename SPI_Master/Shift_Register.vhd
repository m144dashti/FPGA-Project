library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Shift_Register is

	 generic ( g_number_bit : integer := 7);

    Port ( clk 					 : in   STD_LOGIC;
           i_miso					 : in   STD_LOGIC;
           o_mosi					 : out  STD_LOGIC;
           i_en_transmit		 : in   STD_LOGIC;
           i_en_reseive			 : in   STD_LOGIC;
           i_parallel_transmit : in   STD_LOGIC_VECTOR (g_number_bit downto 0);
           o_parallel_reseive  : out  STD_LOGIC_VECTOR (g_number_bit downto 0));
end Shift_Register;

architecture Behavioral of Shift_Register is
	
	signal r_miso			    	: std_logic;
	signal r_mosi				   : std_logic;
	signal r_shift_register    : std_logic_vector(g_number_bit downto 0) := (others => '0');
	signal r_parallel_transmit : std_logic_vector(g_number_bit downto 0) := (others => '0');
	signal r_parallel_reseive  : std_logic_vector(g_number_bit downto 0) := (others => '0');

begin
	
	
	
	process (clk)
	begin
		if rising_edge(clk) then
			


		end if;
	end process;
end Behavioral;

