----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/10/2020 11:54:44 AM
-- Design Name: 
-- Module Name: ALU - Behavioral
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
use ieee.STD_LOGIC_SIGNED.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( A      : in  STD_LOGIC_VECTOR (31 downto 0);
           B      : in  STD_LOGIC_VECTOR (31 downto 0);
           sel    : in  STD_LOGIC_VECTOR ( 3 downto 0);
           Cin    : in  STD_LOGIC;
           zero   : out STD_LOGIC;
           overflow : out STD_LOGIC;
           ALUout : out STD_LOGIC_VECTOR (31 downto 0);
           Cout   : out STD_LOGIC);
end ALU;

architecture Behavioral of ALU is
signal ALU_i: std_logic_vector(32 downto 0);
signal A_i, B_i : std_logic_vector(32 downto 0);
    
begin
    A_i <= '0' & A;
    B_i <= '0' & B;
    process(A_i, B_i, Cin, sel)
    begin
        case sel is
            when "0000" =>
                ALU_i <= A_i and B_i;
            when "0001" =>
                ALU_i <= A_i or B_i;
            when "0010" =>
                --ALUout <= A + B;
                ALU_i <= A_i + B_i + Cin;
      
            when "0011" =>
                ALU_i <= A_i xor B_i;
            when "0110" =>
                --ALUout <= A - B;
                ALU_i <= A_i - B_i - Cin;
            when "1100" =>
                ALU_i <= A_i nor B_i;
            when others =>
                --result <= null;
                NULL;
        end case;
    end process;
    
    ALUout <= ALU_i(31 downto 0);
    --zero <= '1' when (ALU_i(31 downto 0) = 0) 
    --            else '0';
    zero <= '1' when (ALU_i = 0)
                else '0';
    Cout <= ALU_i(32) when( (sel = "0010") or (sel = "0110") )
                      else '0';
    --overflow <= '1' when (  (Cin = '1' and ALU_i(32) = '0') or ( Cin = '0' and ALU_i(32) = '1') ) else '0';
    --overflow <= '1' when ((A(31) = '1' and B(31) = '1' and ALU_i(31) = '0') or (A(31) = '0' and B(31) = '0' and ALU_i(31) = '1')) else '0';
    overflow <= '1' when ( (sel = "0010" and A(31) = '1' and B(31) = '1' and ALU_i(31) = '0') or 
                           (sel = "0010" and A(31) = '0' and B(31) = '0' and ALU_i(31) = '1') or
                           (sel = "0110" and A(31) = '0' and B(31) = '1' and ALU_i(31) = '0') or
                           (sel = "0110" and A(31) = '1' and B(31) = '0' and ALU_i(31) = '1'))
                    else '0';
end Behavioral; 


