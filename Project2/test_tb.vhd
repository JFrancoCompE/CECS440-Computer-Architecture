----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/22/2020 09:09:44 PM
-- Design Name: 
-- Module Name: test_tb - Behavioral
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

entity test_tb is
--  Port ( );
end test_tb;

architecture Behavioral of test_tb is
signal A, B, Cin, MODE : std_logic;
signal S, Cout : std_logic;

begin
    uut : entity work.FA_FS port map ( A => A, B => B, Cin => Cin, MODE => MODE, S => S, Cout => Cout );
    A <= '1', '0' after 40 ns;
    B <= '0', '0' after 40 ns;
    Cin <= '0';
    MODE <= '0';
--sum <= A + B;
end Behavioral;
