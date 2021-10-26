----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/22/2020 03:27:01 PM
-- Design Name: 
-- Module Name: F1_circuit - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity F1_circuit is
port ( A, B, C : in STD_LOGIC;
       F1 : out STD_LOGIC );
end F1_circuit;

architecture F1_circuit of F1_circuit is
begin
    F1 <= ( A and B )      or
         ( not (A) and C ) or
         ( A and not (B) and not (C) );

end F1_circuit;