--This is a template file introducing
--the finite state machine implementation
--in VHDL

--Library Declaration
Library ieee;
use ieee.std_logic_1164.all;

--entity declaration
entity fsm is
port(
    output : out std_logic_vector(1 downto 0);
);
end entity;

architecture arch of fsm is
--no component declaration is needed

--signal declaration
--(clk signal will be helpful to examine the FSM)
signal clk : std_logic := '0';
--(FSM signal declaration following)
--build the FSM
type state_type is (s0 ,s1 ,s2 ,s3);
--state holder
signal state : state_type;

begin
    --clk process
    process
    begin
        clk <= not clk;
        wait for 20 ns;
    end process;

    process(clk)
    begin 
        if(rising_edge(clk)) then 
            case state is
                when s0 =>
                    output  <= "00";
                    state   <= s1;
                when s1 =>
                    output  <= "01";
                    state   <= s2;
                when s2 =>
                    output  <= "10";
                    state   <= s3;
                when s3 =>  
                    output  <= "11";
                    state   <= s0;
            end case;
        end if;
    end process;
    
end arch;