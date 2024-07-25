// Program: Sum1ToN (R0 represents N)
// Computes R1 = 1 + 2 + 3 + ... + R0
// Usage: put a value >= 1 in R0
@i
M=1
@sum
M=0
(LOOP)
@i
D=M
@R0
D=D-M
@STOP
D;JGT
// sum = sum+i
@sum
D=M
@i
D=D+M
@sum
M=D
@i // i = i+1
M=M+1
@LOOP
0;JMP
(STOP)
@sum
D=M
@R1
M=D
(END)
@END
D;JMP