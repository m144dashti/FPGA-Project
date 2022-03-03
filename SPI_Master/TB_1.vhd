--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   10:10:20 03/24/2021
-- Design Name:   
-- Module Name:   E:/FileProject/ISE Project/SPI_Master/TB_1.vhd
-- Project Name:  SPI_Master
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Shift_Register
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
 
ENTITY TB_1 IS
END TB_1;
 
ARCHITECTURE behavior OF TB_1 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Shift_Register
    PORT(
         clk : IN  std_logic;
         i_miso : IN  std_logic;
         o_mosi : OUT  std_logic;
         i_en_transmit : IN  std_logic;
         i_en_reseive : IN  std_logic;
         i_parallel_transmit : IN  std_logic_vector(15 downto 0);
         o_parallel_reseive : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal i_miso : std_logic := '0';
   signal i_en_transmit : std_logic := '0';
   signal i_en_reseive : std_logic := '0';
   signal i_parallel_transmit : std_logic_vector(15 downto 0) := (others => '0');

 	--Outputs
   signal o_mosi : std_logic;
   signal o_parallel_reseive : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Shift_Register PORT MAP (
          clk => clk,
          i_miso => i_miso,
          o_mosi => o_mosi,
          i_en_transmit => i_en_transmit,
          i_en_reseive => i_en_reseive,
          i_parallel_transmit => i_parallel_transmit,
          o_parallel_reseive => o_parallel_reseive
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;
		
		
      -- insert stimulus here 
		i_parallel_transmit <= "1010010001101101";
		i_en_transmit <= '1';
		wait for 10 ns;
		i_en_transmit <= '0';
		wait for 50 ns;
		i_parallel_transmit <= "0100010010011101";
		wait for 100 ns;
		i_en_reseive <= '1';
		wait for 10 ns;
		i_en_reseive <= '0';
		
      wait;
   end process;

END;
