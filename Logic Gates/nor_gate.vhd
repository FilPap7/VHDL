--Simple NOR gate design
library IEEE;
use IEEE.std_logic_1164.all;

entity nor_gate is 
port(
    x : in std_logic;
    y : in std_logic;
    z : out std_logic);
end  nor_gate;

architecture dataflow of nor_gate is 
begin
    z <= x NOR y;
end dataflow; 