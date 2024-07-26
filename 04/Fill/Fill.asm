//
//  Algorithm:
//  Execute an infinite loop that listens to the keyboard input
//  When a key is pressed (any key), execute code that writes "black" in every pixel
//  When no key is pressed, execute code that writes "white" in every pixel
//  SCREEN = 16384 (predefined symbol)
//  Base address: KBD = 24576 (predefined symbol)
//  Tip: This program requires working with pointers.
//  Screen occupies 8192 registers (16 bit each)

@SCREEN
D=A
@screen_start // address = SCREEN
M=D
@8192
D=A
@SCREEN
D=D+A
@screen_end // screen_end = SCREEN + 8192
M=D

(MAIN_LOOP)
@KBD
D=M         // Read keyboard input
@FILL_BLACK
D;JNE       // If key pressed, jump to FILL_BLACK
@FILL_WHITE
0;JMP       // Otherwise, jump to FILL_WHITE

(FILL_BLACK)
@color
M=-1 // Paint black
@FILL
0;JMP
(FILL_WHITE)
@color
M=0 // Paint white
@FILL
0;JMP

(FILL)
@screen_start // Dont move 
D=M
@address // set and reset address to start 
M=D

(FILL_LOOP) // paint from screen_start to screen_end
@address
D=M
@screen_end
D=D-M
@MAIN_LOOP
D;JGE // address should reach to 8192 and stop

@color
D=M
@address
A=M
M=D // paint RAM[address]
@address
M=M+1 // add 1 to address
@FILL_LOOP
0;JMP

(END)
@END
0;JMP





