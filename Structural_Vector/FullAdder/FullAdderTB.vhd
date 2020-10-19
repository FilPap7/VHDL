Library ieee;
use ieee.std_logic_1164.all;

entity FullAdderTB is
end FullAdderTB;

architecture sim of FullAdderTB is

signal a        : std_logic := '0';
signal b        : std_logic := '0';
signal cin      : std_logic := '0';
signal sum,cout : std_logic;
begin
    --Testbench Signals
    I_FullAdder1 : entity work.FullAdder(dataflow) port map (
        a => a,
        b => b,
        cin => cin,
        sum => sum,
        cout => cout);
        
    --Testbench process
    process is
    begin
        wait for 10 ns;
        if (a = '0') and (b = '0') and (cin = '0')then
            a   <= '0';
            b   <= '0';
            cin <= '1';
        wait for 10 ns;
        elsif (a = '0') and (b = '0') and (cin = '1')then
            a   <= '0';
            b   <= '1';
            cin <= '0';
        wait for 10 ns;
        elsif (a = '0') and (b = '1') and (cin = '0')then
            a   <= '0';
            b   <= '1';
            cin <= '1';
        wait for 10 ns;
        elsif (a = '0') and (b = '1') and (cin = '1')then
            a   <= '1';
            b   <= '0';
            cin <= '0';
        wait for 10 ns;
        elsif (a = '1') and (b = '0') and (cin = '0')then
            a   <= '1';
            b   <= '0';
            cin <= '1';
        wait for 10 ns;
        elsif (a = '1') and (b = '0') and (cin = '1')then
            a   <= '1';
            b   <= '1';
            cin <= '0';
        wait for 10 ns;
        elsif (a = '1') and (b = '1') and (cin = '0')then
            a   <= '1';
            b   <= '1';
            cin <= '1';
        else 
            report "Error";
        end if;
        wait;
    end process;
end sim;

