library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity spi_sleva is
	generic ( g_number_bit : integer := 7 );

	Port (i_sck		          : in  STD_LOGIC;
	      io_mosi             : in  STD_LOGIC;
		  i_start_reseive     : in  STD_LOGIC;
		  o_valid_reseive	  : out STD_LOGIC;
		  o_parallel_reseive  : out STD_LOGIC_VECTOR (g_number_bit downto 0));
end spi_sleva;

architecture Behavioral of spi_sleva is

	signal r_conter_bit_reseive   : integer range 0 to 7   := 0;
	signal r_parallel_reseive     : std_logic_vector(g_number_bit downto 0);
	signal r_valid_reseive	      : std_logic;

begin

	o_valid_reseive <= r_valid_reseive;

---RESEIVE---------------------------------------------------------
	reseive : process (i_sck , i_start_reseive)
	begin
		if ( rising_edge(i_sck) and i_start_reseive = '1' ) then
			r_conter_bit_reseive <= r_conter_bit_reseive + 1;
			r_parallel_reseive(r_conter_bit_reseive) <= io_mosi;
			if r_conter_bit_reseive = 7 then
				r_conter_bit_reseive <= 0;
				r_valid_reseive <= '0';
				o_parallel_reseive  <= r_parallel_reseive;
			end if;
		end if;
	end process reseive;
--------------------------------------------------------------------

end Behavioral;


