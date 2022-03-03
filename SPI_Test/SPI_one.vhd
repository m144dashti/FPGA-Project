library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity SPI_Master is
	generic ( g_number_bit : integer := 7 );

	Port (  i_clk		        : in  STD_LOGIC;
			o_sclk				: out STD_LOGIC;
			i_miso              : in  STD_LOGIC;
			o_mosi              : out STD_LOGIC;
			i_start_transmit    : in  STD_LOGIC;
			i_start_reseive     : in  STD_LOGIC;
			i_parallel_transmit : in  STD_LOGIC_VECTOR (g_number_bit downto 0);
			o_parallel_reseive  : out STD_LOGIC_VECTOR (g_number_bit downto 0));
end SPI_Master;

architecture Behavioral of SPI_Master is

	signal r_sclk                : std_logic 								:= '1';
	signal r_conter_bit_transmit : integer range 0 to 7                     := 0;
	signal r_conter_bit_reseive  : integer range 0 to 7                     := 0;
	signal r_parallel_transmit   : std_logic_vector(g_number_bit downto 0)  := (others => '0');
	signal r_parallel_reseive    : std_logic_vector(g_number_bit downto 0)  := (others => '0');
	signal r_valid_transmit		 : std_logic 								:= '0';
	signal r_valid_reseive		 : std_logic 								:= '0';

begin

	r_parallel_transmit <= i_parallel_transmit;
	o_sclk <= r_sclk;

	process (i_clk , i_start_transmit , i_start_reseive , r_valid_reseive)
	begin
		r_sclk <= '1';

		if (i_start_reseive = '1') then
			r_valid_reseive <= '1';
		end if;

		if (i_clk = '1' and r_valid_reseive = '1') then
			r_sclk <= i_clk;
			r_conter_bit_reseive <= r_conter_bit_reseive + 1;
			r_parallel_reseive(r_conter_bit_reseive) <= i_miso;
			if r_conter_bit_reseive = 7 then
				r_conter_bit_reseive <= 0;
				r_valid_reseive <= '0';
			end if;
		end if;

		if falling_edge(r_valid_reseive) then
			o_parallel_reseive  <= r_parallel_reseive;
		end if;



		if (i_start_transmit = '1') then
			r_valid_transmit <= '1';
		end if;
		if (i_clk = '0' and r_valid_transmit = '1') then
			r_sclk <= i_clk;
			r_conter_bit_transmit <= r_conter_bit_transmit + 1;
			o_mosi <= r_parallel_transmit(r_conter_bit_transmit);
			if r_conter_bit_transmit = 7 then
				r_conter_bit_transmit <= 0;
				r_valid_transmit <= '0';
			end if;
		end if;
	end process;
end Behavioral;