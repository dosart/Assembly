section .data

array: dq 0,1,2,3,4,5
array_length: dq 6

message: db "The sum of array is %ld", 10, 0

section .text
global main
extern printf

main:

    push rbp
    mov rbp, rsp

    ;rdi = &array
    mov rdi, array
    ;i = 0
    xor rcx, rcx
    ;sum = 0
    xor rax, rax
    ;array_length = 6
    mov rbx, [array_length] 

    while_loop:
        add rax, [rdi]
        add rdi, 8
        ;i += 1
        inc rcx
        ;if i <= array_length
        cmp rcx, rbx
        jle while_loop
    
    print_message:
        ;printf("The sum of array is %ld", rax)
        mov rdi, message
        mov rsi, rax
        xor rax, rax
        call printf

        mov rsp, rbp
        pop rbp
        ret

