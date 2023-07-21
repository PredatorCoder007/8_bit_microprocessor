library IEEE;
use IEEE.STD_LOGIC_1164;
use ieee.std_logic_unsigned.all;

entity ALU is
   
   Port( op : in STD_LOGIC_VECTOR(1 downto 0);
         rs : in STD_LOGIC_VECTOR(7 downto 0);
         rt : in STD_LOGIC_VECTOR(7 downto 0);
         rd : out STD_LOGIC_VECTOR(7 downto 0);

end ALU;

architecture Behavioral of ALU is
  signal result : std_logic_vector(7 downto 0);
begin
process(op, rs, rt)
  begin
    if (op = "00") then                ---AND
      result <= rs and rt;             
    elsif (op = "01") then             ---ADD
      result <= rs + rt;
    elsif (op = "10") then             ---SUB
      result <= rs - rt;
    elsif (op = "11") then             ---ADDi
      result <= rs + rt
    end if;
end process;

rd <= result;

end Behavioral;