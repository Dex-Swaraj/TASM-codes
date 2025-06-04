data segment
array1 db 10,20,70,50,25
largest db ?
data ends

code segment
assume cs:code,ds:data
start:
mov dx,data
mov ds,dx

mov cx,04h
LEA si,array1
mov al,[si]
up:inc si
cmp al,[si]
jnb next
mov al,[si]

next: dec cx
      jnz up
      mov largest,al
      mov ah,4ch
      int 21h
      code ends
      end start 

