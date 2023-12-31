// register module

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Registers is
   
   Port ( clk : in STD_LOGIC;
          rs_addr : in STD_LOGIC_VECTOR(1 downto 0);
          rt_addr : in STD_LOGIC_VECTOR(1 downto 0);
          rd_addr : in STD_LOGIC_VECTOR(1 downto 0);
          wr_data : in STD_LOGIC_VECTOR(7 downto 0);
          rs : out STD_LOGIC_VECTOR(7 downto 0);
          rt : out STD_LOGIC_VECTOR(7 downto 0);

end Registers;

architecture Behavioral of Registers is
  type registerFile is array(0 to 3) of std_logic_vector(7 downto 0);
    signal reg: registerFile := (
     "11000010"
     "11010101"
     "11101011"
     "01000111"
   );

begin

  process(clk)

begin
 
 if falling_edge(clk) then
  reg(to_integer(unsigned(rd_addr))) <= wr_data;

end if;

end process;
  
rs <= reg(to_integer(unsigned (rs_addr)));
rt <= reg(to_integer(unsigned (rt_addr)));
  


end Behavioral;

