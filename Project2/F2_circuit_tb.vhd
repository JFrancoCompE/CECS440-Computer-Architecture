----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/22/2020 05:25:17 PM
-- Design Name: 
-- Module Name: F2_circuit_tb - Behavioral
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

entity F2_circuit_tb is
--  Port ( );
end F2_circuit_tb;

architecture tb of F2_circuit_tb is
        signal A  : std_logic;
        signal B  : std_logic;
        signal F2 : std_logic;
begin
    uut: entity work.F2_circuit port map ( A => A, B => B, F2 => F2);

    A <= '1', '0' after 20 ns, '1' after 40 ns;
    B <= '1', '0' after 20 ns, '0' after 40 ns;

end tb;
