--This file will represent a template
--file of the syntax of std_logic_vector
--varible type

--std_logic_vector represents a value
--which holds more than one bit

library ieee;
use ieee.std_logic_1164.all;

entity vector is
port(
--example of std_logic_vector syntax
    a,b : in std_logic_vector(1 downto 0);
    y   : out std_logic_vector(1 downto 0));
end entity;

architecture dataflow of vector is
--no component declaration is needed

--no signal declaration is needed

begin
    --VHDL compiler will automatically compare
    --required bits. If we need to compare the 
    --in a different way we need to use a 
    --structural implementation to match the bits
    --of Y via port map
    y <= a and b;

end dataflow;