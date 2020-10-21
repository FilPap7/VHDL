library ieee;
use ieee.std_logic_1164.all;

entity vectorTB is
end entity;

architecture tb of vectorTB is

component vector is
port(
    a,b : in std_logic_vector(1 downto 0);
    y   : out std_logic_vector(1 downto 0));
end component;

signal in1 , in2 , out1 : std_logic_vector(1 downto 0);

begin
    uut: vector port map(
        a => in1,
        b => in2,
        y => out1
    );

    process
    begin
        in1 <= "00";
        in2 <= "00";
        wait for 20 ns;
        in1 <= "00";
        in2 <= "01";
        wait for 20 ns;
        in1 <= "00";
        in2 <= "10";
        wait for 20 ns;
        in1 <= "01";
        in2 <= "11";
        wait for 20 ns;
        in1 <= "01";
        in2 <= "00";
        wait for 20 ns;
        in1 <= "01";
        in2 <= "01";
        wait for 20 ns;
        in1 <= "01";
        in2 <= "10";
        wait for 20 ns;
        in1 <= "01";
        in2 <= "11";
        wait for 20 ns;
        in1 <= "10";
        in2 <= "00";
        wait for 20 ns;
        in1 <= "10";
        in2 <= "01";
        wait for 20 ns;
        in1 <= "10";
        in2 <= "10";
        wait for 20 ns;
        in1 <= "10";
        in2 <= "11";
        wait for 20 ns;
        in1 <= "11";
        in2 <= "00";
        wait for 20 ns;
        in1 <= "11";
        in2 <= "01";
        wait for 20 ns;
        in1 <= "11";
        in2 <= "10";
        wait for 20 ns;
        in1 <= "11";
        in2 <= "11";
        wait for 20 ns;
    end process;
end tb;
        
        