library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Program_Counter is
  Port ( clk : in std_logic;
         reset : in std_logic;
         Din   : in std_logic_vector(31 downto 0);
         Dout  : out std_logic_vector(31 downto 0)
  );
end Program_Counter;

architecture Behavioral of Program_Counter is
begin
    process(clk, reset)
    begin
        if reset = '1' then
            Dout <= (others => '0');
        elsif rising_edge (clk) then
            Dout <= Din;
        end if;
    end process;
    
end Behavioral;