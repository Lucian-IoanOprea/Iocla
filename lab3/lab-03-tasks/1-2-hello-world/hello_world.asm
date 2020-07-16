%include "io.inc"

section .data
    myString: db "Hello, World!",0
    myString1: db "Goodbye, World!",0

section .text
global CMAIN
CMAIN:
    mov ecx, 6                 ; N = valoarea registrului ecx
    mov eax, 3
    mov ebx, 1
    cmp eax, ebx
    jg print                 ; TODO1: eax > ebx?
    ret
print:
    PRINT_STRING myString
    NEWLINE
    sub ecx, 1
    jg print
    PRINT_STRING myString1
                               ; TODO2.2: afisati "Hello, World!" de N ori
                               ; TODO2.1: afisati "Goodbye, World!
    ret
