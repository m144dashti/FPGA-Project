library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity spi_sleva is
	generic ( g_number_bit : integer := 7 );

	Port (i_clk		          : in  STD_LOGIC;
		  o_sck		          : out STD_LOGIC;
		  io_miso             : in  STD_LOGIC;
		  io_mosi             : out STD_LOGIC; 
		  i_cs                : in  STD_LOGIC;
		  i_start_transmit    : in  STD_LOGIC;
		  o_finesh_transmit   : out STD_LOGIC;
		  i_parallel_transmit : in  STD_LOGIC_VECTOR (g_number_bit downto 0);
		  o_parallel_reseive  : out STD_LOGIC_VECTOR (g_number_bit downto 0));
end spi_sleva;

architecture Behavioral of spi_sleva is

	signal r_conter_bit_transmit, r_conter_bit_reseive : integer range 0 to 7   := 0;
	signal r_parallel_transmit, r_parallel_reseive     : std_logic_vector(g_number_bit downto 0);
	signal r_start_transmit : std_logic := '0';
	signal r_clock : std_logic;

begin

	r_parallel_transmit <= i_parallel_transmit;
	o_sck <= r_clock;

---RESEIVE---------------------------------------------------------
	reseive : process (i_clk , i_cs)
	begin
		if ( rising_edge(i_clk) and i_cs = '1' ) then
			r_conter_bit_reseive <= r_conter_bit_reseive + 1;
			r_parallel_reseive(r_conter_bit_reseive) <= io_miso;
			if r_conter_bit_reseive = 7 then
				r_conter_bit_reseive <= 0;
				o_parallel_reseive  <= r_parallel_reseive;
			end if;
		end if;
	end process reseive;
--------------------------------------------------------------------

---TRANSMIT---------------------------------------------------------
	transmit : process (i_clk , i_start_transmit)
	begin
		if ( falling_edge(i_clk)  and i_start_transmit = '1' ) then
			o_finesh_transmit <= '0';
			r_conter_bit_transmit <= r_conter_bit_transmit + 1;
			io_mosi <= r_parallel_transmit(r_conter_bit_transmit);
			if r_conter_bit_transmit = 7 then
				r_conter_bit_transmit <= 0;
				o_finesh_transmit <= '1';
			end if;
		end if;
	end process transmit;
-------------------------------------------------------------------
	clock : process (i_clk , i_start_transmit , i_cs)
	begin
		if (i_start_transmit = '1' or i_cs ='1') then
			r_clock <= i_clk;
		end if;
	end process clock;


end Behavioral;


