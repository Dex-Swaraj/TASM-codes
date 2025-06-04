data segment
a db 20h
b db 16h
res dw 0000h
data ends

code segment
assume cs:code,ds:data
start:
mov dx,data
mov ds,dx
mov al,a
mov bl,b
mul bl
mov res,ax
mov ah,4ch
int 21h

code ends
end start
