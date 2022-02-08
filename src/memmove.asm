BITS 64

section .text
global memmove

memmove:
        xor rax, rax
        xor r9b, r9b
        jmp loop

loop:
        cmp rdx, 0
        je end
        mov r9b, [rsi]
        mov [rdi], r9b
        sub rdx, 1
        inc rsi
        inc rdi
        mov rax, rdi
        jmp loop

end:
        ret