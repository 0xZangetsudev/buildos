org 0x7C00
bits 16

start:
    jmp main

puts:
    ; save registers
    push si 
    push ax

.loop:
    lodsb  ;loadsnext character in al
    or al, al       ;verify if next character is null

main: 
    ;setup data segments
    mov ax, 0    ;can't write to ds/es directly
    mov ds, ax
    mov es, ax

    ;setup stack
    mov ss, ax
    mov sp, 0x7C00

    hlt

.halt:
    jmp .halt

times 510-($-$$) db 0
dw 0AA55h
