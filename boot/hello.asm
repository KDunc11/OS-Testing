; Boot sector that prints Hello to the screen using a BIOS routine

mov ah, 0x0e ; Scrolling teletype BIOS routine => prints character and moves cursor over, ready to print another character

; Prints "Hello" to the screen character by character

mov al, 'H'
int 0x10

mov al, 'e'
int 0x10

mov al, 'l'
int 0x10

mov al, 'l'
int 0x10

mov al, 'o'
int 0x10

; Padding for the boot sector
times 510-($-$$) db 0
dw 0xaa55