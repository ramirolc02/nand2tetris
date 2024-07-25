// Program that computes R2 = R0 * R1
@MASK // last bit to 1
M=1
@R2 // res
M=0
(MUL_LOOP)
@MASK
D=M
@END 
D;JEQ
@MASK
D=M
@R1
D=D&M // if 1 add else shift 
@SHIFT
D;JEQ
@R0 // R2=R2+R0
D=M
@R2
M=D+M
(SHIFT) // should shift bits to right
@MASK
D=M
M=D+M    // Shift mask left (multiply by 2)
@R0
D=M
M=D+M    // Shift R0 left (multiply by 2)
@MUL_LOOP
0;JMP
(END)
@END
0;JMP

