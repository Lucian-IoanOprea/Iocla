%include "io.inc"

section .data
    n1    dd 2512
    n2    dd 41
    print_format db "n1/n2=%f", 10, 0

section .text
    global CMAIN

extern printf

CMAIN:
    ; TODO: incarca deimpartitul pe stiva FPU (incarcare ca intreg)

    ; TODO: impartire intreaga la impartitor

    ; TODO: afisare rezultat
    
    fild dword [n1]
    fidiv dword [n2]
    
    sub esp, 8
    fstp qword [esp]
    
    push print_format
    call printf
    add esp, 12
    
    xor eax, eax
    ret
