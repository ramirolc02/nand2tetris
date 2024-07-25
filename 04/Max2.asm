// R2 = R1
// if(R1>=R0) -> End 
// else     R2=R0
@R1
D=M
@R2
M=D
@R0
D=D-M
@END
D;JGE
@R0        // R1 < R0 case
D=M        
@R2        
M=D 
(END)
@END
D;JMP