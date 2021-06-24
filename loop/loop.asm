section .data

message: db "The sum of 0 to %ld is %ld", 10, 0


section .text
global main
extern printf

main:
    push rbp
    mov rbp, rsp

    mov rax, 0 ; sum = 0
    mov rcx, 0 ; i = 0
    mov rbx, 5 

    ;while i <= 5
    while_loop:
        ;sum = sum + i
        add rax, rcx
        ;i = i + 1
        inc rcx
        cmp rcx, rbx
        jle while_loop
    
    print_message:
        ;printf("The sum of 0 to %ld is %ld", rbx, rcs)
        mov rdi, message
        mov rsi, rbx
        mov rdx, rax
        mov rax, 0
        call printf

        mov rsp, rbp
        pop rbp
        ret
