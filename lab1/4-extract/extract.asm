%include "io.inc"

section .data
    n    dq 421.9461
    print_format1 db "Partea intreaga: %d", 10, 0
    print_format2 db "Partea fractionara: %f", 10, 0
    
    parte_intreaga dq 0
section .text
global CMAIN

extern printf
CMAIN:
    mov ebp, esp; for correct debugging

    ; TODO Incarca numarul pe stiva FPU.

    ; TODO Foloseste instructiunea fisttp pentru a salva valoarea
    ; cu trunchiere la intreg.

    ; TODO Afiseaza partea intreaga.

    ; TODO Reincarca numarul pe stiva FPU.

    ; TODO Foloseste instructiunea fisub pentru a scadea din n (varful
    ; stivei FPU) partea intreaga obtinuta anterior.

    ; TODO Extrage partea fractionara si afiseaza rezultatul
    fld qword [n]
    fisttp dword[parte_intreaga]
    
 
    push dword[parte_intreaga]
    push print_format1
    call printf
    add esp, 8
    
    fld qword [n]
    fisub dword[parte_intreaga]
    
    sub esp, 8
    fstp qword[esp]
    push print_format2
    call printf
    add esp, 12
    
    xor eax, eax
    ret
