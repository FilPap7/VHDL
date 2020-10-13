--This is a file that represents the 
--a process in a vhdl file

--Libraries to be used
library ieee;
use ieee.std_logic_1164.all;

--Entity name is prefered to use the
--File name

--There will be no ports in this
--Entity because this is an example
--to explicitly help understand the
--use of Processes

entity proces is
end entity;

--architexture definition
architecture test of proces is
--Signal Declaration
signal a,b,y,clk : std_logic;

--Constants
constant clk_period : time := 20 ns;

begin

    --process is a function in VHDL used 
    --to create sequential logic. It can
    --be called with or without a sensitivity
    --list. Everything inside the process
    --runs in sequential logic. If the 
    --process does not have a sensitivity list
    --then it will repeat itself after completing
    --its execution. If sensitivity list is
    --used then the process will start when
    --anything inside it changes state.



    --With Sensitivity list:
    process(a , b)
    begin
        if (a = '0' and b = '0') then
            y <= '0';

        elsif (a = '0' and b = '1') then
            y <= '0';

        elsif (a = '1' and b = '0') then
            y <= '0';

        elsif (a = '1' and b = '1') then
            y <= '1';

        else 
            y <= 'U';

        end if;
    end process;

    --Without Sensitivity List:
    process
    begin
        clk <= '0';
        wait for clk_period / 2;
        
        clk <= '1';
        wait for clk_period / 2;
    end process;
    
--end of circuit
end test;
