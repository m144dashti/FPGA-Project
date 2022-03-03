library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Main is
    Port ( i_clk   : in   STD_LOGIC;
           o_vs    : out  std_logic;
			  o_hs    : out  std_logic;
           o_red   : out  STD_LOGIC_VECTOR (2 downto 0);
           o_green : out  STD_LOGIC_VECTOR (2 downto 0);
           o_blue  : out  STD_LOGIC_VECTOR (2 downto 0));
end Main;

architecture Behavioral of Main is
---COMPONENT--------------------------------
   component DCM_IP
   port
    ( CLK_IN           : in     std_logic;
      CLK_OUT          : out    std_logic);
   end component;
--------------------------------------------

--CONSTANT----------------------------------
  constant HDisplayArea : integer := 640;  -- horizontal display area  
  constant HFrontPorch  : integer := 16;   -- h. front porch
  constant HBackPorch   : integer := 48;	-- h. back porch
  constant hsyncWidth   : integer := 96;	-- h. pulse width
  constant HLimit       : integer := 800;  -- maximum horizontal amount (limit)

  constant VDisplayArea : integer := 480;  -- vertical display area  
  constant VFrontPorch  : integer := 10;	-- v. front porch
  constant VBackPorch   : integer := 33;	 -- v. back porch
  constant vsyncWidth   : integer := 2;  	-- v. pulse width  
  constant VLimit       : integer := 525;  -- maximum vertical amount (limit)
    
--------------------------------------------

---SIGNAL-----------------------------------
   signal clk                    : std_logic;
   signal CurrentH               : unsigned(10 downto 0) := (others => '0'); -- goes to 1100100000 = 800
   signal CurrentV               : unsigned(10 downto 0) := (others => '0'); -- goes to 1000001101 = 525
   signal ScanlineX , ScanlineY  : unsigned(10 downto 0);
   signal ColorOutput            : unsigned(8 downto 0);
   signal HBlank, VBlank, Blank  : std_logic := '0';
   
   signal count                  : unsigned(17 downto 0) := (others => '0');
   signal counter                : unsigned(9 downto 0)  := "0000000001";
   signal sig                    : std_logic := '0';
--------------------------------------------


begin
---PORT_MAP---------------------------------
   My_DCM : DCM_IP
     port map
      ( CLK_IN => i_clk,
        CLK_OUT => clk
      );
--------------------------------------------

   main : process (clk)
   begin
      if rising_edge(clk) then
         CurrentH <= CurrentH + 1;
         if CurrentH = (HLimit-2) then
             CurrentH <= (others => '0');
             CurrentV <= CurrentV + 1;
         end if;
         if CurrentV = (VLimit-2) then
             CurrentV <= (others => '0');
         end if;
      end if;
   end process main;
      
   o_hs      <= '0' when CurrentH < hsyncWidth else '1';
   o_vs      <= '0' when CurrentV < vsyncWidth else '1';
   HBlank    <= '0' when (CurrentH >= hsyncWidth + HFrontPorch) and (CurrentH < hsyncWidth + HFrontPorch + HDisplayArea) else '1';
   VBlank    <= '0' when (CurrentV >= vsyncWidth + VFrontPorch) and (CurrentV < vsyncWidth + VFrontPorch + VDisplayArea) else '1';				  
   Blank     <= '1' when HBlank = '1' or VBlank = '1' else '0';

   o_red     <= std_logic_vector( ColorOutput(8 downto 6) ) when Blank = '0' else "000";	  
   o_green   <= std_logic_vector( ColorOutput(5 downto 3) ) when Blank = '0' else "000";				
   o_blue    <= std_logic_vector( ColorOutput(2 downto 0) ) when Blank = '0' else "000";	

   ScanlineX <= CurrentH - hsyncWidth - HFrontPorch when Blank = '0' else (others => '0');
   ScanlineY <= CurrentV - vsyncWidth - VFrontPorch when Blank = '0' else (others => '0');	


   VGAPosition : process (clk)
   begin
      if rising_edge(clk) then
      
         count <= count + 1;
         if count = to_unsigned(250000,18) then
            count <= (others => '0');
            if sig = '0' then
               counter <= counter + 1;
            else
               counter <= counter - 1;
            end if;
         end if;  

      end if;
   end process VGAPosition;
   
   
   
   Position : process (clk)
   begin
      if rising_edge(clk) then

         if counter = to_unsigned(589,10) then
            sig <= '1';
         end if;                
         if counter = to_unsigned(10,10) then
            sig <= '0';
         end if; 

      end if;
   end process Position;
   

   ColorOutput <= "001011011" when ( counter < ScanlineX  and  ScanlineX < ( 50 + counter))  
                              and  ( counter < ScanlineY  and  ScanlineY < ( 50 + counter)) else
                  "011001000";


end Behavioral;

