--This is a file that represents the 
--default template of a simple VHDL file

--This will be an example of a structural
--implementation of an AND3 gate AND3 gate
--is an AND logic gate with 3 inputs and 
--one output. This could easily be generated 
--by using dataflow but in order to get the
--proper idea of structural design we will use
--2 AND gates in order to create the AND3 gate


--Libraries to be used
library ieee;
use ieee.std_logic_1164.all;

--Entity name is prefered to use the
--File name

entity struc is
--port Definition
port(
    --Example for in ports
    a,b,c : in std_logic;
    
    --example for out ports
    y     : out std_logic);
end entity;

--for the last port we must not 
--forget to always use the semicolon
--at the last parenthesis instead of
--the port itself.

--architexture definition
architecture structural of struc is
--Component Declaration
component df is
    port(
        a,b : in std_logic;
        y   : out std_logic);
end component;

component bh is
    port(
        a,b : in std_logic;
        y   : out std_logic);
end component;

--Signal Declaration 
signal out1 : std_logic;
    
--begin is the key word to start
--the circuit. Note that the design
--runs in parallel and not serial
begin

--The structural architecture represents
--the connectivity of the circuit

--a and b will be connected to the
--dataflow and gate we created and the
--result will be stored in out1
DFA : df  port map(
    a => a, 
    b => b,
    y => out1);

--out1 and c will be connected to the
--behavioral and gate we created and
--the result will be stored in y
BHA : bh  port map(
    a => out1 ,
    b => c ,
    y => y);

--end of circuit
end structural;
