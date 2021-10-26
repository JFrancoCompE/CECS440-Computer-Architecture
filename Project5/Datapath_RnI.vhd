----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/05/2020 01:52:42 PM
-- Design Name: 
-- Module Name: Datapath_tb - Behavioral
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


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Datapath_tb is   
--Port ( );
end Datapath_tb;

architecture Behavioral of Datapath_tb is
constant T: time := 20 ns;
signal clk : std_logic := '0';
signal reset : std_logic := '1';
signal Overflow, Zero : std_logic;
signal Dout : std_logic_vector(31 downto 0);

component Datapath_wrapper is
    port (
           clk, reset : in std_logic;
           Overflow,Zero : out std_logic;
           Dout : out std_logic_vector(31 downto 0));
end component Datapath_wrapper;
begin
design_1_i: Datapath_wrapper
    port map (
    clk => clk,
    reset => reset,
    Overflow => Overflow,
    Zero => Zero,
    Dout (31 downto 0) => Dout (31 downto 0)
    );
    process begin
        clk <= '0';
        wait for T/2;
        clk <= '1';
        wait for T/2;
    end process;
    reset <= '1', '0' after T;

end Behavioral;
