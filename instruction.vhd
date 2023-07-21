//instruction module

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity instruction is
     
     port( inst addr : in STD_LOGIC_VECTOR (2 downto 0);
           op : out STD_LOGIC_VECTOR (1 downto 0);
           rs_addr : out STD_LOGIC_VECTOR (1 downto 0);
           rt_addr : out STD_LOGIC_VECTOR (1 downto 0);
           rd_addr : out STD_LOGIC_VECTOR (1 downto 0);

end instruction;

architecture Behavioral of instruction is

type instruction_set is array (0 to 7) of STD_LOGIC_VECTOR(7 downto 0);
   constant  instr : instruction_set := (
       "01000010",
       "11010101",
       "11101011",
       "01000111",
       "00000000",
       "00000000");

begin
  op <= instr(to_integer (unsigned(instr_addr)))(7 downto 6);
  rs_addr <= instr(to_integer(unsigned(instr_addr)))(5 downto 4);
  rt_addr <= instr(to_integer(unsigned(instr_addr)))(3 downto 2);
  rd_addr <= instr(to_integer(unsigned(instr_addr)))(1 downto 0);





end Behavioral;


