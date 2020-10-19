--This is a file that represents a
--4 bit full adder by using 4x 1bit full adders

library ieee;
use ieee.std_logic_1164.all;

entity FullAdder4bit is
port(
    a,b: in std_logic_vector(3 downto 0);
    cin: in std_logic;
    sum: out std_logic_vector(3 downto 0);
    cout: out std_logic
);
end FullAdder4bit;

architecture structural of FullAdder4bit is 

component FullAdder 
port(
    a,b,cin: in std_logic;
    sum,cout: out std_logic);
end component;

signal carry1,carry2,carry3: std_logic; 

begin 
--in order to match the inputs and outputs of a std_logic_vector
--we use the name of the std_logic_vector with parenthesis to 
--use the exact bit to use
FA0 : FullAdder port map (a(0),b(0),cin,sum(0),carry1);
FA1 : FullAdder port map (a(1),b(1),carry1,sum(1),carry2);
FA2 : FullAdder port map (a(2),b(2),carry2,sum(2),carry3);
FA3 : FullAdder port map (a(3),b(3),carry3,sum(3),cout);

end structural; 