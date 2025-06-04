data segment
divident dw -0200h
divisor db -90h
qout db 00h
remain db 00h
data ends

code segment
assume cs:code,ds:data
start:
mov dx,data
mov ds,dx

mov ax,divident
mov bl,divisor

idiv bl
mov qout,al
mov remain,ah

mov ah,4ch
int 21h

code ends
end start 
