data segment
array1 db 10,20,30,40,50

sum dw ?
data segment

code segment
assume cs:code,ds:data
start:
mov dx,data
mov ds,dx

mov ax,0000h
mov si,OFFSET array1
mov cx,04h
mov al,[si]
up: inc si
add al,[si]
jnc next
inc ah

next: dec cx
      jnz up
      mov sum,ax
      mov ah,4ch
      int 21h
      code ends
      end start 
