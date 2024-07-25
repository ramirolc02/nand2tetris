//Example 3: Set the first n words
//of the memory block beginning in
//address base to –1
//Inputs: R0 (base) and R1 (n)
@i
M=0
(LOOP) // if (i < r1 value)  
@i
D=M
@R1
D=D-M
@END
D;JEQ
@i
D=M
@R0
A=D+M
M=-1
@i
M=M+1
@LOOP
0;JMP
(END)
@END
0;JMP