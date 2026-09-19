section .data
    mensagem db "Hello, Assembly!", 10, 0

section .text
    global main
    extern printf

main:
    sub rsp, 40

    lea rcx, [rel mensagem]
    call printf

    add rsp, 40
    xor eax, eax
    ret