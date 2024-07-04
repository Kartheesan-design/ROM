# 16x4 ROM (Read Only Memory)

=> Read Only Memory (ROM) is a type of non-volatile memory used in computers and other electronic devices. Data stored in ROM cannot be electronically modified after the manufacture of the memory device.

=> In this context, the ROM is used to store predefined data which can be read but not written to. This is useful in applications where certain data is constant and does not need to be changed.

=> The ROM in this code is a 16x4 ROM, meaning it can store 16 4-bit values, or in other words, it has 16 memory locations, each capable of storing a 4-bit value.

Module Declaration: The module keyword is used to declare a module named rom. It has three inputs (addr(//Address), en(//Enable), clk(//Clock)) and one output (data). The addr is a 4-bit input representing the address lines, en is the enable signal, and clk is the clock signal. The data is a 4-bit output.

Memory Declaration: reg [3:0] mem[15:0]; declares a 4-bit wide, 16-deep memory array mem.

Always Block: The always @(posedge clk) block is a sequential block that gets executed at the positive edge of the clock. If the enable signal en is high, the data from the memory location specified by addr is loaded into data. If en is low, data is set to an undefined value (4'bxxxx).

Initial Block: The initial block is used to initialize the memory array mem with values from 4'b0000 to 4'b1111.

From the wave form it is very clear that when ever en(Enable) is high,the data from the memory location specified by addr is loaded into data.
For example:
At time = 10,000ns the en(Enable) is high the hexadecimal value a(decimal equivalent = 10) is loaded  in the output data.
Where As at time = 30,0000ns the en(Enable) is low so the value 8 in addr is not loaded into the data so we got the output of x.
