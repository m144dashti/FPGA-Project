-------------------------------------------------------------------------------
-- Copyright (c) 2021 Xilinx, Inc.
-- All Rights Reserved
-------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor     : Xilinx
-- \   \   \/     Version    : 14.7
--  \   \         Application: XILINX CORE Generator
--  /   /         Filename   : ICON_IP.vhd
-- /___/   /\     Timestamp  : Mon Mar 29 07:47:19 Pacific Daylight Time 2021
-- \   \  /  \
--  \___\/\___\
--
-- Design Name: VHDL Synthesis Wrapper
-------------------------------------------------------------------------------
-- This wrapper is used to integrate with Project Navigator and PlanAhead

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
ENTITY ICON_IP IS
  port (
    CONTROL0: inout std_logic_vector(35 downto 0));
END ICON_IP;

ARCHITECTURE ICON_IP_a OF ICON_IP IS
BEGIN

END ICON_IP_a;
