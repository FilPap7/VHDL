library ieee;
use ieee.std_logic_1164.all;

entity case_whenTB is
end entity;

architecture tb of case_whenTB is

component case_when is
port(
    a   : in std_logic_vector(1 downto 0);
    y   : out std_logic);
end component;

signal a : std_logic_vector(1 downto 0);
signal b : std_logic;

begin
UUT: case_when port map(
    a => a,
    y => b
);
    
    process
    begin
        a <= "00";
        wait for 20 ns;
        a <= "01";
        wait for 20 ns;
        a <= "10";
        wait for 20 ns;
        a <= "11";
        wait for 20 ns;
    end process;

end tb;
