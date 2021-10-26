----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/24/2020 12:33:13 PM
-- Design Name: 
-- Module Name: PCADD_sl - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity PCADD_sl is
    Port (Din : in std_logic_vector(31 downto 0);
          Din_sl : in std_logic_vector(31 downto 0);
          Dout : out std_logic_vector(31 downto 0));
          
end PCADD_sl;

architecture Behavioral of PCADD_sl is

begin
    Dout <= Din + Din_sl;
end Behavioral;
