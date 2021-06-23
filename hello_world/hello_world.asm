
section .data

    message: db "Hello, World!", 10, 0
    message_lenght: equ $  - message

section .text
    global main

;syscal write
main:
    mov rax, 1
    mov rdi, 1
    mov rsi, message
    mov rdx, message_lenght
    syscall

;syscal exit
    mov rax, 60
    mov rdi, 0
    syscall
