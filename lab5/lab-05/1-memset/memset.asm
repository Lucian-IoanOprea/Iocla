%include "io.inc"

extern printf

%DEFINE LENGTH 20

section .data
    string db "Nunc tristique ante maximus, dictum nunc in, ultricies dui.", 0
    char db 'a'

section .text
global CMAIN
CMAIN:
    push ebp
    mov ebp, esp
    

    ; TODO: set al to the char to memset with;

    ; TODO: set edi to point to the destination string

    ; TODO: set ecx to the number of times stosb will be performed

    ; TODO: use a stosb loop to store to string; use no more than 1 instruction

    ; print the string
    cld
    mov al, [char]
    lea edi, [string]
    mov ecx, LENGTH
    rep stosb
   ; sub edi, string
    ;dec edi
    PRINT_STRING string

    xor eax, eax
    leave
    ret
