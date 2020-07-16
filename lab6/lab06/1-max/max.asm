%include "io.inc"

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging
    ; cele doua numere se gasesc in eax si ebx
    mov eax, 2
    mov ebx, 4

    ; TODO: aflati maximul folosind doar o instructiune de salt si push/pop
    cmp eax, ebx
    jge print
    
    push ebx
    mov ebx, eax
    pop eax   
    
print:
    PRINT_DEC 4, eax ; afiseaza maximul
    NEWLINE
    
    ret
