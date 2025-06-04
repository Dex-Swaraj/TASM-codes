data segment
divident dd 00009000h
divisor dw 9000h
qout dw 0000h
remain dw 0000h
data ends

code segment
assume cs:code,ds:data
start:
mov dx,data
mov ds,dx

mov ax,WORD PTR[divident]
mov dx,WORD PTR[divident+4]
div bx
mov qout,ax
mov remain,dx

mov ah,4ch
int 21h

code ends
end start 
