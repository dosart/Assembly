section .data

    x: dq 10
    y: dq 9

    message1: db "x >= y", 10, 0
    message2: db "y >= x", 10, 0

section .text
    global main
    extern printf

main:
    push rbp
    mov rbp, rsp

    mov rax, [x]
    mov rbx, [y]
    ;if (x >= y)
    cmp rax, rbx
    jge greater
    ;else
    mov rdi, message2
    jmp print_message

greater:
    mov rdi, message1

print_message:
    mov rax, 0
    call printf

syscal_exit:
    mov rsp, rbp
    pop rbp

    mov rax, 60
    mov rdi, 0
    syscall

