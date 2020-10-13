--Simple XOR gate design
library IEEE;
use IEEE.std_logic_1164.all;

entity xor_gate is 
port(
    x : in std_logic;
    y : in std_logic;
    z : out std_logic);
end  xor_gate;

architecture dataflow of xor_gate is 
begin
    z <= x xor y;
end dataflow; 