 data segment
 a db 10h
 b db 5AH
 sum db ?
 data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov al,a
mov bl,b
add al,bl
mov sum,al
mov ah,4ch
int 21h
code ends
end start

