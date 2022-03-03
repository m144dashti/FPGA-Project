--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:22:03 03/26/2021
-- Design Name:   
-- Module Name:   E:/FileProject/ISE Project/SPI_Test/t6.vhd
-- Project Name:  SPI_Test
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SPI_Master
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY t6 IS
END t6;
 
ARCHITECTURE behavior OF t6 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SPI_Master
    PORT(
         i_clk_spi : IN  std_logic;
         o_sclk : OUT  std_logic;
         i_miso : IN  std_logic;
         o_mosi : OUT  std_logic;
         i_start_transmit : IN  std_logic;
         i_start_reseive : IN  std_logic;
         i_parallel_transmit : IN  std_logic_vector(7 downto 0);
         o_parallel_reseive : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal i_clk_spi : std_logic := '0';
   signal i_miso : std_logic := '0';
   signal i_start_transmit : std_logic := '0';
   signal i_start_reseive : std_logic := '0';
   signal i_parallel_transmit : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal o_sclk : std_logic;
   signal o_mosi : std_logic;
   signal o_parallel_reseive : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant o_sclk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SPI_Master PORT MAP (
          i_clk_spi => i_clk_spi,
          o_sclk => o_sclk,
          i_miso => i_miso,
          o_mosi => o_mosi,
          i_start_transmit => i_start_transmit,
          i_start_reseive => i_start_reseive,
          i_parallel_transmit => i_parallel_transmit,
          o_parallel_reseive => o_parallel_reseive
        );

   -- Clock process definitions
   o_sclk_process :process
   begin
		o_sclk <= '0';
		wait for o_sclk_period/2;
		o_sclk <= '1';
		wait for o_sclk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for o_sclk_period*10;

      -- insert stimulus here 
      i_parallel_transmit <= "10101001";
      i_start_transmit <= '1';
      wait for 10 ns;
      i_start_transmit <= '0';
      wait;
   end process;

END;
