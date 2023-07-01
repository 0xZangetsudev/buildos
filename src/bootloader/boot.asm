org 0x7C00
bits 16

%define ENDL 0x0D, 0x0A


# FAT12 header

jmp short start
nop

bdb_oem:                 db 'MSWIN4.1'         ; 8bytes
bdb_bytes_per_sector:    dw 512
bdb_sectors_per_cluster: db 1
bdb_reserved_sectors:    dw 1







start:
    jmp main

puts:
    ; save registers
    push si 
    push ax

.loop:
    lodsb  ;loadsnext character in al
    or al, al       ;verify if next character is null
    jz .done
    
    mov ah, 0x0E    ; call bios interrupt
    mov bh, 0       ; set page number to 0
    int 0x10
    jmp .loop

.done:
    pop ax
    pop si
    ret

main: 
    ;setup data segments
    mov ax, 0    ;can't write to ds/es directly
    mov ds, ax
    mov es, ax

    ;setup stack
    mov ss, ax
    mov sp, 0x7C00

    ;print message
    mov si, msg_hello
    call puts

    hlt

.halt:
    jmp .halt

msg_hello: db "Hello World!" , ENDL, 0

times 510-($-$$) db 0
dw 0AA55h
