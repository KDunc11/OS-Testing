; Simple boot sector 
loop:
    jmp loop

times 510-($-$$) db 0 ; paading 510 bytes of 0's

dw 0xaa55 ; last two bytes of 512 bytes for the boot sector, indicating the end of the boot block