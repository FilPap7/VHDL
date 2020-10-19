library ieee;
use ieee.std_logic_1164.all;

entity FullAdder4bitTB is
end FullAdder4bitTB;

architecture sim of FullAdder4bitTB is 

signal siga                 : std_logic_vector(3 downto 0) := "0001";
signal sigb                 : std_logic_vector(3 downto 0) := "0111";
signal sigsum               : std_logic_vector(3 downto 0);
signal sigcin               : std_logic := '0';
signal sigcout              : std_logic;
--signal carry1,carry2,carry3 : std_logic; 

begin 
    fa4b : entity work.FullAdder4bit(structural) port map(
        a => siga,
        b => sigb,
        sum => sigsum,
        cin => sigcin,
        cout => sigcout);

    -- TestBench process
    process is
    begin
        wait for 10 ns;
        siga <= "0001";
        wait for 10 ns;
        siga <= "0010";
        wait for 10 ns;
        siga <= "0011";
        wait for 10 ns;
        siga <= "0100";
        wait for 10 ns;
        siga <= "0101";
        wait on siga;
    end process;
end sim; 