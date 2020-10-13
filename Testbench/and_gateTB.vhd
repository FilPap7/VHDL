--Example TestBench
--In many cases in order to
--smoothly run the TestBench
--you might need to remove 
--Modelsim's auto optimization
--feature before the simulation

library IEEE;
use IEEE.std_logic_1164.all;

entity and_gateTB is 
end  and_gateTB;

architecture tb of and_gateTB is 
--Tested component Declaration
component and_gate is
port(
    x,y : in std_logic;
    z   : out std_logic);
end component;

--signal declaration
--The signals in testbenches 
--are connected to the ports
--of the tested component in
--order to simulate the results
signal ina,inb,output: std_logic;

begin

--create the port map for
--our component
    TB: and_gate port map(
        x => ina,
        y => inb,
        z => output
    );

    process
    begin
        --test1
        ina     <= '0';
        inb     <= '0';
        wait for 20 ns;

        --test2
        ina <= '0';
        inb <= '1';
        wait for 20 ns;

        --test3
        ina <= '1';
        inb <= '0';
        wait for 20 ns;

        --test4
        ina <= '1';
        inb <= '1';
        wait for 20 ns;

    end process;

end tb; 