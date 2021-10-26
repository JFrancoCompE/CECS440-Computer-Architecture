----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/22/2020 08:42:22 PM
-- Design Name: 
-- Module Name: FA_FS_tb - Behavioral
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

entity FA_FS_tb is
--  Port ( );
end FA_FS_tb;

architecture Behavioral of FA_FS_tb is
signal MODE : std_logic;
signal A, B : std_logic_vector(3 downto 0);
signal sum : std_logic_vector(4 downto 0);



component Add_Sub_4bit_wrapper is
  port (
    MODE : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 3 downto 0 );
    B : in STD_LOGIC_VECTOR ( 3 downto 0 );
    sum : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  end component Add_Sub_4bit_wrapper;
begin
design_1_i:  Add_Sub_4bit_wrapper
     port map (
      MODE => MODE,
      A => A,
      B => B,
      sum => sum
    );
MODE <= '0', '1' after 40 ns;
A <= "1111";
B <= "1111";

--sum <= A + B;
end Behavioral;