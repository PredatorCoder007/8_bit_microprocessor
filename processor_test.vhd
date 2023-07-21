//TEST BENCH

library ieee;
USE IEEE.STD_LOGIC_1164.ALL;

entity processor_test is
end processor_test;

architecture behavior of processor_test is

    COMPONENT processor
    PORT(
         clk : IN std_logic;
         value : OUT std_logic_vector(7 downto 0)
         );
    END COMPONENT;

    --inputs
    signal clk : std_logic := '0';
   
    --outputs
    signal value : std_logic_vector(7 downto 0);
   
    --clock period defintions
    constant clk_period : time := 10 ns;

BEGIN
   
   --intiate test say, unit under test (uut)
   uut: processor PORT MAP (
           clk => clk,
           value => value
        );

   --clock process 
   clk_process : process
   begin
      clk <= '0';
      wait for clk_period/2;
      clk <= '1';
      wait for clk_period/2;
   end process;

   --stimulus process
   stim_proc: process
   begin
      --hold reset state for 100ns
      wait for 100ns;
      
      wait for clk_period*10;
  
      --insert stimulus here
      wait;
   end process;

END;
      
