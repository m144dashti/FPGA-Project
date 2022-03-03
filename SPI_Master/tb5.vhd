--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:19:00 03/26/2021
-- Design Name:   
-- Module Name:   E:/FileProject/ISE Project/SPI_Master/tb5.vhd
-- Project Name:  SPI_Master
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
 
ENTITY tb5 IS
END tb5;
 
ARCHITECTURE behavior OF tb5 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SPI_Master
    PORT(
         i_clk : IN  std_logic;
         i_miso : IN  std_logic;
         o_mosi : OUT  std_logic;
         i_start_transmit : IN  std_logic;
         i_parallel_transmit : IN  std_logic_vector(7 downto 0);
         o_parallel_reseive : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal i_clk : std_logic := '0';
   signal i_miso : std_logic := '0';
   signal i_start_transmit : std_logic := '0';
   signal i_parallel_transmit : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal o_mosi : std_logic;
   signal o_parallel_reseive : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant i_clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SPI_Master PORT MAP (
          i_clk => i_clk,
          i_miso => i_miso,
          o_mosi => o_mosi,
          i_start_transmit => i_start_transmit,
          i_parallel_transmit => i_parallel_transmit,
          o_parallel_reseive => o_parallel_reseive
        );

   -- Clock process definitions
   i_clk_process :process
   begin
		i_clk <= '0';
		wait for i_clk_period/2;
		i_clk <= '1';
		wait for i_clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for i_clk_period*10;

      -- insert stimulus here 
      i_parallel_transmit <= "11010100";
      i_start_transmit <= '1';

      wait;
   end process;

END;
