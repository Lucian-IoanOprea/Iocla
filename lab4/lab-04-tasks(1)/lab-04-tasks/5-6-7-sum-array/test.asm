%include "io.inc"


section .data

table1 dd times 20 0

section .text
global CMAIN
CMAIN:
    ;write your code here
    mov ebp, esp
    xor eax, eax
    mov eax, table1
    
    PRINT_UDEC 4, eax
    ret