data segment
a dw 1200h
b dw 67A6h
mult dd 00000000h
data ends

code segment
assume cs:code,ds:data
start:
mov dx,data
mov  ds,dx
mov ax,a
mov bx,b
mov WORD PTR[mult],ax
mov WORD PTR[mult +2],bx
mov ah,4ch
int 21h

code ends
end start


