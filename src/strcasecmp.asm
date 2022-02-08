BITS 64

section .text
global strcasecmp

strcasecmp:
        xor rax, rax
        xor r10b, r10b
        xor r11b, r11b
        xor rbx, rbx
        jmp loop

increment:
        inc rsi
        inc rdi
        jmp loop

check:
        cmp r10b, r11b
        je increment
        sub r11b, 32
        cmp r10b, r11b
        je increment
        mov r11b, BYTE [rsi]
        add r11b, 32
        cmp r10b, r11b
        je increment
        jmp end

loop:
        mov r10b, BYTE [rdi]
        mov r11b, BYTE [rsi]
        cmp r10b, 0
        je end
        cmp r11b, 0
        je end
        jmp check
        jmp end

end:
        movzx rax, r10b
        movzx rbx, r11b
        sub rax, rbx
        ret