BITS 64

section .text
global memset

memset:
        xor rax, rax
        jmp loop

loop:
        cmp rdx, 0
        je end
        mov [rdi], sil
        sub rdx, 1
        inc rdi
        mov rax, rdi
        jmp loop

end:
        ret