--This a file that represents a
--1-bit full adder

library ieee;
use ieee.std_logic_1164.all;

entity FullAdder is
port(
    a,b,cin: in std_logic;
    sum,cout: out std_logic
);
end FullAdder;

architecture dataflow of FullAdder is

begin 
    process (a,b,cin) is
    begin
        sum <= a xor b xor cin;
        cout <= (a and b) or (a and cin) or (b and cin);
    end process;
end dataflow; 