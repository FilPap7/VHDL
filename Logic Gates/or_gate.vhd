--Simple OR gate design
library IEEE;
use IEEE.std_logic_1164.all;

entity or_gate is 
port(
    x : in std_logic;
    y : in std_logic;
    z : out std_logic);
end  or_gate;

architecture dataflow of or_gate is 
begin
    z <= x or y;
end dataflow; 