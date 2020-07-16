%include "io.inc"

section .text
global CMAIN
CMAIN:
    push ebp
    mov ebp, esp

    mov eax, 1025   ; to be broken down into powers of 2
    mov ebx, 1      ; stores the current power

    ; TODO - print the powers of 2 that generate number stored in EAX
    print:
     PRINT_UDEC 4, ebx
     NEWLINE
     shl ebx, 1
     cmp eax, ebx
     ;mov eax, 211
     jg print
 
    leave
    ret
