LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY Control_Unit IS
	PORT (
	    reset         : IN std_logic;
		opcode        : IN std_logic_vector(5 DOWNTO 0); -- instruction 31-26
		RegDst        : OUT std_logic;
		Branch        : OUT std_logic;
		MemRead       : OUT std_logic;
		MemToReg      : OUT std_logic;
		ALUop         : OUT std_logic_vector(2 DOWNTO 0);
		MemWrite      : OUT std_logic;
		ALUSrc        : OUT std_logic;
		RegWrite      : OUT std_logic
	);
END Control_Unit;
ARCHITECTURE Behavioral OF Control_Unit IS
BEGIN
process(reset,Opcode) begin
        if reset = '1' then
            RegDst <= '0';
            ALUSrc <= '1';
            MemtoReg <= '0';
            RegWrite <= '0';
            MemRead <= '0';
            MemWrite <= '0';
            Branch <= '0';
            ALUop <= "000";
        else
            case Opcode is
                -- R-Format Instruction
                when "000000" =>
                    RegDst <= '1';
                    ALUSrc <= '0';
                    MemtoReg <= '0';
                    RegWrite <= '1';
                    MemRead <= '0';
                    MemWrite <= '0';
                    Branch <= '0';
                    ALUop <= "010";
                -- lw
                when "100011" =>
                    RegDst <= '0';
                    ALUSrc <= '1';
                    MemtoReg <= '1';
                    RegWrite <= '1';
                    MemRead <= '1';
                    MemWrite <= '0';
                    Branch <= '0';
                    ALUop <= "000";
                -- sw
                when "101011" =>
                    RegDst <= 'X';
                    ALUSrc <= '1';
                    MemtoReg <= 'X';
                    RegWrite <= '0';
                    MemRead <= '0';
                    MemWrite <= '1';
                    Branch <= '0';
                    ALUop <= "000";
                -- beq
                when "000100" =>
                    RegDst <= 'X';
                    ALUSrc <= '0';
                    MemtoReg <= 'X';
                    RegWrite <= '0';
                    MemRead <= '0';
                    MemWrite <= '0';
                    Branch <= '1';
                    ALUop <= "001";
                    
                    -- addi
                    when "001000" =>
                        RegDst <= '0';
                        ALUSrc <= '1';
                        MemtoReg <= '0';
                        RegWrite <= '1';
                        MemRead <= '0';
                        MemWrite <= '0';
                        Branch <= '0';
                        ALUop <= "000";
                    -- addiu
                    when "001001" =>
                        RegDst <= '0';
                        ALUSrc <= '1';
                        MemtoReg <= '0';
                        RegWrite <= '1';
                        MemRead <= '0';
                        MemWrite <= '0';
                        Branch <= '0';
                        ALUop <= "000";
                    -- andi
                    when "001100" =>
                        RegDst <= '0';
                        ALUSrc <= '1';
                        MemtoReg <= '0';
                        RegWrite <= '1';
                        MemRead <= '0';
                        MemWrite <= '0';
                        Branch <= '0';
                        ALUop <= "011";
                    -- ori
                    when "001101" =>
                        RegDst <= '0';
                        ALUSrc <= '1';
                        MemtoReg <= '0';
                        RegWrite <= '1';
                        MemRead <= '0';
                        MemWrite <= '0';
                        Branch <= '0';
                        ALUop <= "100";
                    -- bne
                    when "000101" =>
                        RegDst <= 'X';
                        ALUSrc <= '0';
                        MemtoReg <= 'X';
                        RegWrite <= '0';
                        MemRead <= '0';
                        MemWrite <= '0';
                        Branch <= '1';
                        ALUop <= "001";  
                        
                         -- slti
                   when "001010" =>
                       RegDst <= '0';
                       ALUSrc <= '1';
                       MemtoReg <= '0';
                       RegWrite <= '1';
                       MemRead <= '0';
                       MemWrite <= '0';
                       Branch <= '0';
                       ALUop <= "101";
                   -- sltiu
                   when "001011" =>
                       RegDst <= '0';
                       ALUSrc <= '1';
                       MemtoReg <= '0';
                       RegWrite <= '1';
                       MemRead <= '0';
                       MemWrite <= '0';
                       Branch <= '0';
                       ALUop <= "101";
                   when others =>
                       RegDst <= '0';
                       ALUSrc <= '0';
                       MemtoReg <= '0';
                       RegWrite <= '0';
                       MemRead <= '0';
                       MemWrite <= '0';
                       Branch <= '0';
                       ALUop <= "000";
               end case;
           end if;
       end process;             
                
END Behavioral;