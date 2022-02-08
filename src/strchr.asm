BITS 64

section .text
global strchr

strchr:
        xor rax, rax
        jmp loop

loop:
        cmp byte[rdi], 0
        je end
        cmp byte[rdi], sil
        je end
        inc rdi
        mov rax, rdi
        jmp loop

end:
        ret