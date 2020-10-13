--This is a file that represents the 
--default template of a when else
--statement in vhdl

--Libraries to be used
library ieee;
use ieee.std_logic_1164.all;

--Entity name is prefered to use the
--File name

entity when_else is
--port Definition
port(
    --Example for in ports
    a,b : in std_logic;
    
    --example for out ports
    y   : out std_logic);
end entity;


architecture test of when_else is
--No signal declaration is needed

begin

--the when else statement in VHDL is
--used as a multiplexer in vhdl


    --process is a function in VHDL used 
    --to create sequential logic
    y <=    '0' when a = '0' and b = '0' else
            '0' when a = '0' and b = '1' else
            '0' when a = '1' and b = '0' else
            '1' when a = '1' and b = '1';
            
end test;
