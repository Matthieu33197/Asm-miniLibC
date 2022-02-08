BITS 64

section .text
global strcmp

strcmp:
        xor rax, rax
        xor r10b, r10b
        xor rbx, rbx
        jmp loop

loop:
        cmp BYTE [rdi], 0
        je end
        cmp BYTE [rsi], 0
        je end
        mov r10b, BYTE [rsi]
        cmp r10b, BYTE [rdi]
        jne end
        inc rdi
        inc rsi
        jmp loop

end:
        movzx rax, BYTE [rdi]
        movzx rbx, BYTE [rsi]
        sub rax, rbx
        ret