disp macro msg
mov ah,09h
lea dx,msg
int 21h
endm

data segment
str1 db "welcome$"
str2 db 20 dup('$')
msg1 db "orginal string :$"
msg2 db "reverse string :$"
newl db 10,13 ,"$"
data ends

code segment
assume cs:code,ds:data
start:
 mov dx,data
 mov ds,dx
 mov es,dx
 mov cx,0h
 lea si,str1
 
  up: mov al,[si]
      cmp al,'$'
       je next
      mov bx,[si]
      push bx
      inc si
      inc cx
      jmp up

 
 next: dec si
       lea di,str2
      up2: mov al,[si]
           mov [di],al
          inc di
          dec si 
         loop up2 

         disp msg1
         disp str1
         disp newl
         disp msg2
         disp str2
         mov ah,4ch
         int 21h
         code ends
         end start 

