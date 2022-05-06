;
; -+~
;
; about this :
; I wrote dummy interpreter of my own jokes programming language
;
; note :
; Not tested, I'm lazy to debug right now

org 100h

mov bx,x
input:
mov ah,01h
int 21h 
cmp al,20h
je cetak
cmp al,'~'
je get_char
cmp al,'-'
je plus1
cmp al,'+'
je plus2
jmp input
plus1:
inc cx
plus2:
inc cx
inc cx
get_char:
xlatb
cetak:
xor ah,ah
int 29h
ret
x:db "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
