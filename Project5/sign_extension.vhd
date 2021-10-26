----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/24/2020 12:27:15 PM
-- Design Name: 
-- Module Name: sign_extension - Behavioral
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

ENTITY sign_extension IS
	PORT (
		se_in   : IN STD_logic_vector(15 DOWNTO 0);
		se_out  : OUT STD_logic_vector(31 DOWNTO 0)
	);
END sign_extension;
ARCHITECTURE Behavioral OF sign_extension IS
BEGIN
	-- concat hex 0000 with se_in if msb is 0 else ...
	se_out <= x"0000" & se_in WHEN se_in(15) = '0'
	          ELSE
	          x"FFFF" & se_in;
END Behavioral;
