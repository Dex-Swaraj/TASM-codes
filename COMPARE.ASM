 data segment
 str1 db "nice$"
 str2 db "good$"
 msg1 db "equal"
 msg2 db "not"
cout_s db 0000h
cout_d db 0000h
  data ends

code segment
assume cs:code,ds:data
start:

mov cx,0000h
lea si,str1
up1: mov al,[si]
     cmp al,"$"
     je next 
     inc si 
     inc cout_s
     jmp up1 

next: lea di,str2
   up2: mov al,[di]
       cmp al,"$"
     je next2 
     inc di 
     inc cout_d
     jmp up2

       lea si,cout_s
       lea di,cout_d
    next2:
          mov al,[si]
          mov bl,[di]
          cmp al,bl
          jne nex
          
          inc si
          inc di
          jmp next2          
nex: 
int 21h
code ends
end start
