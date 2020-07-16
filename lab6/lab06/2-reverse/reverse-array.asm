%include "io.inc"

section .data

%define ARRAY_LEN 7

    input dd 122, 184, 19, 242, 2630, 845, 911
    output times ARRAY_LEN dd 0

section .text
global CMAIN
CMAIN:
    mov ebp, esp; for correct debugging

    ; TODO push the elements of the array on the stack
    ; TODO retrieve the elements (pop) from the stack into the output array
    mov ecx, ARRAY_LEN
    ;xor ebx, ebx
   ; PRINT_UDEC 4, [input +4]
push_elements:
    push dword [input + 4 * (ecx - 1)]
    pop  dword [output + 4 * ebx]
    inc ebx
    loop push_elements
    
    PRINT_STRING "Reversed array:"
    NEWLINE
   
    xor ecx, ecx
print_array:
    PRINT_UDEC 4, [output + 4 * ecx]
    NEWLINE
    inc ecx
    cmp ecx, ARRAY_LEN
    jb print_array

    xor eax, eax
    ret
