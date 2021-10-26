----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/05/2020 01:02:10 PM
-- Design Name: 
-- Module Name: PCADD - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity PCADD is
    Port (Din : in std_logic_vector(31 downto 0);
          Dout : out std_logic_vector(31 downto 0));
          
end PCADD;

architecture Behavioral of PCADD is

begin
    Dout <= Din + x"00000004";
end Behavioral;
