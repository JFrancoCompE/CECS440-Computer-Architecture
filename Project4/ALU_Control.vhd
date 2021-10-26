----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/29/2020 01:39:28 PM
-- Design Name: 
-- Module Name: ALU_Control - Behavioral
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
--! use logic elements
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.std_logic_unsigned.all;

--! the ALU_Control takes as input the 6 first bitS from the instruction and the 2 bits code from the controller. It outputs a 4 bits code to control the ALU
entity ALU_Control is
    Port ( 			ctrl : in STD_logic_vector(2 downto 0); 			--! Opcode from controller
				Din : in  STD_LOGIC_VECTOR (5 downto 0);	        --! funt_in from instruction (first 6 bits)
				Dout : out  STD_LOGIC_VECTOR (3 downto 0)		--! alu_control output
			  );
end ALU_Control;

--! @brief This is the ALU control that generates the 4 control bits for the ALU
--! @details opcode 00: load/store functions (add for calculating adress)
--! @details opcode 01: branch on equal (substract for comparing inputs)
--! @details opcode 10: R-type instruction (depends on ALU_Funct_In)
--! @details ALU_Funct_In 100000: add
--! @details ALU_Funct_In 100000: substract
--! @details ALU_Funct_In 100000: AND
--! @details ALU_Funct_In 100000: OR
--! @details ALU_Funct_In 100000: set less then
architecture Behavioral of ALU_Control is
begin
       
process(ctrl,Din) is begin
            case ctrl is
                -- lw, sw, addi, addiu
                when "000" =>
                    Dout <= "0010";
                -- beq or bne
                when "001" =>
                    Dout <= "0110";
                -- r-type/i-type instructions
                when "010" =>
                    case Din is
                        -- r-type
                        when "100000" => Dout <= "0010"; -- add
                        when "100001" => Dout <= "0010"; -- addu
                        when "100010" => Dout <= "0110"; -- sub
                        when "100011" => Dout <= "0110"; -- subu
                        when "100100" => Dout <= "0000"; -- and
                        when "100101" => Dout <= "0001"; -- or
                        when "100110" => Dout <= "0011"; -- xor
                        when "100111" => Dout <= "1100"; -- nor
                        when "101010" => Dout <= "0100"; -- slt
                        when "101011" => Dout <= "0100"; -- sltu
                        when others => Dout <= "XXXX";
                    end case;
                when "011" =>
                    Dout <= "0000"; -- andi
                when "100" =>
                    Dout <= "0001"; -- ori
                when "101" =>
                    Dout <= "0100"; -- slti/sltiu
                when others => Dout <= "XXXX";
            end case;
        end process;

end Behavioral;