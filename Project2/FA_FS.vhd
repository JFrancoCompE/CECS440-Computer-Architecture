----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 09/22/2020 08:02:18 PM
-- Design Name: 
-- Module Name: FA_FS - Behavioral
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

entity FA_FS is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           Cin : in  STD_LOGIC;
           MODE: in STD_LOGIC;
           S : out  STD_LOGIC;
           Cout : out  STD_LOGIC);
end FA_FS;

architecture Behavioral of FA_FS is
    --signal st,ct:std_logic;
begin
    process( A, B, Cin, MODE)
    begin
        if (MODE = '0') then
            Cout<= (B and Cin) or (A and Cin) or (A and B) ;
            S<= A xor B xor Cin;
        
        elsif(MODE = '1') then
            Cout<= ( not(A) and B ) or ( Cin and A and B ) or ( Cin and not(A) and not(B) ) ;
            S<= ( not(A) and not(B) and Cin) or ( not(A) and B and not(Cin) ) or ( A and not(B) and not(Cin) ) or ( A and B and Cin); 
       
        end if;
        --S<= st ;
        --Cout<= ct ;
   end process;
   
end Behavioral;


