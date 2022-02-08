BITS 64

section .text
global strlen

strlen:
        xor rax, rax
        jmp loop

loop:
        cmp byte[rdi], 0
        je end
        inc rax
        inc rdi
        jmp loop

end:
        ret