--Simple NAND gate design
library IEEE;
use IEEE.std_logic_1164.all;

entity nand_gate is 
port(
    x : in std_logic;
    y : in std_logic;
    z : out std_logic);
end  nand_gate;

architecture dataflow of nand_gate is 
begin
    z <= x NAND y;
end dataflow; 