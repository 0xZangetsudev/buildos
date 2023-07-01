high level lang -> preprocessing + compilation (to assembly) -> assembler make an object file
containing machine code -> linking 

for assembly -> assemblers -> linking(not always the case I think, to check)



basic assembly:

Registers:
Registers are small storage locations within the processor that can hold data temporarily 
during program execution. Common registers include:

General-purpose registers (e.g., AX, BX, CX, DX): Used for general computations.
Index registers (e.g., SI, DI): Used for indexing and accessing memory.
Segment registers (e.g., CS, DS, ES, SS): Used for addressing memory segments.
Instruction pointer (IP): Stores the address of the next instruction to be executed.





Memory Access:
Assembly instructions allow you to read from and write to memory. Memory is typically accessed 
using memory addresses, which can be absolute or relative to registers or labels.



Arithmetic and Logical Operations:
Assembly provides various instructions to perform arithmetic and logical operations on data, such as:
Addition (add), subtraction (sub), multiplication (mul), and division (div).
Bitwise operations like logical AND (and), logical OR (or), and logical NOT (not).



Control Flow:
Assembly instructions control the flow of execution in a program. Common control flow instructions include:

Jump (jmp): Unconditionally transfers control to a specified memory address or label.
Conditional jumps (je, jne, jl, jg, etc.): Transfer control based on a specified condition.
Compare (cmp): Compares two values and sets flags for conditional jumps.



Input/Output:
Assembly programs can interact with input and output devices, such as reading from the keyboard 
or writing to the screen or files. These operations are typically performed using 
specific interrupt-based instructions.




-> Need to go deeper into registers, memory, machine code, bits
