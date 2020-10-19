Read the examples preferably in this order:
 1)introduction
 2)logicGates
 3)process
 4)if_else
 5)when_else
 6)testbench
 7)std_logic_vector
 8)structoral_vector
 9)case_when
10)fsm

Note to me:
std_logic_vector , case-when , fsm => untested.

    Note that it is best if you clone the parent folder and
modify every circuit as a project of your own in order not to
lose the template.

    One hint in order to run your tests in correct manner
(in Modelsim),try to compile your hdl files without optimisation 
for the troubleshooting. transcript argument call is (-O0) example:
"vcom 'examplefile.vhd' -O0"