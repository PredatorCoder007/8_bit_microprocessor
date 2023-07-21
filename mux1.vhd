library IEEE;
use IEEE.STD_LOGIC_1164;

entity mux1 is
   Port ( a : in STD_LOGIC_VECTOR(1 downto 0);
          b : in STD_LOGIC_VECTOR(1 downto 0);
          sel: in STD_LOGIC;
          y : out STD_LOGIC_VECTOR(1 downto 0));
end mux1;

architecture Behavioral of mux0 is

begin
  process(sel, a, b)
  begin
    if (sel = '0') then
      y <= a;
    else
      y <= b;
    end if;
  end process;

end Behavioral;
