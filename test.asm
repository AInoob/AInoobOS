[BITS 16]
[ORG 0x7c00]

jmp     Main

ClearScreen:
mov     ah,0
mov     al,3
int     10h
ret

PrintTill0:
lodsb
cmp     al,0
je      Return
mov     ah,0eh
int     10h
jmp     PrintTill0

PrintWithLength:
mov     ah,13h
int     10h
ret

Return:
ret

Main:
call    ClearScreen

mov     si,msg1
call    PrintTill0

cli
xor     ax,ax
mov     es,ax
mov     bp,msg2
sti
loop1:
mov     cx,9
mov     dh,13
mov     dl,13
call    PrintWithLength
inc     bl
jmp     loop1

cli
hlt


msg1:    db  "Hello, AInoob~~~",0Dh,0Ah,"The future is in your hand, so, what do you want to do?",0Dh,0Ah,0h
msg2:    db  "AInoob~~~"

times 510-($-$$) db 0
dw 0xAA55
