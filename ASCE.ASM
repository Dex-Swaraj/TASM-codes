data segment
 arr1 db 5,7,8,2
  data ends

code segment
assume cs:code,ds:data
start:
mov dx,data
mov ds,dx
mov cx,04h

up1: mov si,OFFSET arr1
     mov dx,cx 

up2: 
       mov al,[si]
       cmp al,[si+1]
     jna next 
     xchg al,[si+1]
     mov [si],al
next:
       inc si
       dec dx 
       jnz up2
       loop up1
         
          
        
int 21h
code ends
end start
