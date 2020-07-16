global main
extern printf

section .data
    message: db 'Hello, World', 10, 0

section .text

print_message:
    push ebp
    mov ebp, esp

    push message
    call printf
    add esp, 4

    leave
    ret

main:
    push ebp
    mov ebp, esp

    call print_message

    leave
    ret