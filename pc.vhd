//program counter module

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity pc is
    Port ( clk : in STD_LOGIC; 
           next_instr : out STD_LOGIC_VECTOR (2 downto 0));
end pc;

architecture Behavioral of pc is

signal current_signal : STD_LOGIC_VECTOR (2 downto 0) := "000";

begin
   process(clk)
   begin
          if falling_edge(clk) then 
             current_signal <= STD_LOGIC_VECTOR(unsigned(current_signal) + to_unsigned(1, 3));
   end if;
     

end process;

next_intr <= current_signal;

end Behavioral;
