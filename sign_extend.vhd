library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity sign_extend is
   Port ( data_in : in STD_LOGIC_VECTOR(1 downto 0);
          data_out : out STD_LOGIC_VECTOR(7 downto 0);
end sign_extend;

architecture Behavioral of sign_extend is
 
begin
  data_out <= "000000" & data_in;
end Behavioral;