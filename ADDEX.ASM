 data segment
 sum db ?
 data ends
code segment
assume cs:code,ds:data
start:
mov ax,data
mov ds,ax
mov al,99
add al,01
mov sum,al
mov ah,4ch
int 21h
code ends
end start
