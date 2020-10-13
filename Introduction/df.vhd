--This is a file that represents the 
--default template of a simple VHDL file

--This will be an example of a dataflow
--implementation of an AND gate

--Libraries to be used
library ieee;
use ieee.std_logic_1164.all;

--Entity name is prefered to use the
--File name

entity df is
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
architecture dataflow of df is
--Signal Declaration if needed
--No signal declaration is needed
--for a Dataflow AND gate
    
--begin is the key word to start
--the circuit. Note that the design
--runs in parallel and not serial
begin

--The dataflow architecture represents
--the function(s) that define the 
--output 

    y <= a and b;

--end of circuit
end dataflow;

