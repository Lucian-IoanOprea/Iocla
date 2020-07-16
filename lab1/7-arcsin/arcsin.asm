%include "io.inc"

extern printf

section .data
    valoare_sin dq 0.123
    max    dq   1.57079632679
    min    dq   0.0
    eroare dq   0.0005

    med    dq   0.0
    format db   "Unghi gasit: %.20f", 10, 0

    sin    dq   0.0

section .text
global CMAIN
CMAIN:

repeat:
    ; med = (max + min) / 2
    push 2
    fld qword [max]
    fadd qword [min]
    fidiv dword [esp]
    fst qword [med]
    add esp, 4

    ; TODO sin(med) - valoarea med este deja pe stiva

    ; TODO stocare rezultat in variabila sin

    ; TODO comparatie cu valaorea cautata (valoare_sin)

    ; TODO ajustare interval in functie de rezultatul comparatiei (min=med sau max=med)

    ; TODO verificare eroare (abs(valoare_sin-sin) < eroare)

    ; TODO loop daca eroarea este mai mare decat cea maxima

    ; TODO afisare rezultat. Valoarea trebuie sa fie aproximativ 0.123312275

    xor eax, eax
    ret
