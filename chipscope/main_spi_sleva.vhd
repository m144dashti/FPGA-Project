library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity main_spi_sleva is
    Port ( i_clk      : in  STD_LOGIC;
           io_mosi    : out STD_LOGIC;
           io_miso    : in  STD_LOGIC;
           o_sck      : out STD_LOGIC;
           o_cs       : out STD_LOGIC;
           o_7segment : OUT std_logic_vector(6 downto 0);
		   o_enable   : OUT std_logic_vector(3 downto 0));
end main_spi_sleva;

architecture Behavioral of main_spi_sleva is
--------------------------------------------------------------------------------
	component DCM_IP
	port
	 (CLK_IN1           : in     std_logic;
	  CLK_OUT1          : out    std_logic;
	  CLK_OUT2          : out    std_logic);
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

	COMPONENT NumberTo7Segment
	PORT(
		i_clk : IN std_logic;
		i_number : IN std_logic_vector(15 downto 0);          
		o_7segment : OUT std_logic_vector(6 downto 0);
		o_enable : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	COMPONENT spi_sleva
	PORT(
		i_clk : IN std_logic;
		o_sck : OUT std_logic;
		io_miso : IN std_logic;
		i_cs : IN std_logic;
		i_start_transmit : IN std_logic;
		i_parallel_transmit : IN std_logic_vector(7 downto 0);          
		io_mosi : OUT std_logic;
		o_finesh_transmit : OUT std_logic;
		o_parallel_reseive : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
-------------------------------------------------------------------------------

----DCM------------------------------------------------------------------------
	signal r_clk     : STD_LOGIC;
	signal r_clk_spi : std_logic;
----ILA------------------------------------------------------------------------
	signal r_control : STD_LOGIC_VECTOR(35 DOWNTO 0);
	signal r_data    : STD_LOGIC_VECTOR(3 DOWNTO 0);
	signal r_trig    : STD_LOGIC_VECTOR(0 DOWNTO 0);
	signal r_toy     : std_logic_vector(0 downto 0);
----NumberTo7Segment-----------------------------------------------------------
	signal r_number  : std_logic_vector(15 downto 0);
----spi_sleva------------------------------------------------------------------
	signal r_miso             : std_logic;
	signal r_mosi             : std_logic;
	signal r_cs                : std_logic;
	signal r_start_transmit    : std_logic;
	signal r_finesh_transmit   : std_logic;
	signal r_parallel_transmit : std_logic_vector(7 downto 0);
	signal r_parallel_reseive  : std_logic_vector(7 downto 0);
--------------------------------------------------------------------------------

	signal r_data_rx  : std_logic_vector(7 downto 0);
	signal r_conter   : unsigned(15 downto 0) := to_unsigned(0, 16);
	signal r_sck      : std_logic;

--------------------------------------------------------------------------------

begin

--------------------------------------------------------------------------------
	My_DCM : DCM_IP
	  port map
	   (CLK_IN1  => i_clk,
	    CLK_OUT1 => r_clk,
	    CLK_OUT2 => r_clk_spi);

	My_ICON : ICON_IP
	  port map ( CONTROL0 => r_control);
	  
	My_ILA : ILA_IP
	  port map (
		 CONTROL => r_control,
		 CLK     => r_clk,
		 DATA    => r_data,
		 TRIG0   => r_trig
		);	 

	Inst_NumberTo7Segment: NumberTo7Segment PORT MAP(
		i_clk      => r_clk,
		i_number   => r_number,
		o_7segment => o_7segment,
		o_enable   => o_enable
	);

	Inst_spi_sleva: spi_sleva PORT MAP(
		i_clk   => r_clk_spi,
		o_sck   => r_sck,
		io_miso => r_miso,
		io_mosi => r_mosi,
		i_cs    => r_cs,
		i_start_transmit    => r_start_transmit,
		o_finesh_transmit   => r_finesh_transmit,
		i_parallel_transmit => r_parallel_transmit,
		o_parallel_reseive  => r_parallel_reseive
	);
--------------------------------------------------------------------------------

	r_number <= (r_data_rx & "00000000");
	o_cs    <= r_cs;
	o_sck   <= r_sck;
	io_mosi <= r_mosi;
	r_miso  <= io_miso;

	r_data(0) <= r_sck;
	r_data(1) <= r_miso;
	r_data(2) <= r_mosi;
	r_data(3) <= r_cs;
	r_trig <= r_toy;


	test : process (r_clk)
	begin
		if rising_edge(r_clk) then
			r_conter <= r_conter + 1;
			if r_conter = to_unsigned(65000, 16) then
				r_conter <= to_unsigned(0, 16);
				r_start_transmit <= '1';
				r_cs <= '1';
			end if;

			if r_finesh_transmit = '1' then
				r_start_transmit <= '0';
				r_cs <= '0';
			end if;

		end if;
	end process test;

end Behavioral;

