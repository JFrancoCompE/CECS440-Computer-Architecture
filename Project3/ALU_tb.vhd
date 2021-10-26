----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/10/2020 01:26:23 PM
-- Design Name: 
-- Module Name: ALU_tb - Behavioral
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

entity ALU_tb is
--  Port ( );
end ALU_tb;

architecture Behavioral of ALU_tb is
signal A, B : std_logic_vector(31 downto 0);
signal sel  : std_logic_vector(3 downto 0);
signal cin  : std_logic;

signal zero : std_logic;
signal overflow : std_logic;
signal ALUout : std_logic_vector (31 downto 0);
signal Cout : std_logic;

begin
    uut: entity work.ALU port map ( A => A,
                                    B => B, 
                                    sel => sel,
                                    cin => cin,
                                    zero => zero,
                                    overflow => overflow,
                                    ALUout => ALUout,
                                    Cout => Cout
                                    );

    A <= x"FFFF_FFFF",              -- 1
         x"9898_9898" after 10ns,   -- 2
         x"0101_0101" after 20ns,   -- 3
         x"0000_0001" after 30ns,   -- 4
         x"6389_754F" after 40ns,   -- 5
         x"0000_0001" after 50ns,   -- 6
         x"6389_754F" after 60ns,   -- 7
         x"FFFF_FFFF" after 70ns,   -- 8
         x"0000_0000" after 80ns,   -- 9
         x"F968_4783" after 90ns,   -- 10
         x"9ABC_DEDF" after 100ns,  -- 11
         x"89BC_DE34" after 110ns;  -- 12
         
         
    B <= x"0000_0000",              -- 1
         x"8989_8989" after 10ns,   -- 2
         x"1010_1010" after 20ns,   -- 3
         x"FFFF_FFFF" after 30ns,   -- 4
         x"AD56_24E6" after 40ns,   -- 5
         x"FFFF_FFFF" after 50ns,   -- 6
         x"AD56_24E6" after 60ns,   -- 7
         x"FFFF_FFFF" after 70ns,   -- 8
         x"0000_0001" after 80ns,   -- 9
         x"F998_D562" after 90ns,   -- 10
         x"9ABC_DEFD" after 100ns,  -- 11
         x"C53B_D687" after 110ns;  -- 12
         
    Cin <= 'X',
           'X' after 10ns,   -- 2
           'X' after 20ns,   -- 3
           '0' after 30ns,   -- 4
           '0' after 40ns,   -- 5
           '1' after 50ns,   -- 6
           '1' after 60ns,   -- 7
           '1' after 70ns,   -- 8
           '0' after 80ns,   -- 9
           '0' after 90ns,   -- 10
           'X' after 100ns,  -- 11
           'X' after 110ns;  -- 12
         
    sel <= "0000",
           "0001" after 10ns,   -- 2
           "0011" after 20ns,   -- 3
           "0010" after 30ns,   -- 4
           "0010" after 40ns,   -- 5
           "0010" after 50ns,   -- 6
           "0010" after 60ns,   -- 7
           "0010" after 70ns,   -- 8
           "0110" after 80ns,   -- 9
           "0110" after 90ns,   -- 10
           "1100" after 100ns,  -- 11
           "1100" after 110ns;  -- 12

end Behavioral;
