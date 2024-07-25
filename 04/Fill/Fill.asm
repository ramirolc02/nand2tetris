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
@SCREEN_START // address = SCREEN
M=D
@8192
D=A
@SCREEN
D=D+A
@SCREEN_END // screen_end = SCREEN + 8192
M=D

(MAIN_LOOP)
    @KBD
    D=M         // Read keyboard input
    @FILL_BLACK
    D;JNE       // If key pressed, jump to FILL_BLACK
    @FILL_WHITE
    0;JMP       // Otherwise, jump to FILL_WHITE

()





