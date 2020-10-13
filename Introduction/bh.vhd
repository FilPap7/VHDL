--This is a file that represents the 
--default template of a simple VHDL file

--This will be an example of a behavioral
--implementation of an AND gate

--Libraries to be used
library ieee;
use ieee.std_logic_1164.all;

--Entity name is prefered to use the
--File name

entity bh is
--port Definition
port(
    --Example for in ports
    a,b : in std_logic;
    
    --example for out ports
    y   : out std_logic);
end entity;

--for the last port we must not 
--forget to always use the semicolon
--at the last parenthesis instead of
--the port itself.

--architexture definition
architecture behavioral of bh is
--Signal Declaration if needed
--No signal declaration is needed
--for a Dataflow AND gate
    
--begin is the key word to start
--the circuit. Note that the design
--runs in parallel and not serial
begin

--The behavioral architecture represents
--the truth table of the desired circuit


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
    
--end of circuit
end behavioral;
