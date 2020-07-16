%include "io.inc"

section .data

num dd 100


section .text
global CMAIN
CMAIN:
    ;write your code here
    mov ebp, esp
    xor eax, eax
    mov ecx,dword [num]
  
add_to_square:
    push ecx
    push eax
    mov eax, ecx
    mul ecx
    pop ecx
    add eax, ecx
    pop ecx
    
    loop add_to_square
    
    PRINT_UDEC 4, eax
    ret