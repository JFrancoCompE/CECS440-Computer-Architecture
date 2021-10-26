----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 11/24/2020 12:29:42 PM
-- Design Name: 
-- Module Name: mux_2to1 - Behavioral
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

ENTITY mux_2to1 IS
	PORT (
		mux_in0  : IN std_logic_vector(31 DOWNTO 0);
		mux_in1  : IN std_logic_vector(31 DOWNTO 0);
		mux_ctl  : IN STD_logic;
		mux_out  : OUT STD_logic_vector(31 DOWNTO 0)
	);
END mux_2to1;
ARCHITECTURE Behavioral OF mux_2to1 IS
BEGIN
	mux_out <= mux_in0 WHEN mux_ctl = '0' ELSE
	           mux_in1;
END Behavioral;
