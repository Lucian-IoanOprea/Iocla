%include "io.inc"

%define NUM 5

section .text
global CMAIN
CMAIN:
    mov ebp, esp

    ; TODO 1: replace every push by an equivalent sequence of commands
    
    ; pushing an array on the stack
    mov ecx, NUM
push_nums:
    sub esp, 4
    mov [esp], ecx
    loop push_nums

    sub esp, 4
    mov byte [esp], 0
    
    sub esp, 4
    mov dword [esp], "mere"
    
    sub esp, 4
    mov dword [esp], "are "
    
    sub esp, 4
    mov dword [esp], "Ana "


    PRINT_STRING [esp]
    NEWLINE
    NEWLINE

    ; TODO 2: print the stack in "address: value" format in the range of [ESP:EBP]
    mov eax, esp
print:
    cmp eax, ebp
    jg print_string
    
    PRINT_HEX 4, eax
    PRINT_STRING ": 0x"
    PRINT_DEC 1, [eax]
    NEWLINE
    
    add eax, 1
    jmp print
    
    ; TODO 3: print the string byte by byte
print_string:
    mov ecx, esp
    NEWLINE
    ; TODO 4: print the array element by element
print_string_byte_by_byte:
    cmp byte[ecx], 0
    je print_newline
    
    PRINT_CHAR [ecx]
    inc ecx
    jmp print_string_byte_by_byte
    ; restore the previous value of the EBP (Base Pointer)

print_newline:
    NEWLINE
    lea ebx, [esp]
    add ebx, 16
    mov ecx, NUM
print_elements:
    PRINT_DEC 4, [ebx]
    add ebx, 4
    loop print_elements
return:
    mov esp, ebp

    ; exit without errors
    xor eax, eax
    ret
