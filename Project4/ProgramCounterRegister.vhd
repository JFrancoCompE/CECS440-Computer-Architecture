----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/29/2020 12:28:51 PM
-- Design Name: 
-- Module Name: ProgramCounterRegister - Behavioral
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

entity ProgramCounterRegister is
    port(
    clk : in std_logic;
    reset : in std_logic;
    Din : in std_logic_vector(31 downto 0);
    Dout : out std_logic_vector(31 downto 0)
    );
end ProgramCounterRegister;

architecture Behavioral of ProgramCounterRegister is
begin
    process(clk, reset)
    begin
        if( reset = '1') then
            Dout <= (others => '0');
        elsif(clk'event and clk='1') then
            Dout <= Din;
        end if;
    end process;
    
end Behavioral;
