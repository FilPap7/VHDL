--This is a file that represents the 
--default template of an if else 
--statement in vhdl

--Libraries to be used
library ieee;
use ieee.std_logic_1164.all;

--Entity name is prefered to use the
--File name

entity if_else is
--port Definition
port(
    --Example for in ports
    a,b : in std_logic;
    
    --example for out ports
    y   : out std_logic);
end entity;


architecture test of if_else is
--No signal declaration is needed

begin

--the if else statement in VHDL is
--always used in a process and works
--in sequence like a program in a 
--standard programming language


    --process is a function in VHDL used 
    --to create sequential logic
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
    
end test;
