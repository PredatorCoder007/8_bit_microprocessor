library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity control is
   Port ( instr : in STD_LOGIC_VECTOR(1 downto 0);
          alu_op : out STD_LOGIC_VECTOR(1 downto 0);
          alu_src : out STD_LOGIC;
          reg_dst : out STD_LOGIC);
end control;

architecture Behavioral of Control is
begin
  with instr select
     alu_op <= "00" when "00",   --AND
               "01" when "01",   --OR
               "10" when "10",   --ADD
               "11" when others; --ADDi
  
  with instr select
     alu_src <= '1' when "11",   --ADDi
                '0' when others;
       
  with instr select
     reg_dst <= '1' when "11",   --ADDi
                '0' when others;

end Behavioral;