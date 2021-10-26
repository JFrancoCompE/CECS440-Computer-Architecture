----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/22/2020 03:48:54 PM
-- Design Name: 
-- Module Name: F1_circuit_tb - Behavioral
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

entity F1_circuit_tb is
--  Port ( );
end F1_circuit_tb;

architecture tb of F1_circuit_tb is
        signal A : std_logic;
        signal B : std_logic;
        signal C : std_logic;
        signal F1: std_logic;
begin
    uut: entity work.F1_circuit port map ( A => A, B => B, C => C, F1 => F1);

    A <= '1', '0' after 20 ns, '1' after 40 ns;
    B <= '1', '0' after 20 ns, '1' after 40 ns;
    C <= '1', '0' after 20 ns, '0' after 40 ns;

end tb;