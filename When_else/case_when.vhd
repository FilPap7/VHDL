--This is a file that represents the 
--default template of a case when
--statement in vhdl

--Libraries to be used
library ieee;
use ieee.std_logic_1164.all;

--Entity name is prefered to use the
--File name

entity case_when is
--port Definition
port(
    --Example for in ports
    a : in std_logic_vector(1 downto 0);
    
    --example for out ports
    y   : out std_logic);
end entity;


architecture arch of case_when is
--No signal declaration is needed

begin

    --process is a function in VHDL used 
    --to create sequential logic
    process
    begin
        case a is
            when => "00"
                y <= '0';
            when => "01"
                y <= '0';
            when => "10"
                y <= '0';
            when => "11"
                y <= '1';
            when others =>
                y <= 'U';
        end case;
    end process;
            
end test;
