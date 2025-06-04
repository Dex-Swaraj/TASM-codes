
data Segment
string1 db 99,12, 56, 45, 36
data ends

code Segment
assume cs:code,ds: data
start:
mov dx, data
mov ds,dx
mov ch, 04h
up2:
mov cl,04h
LEA si,string1
up1:
mov al, [si]
mov bl, [si+1]
cmp al,bl
jc down
mov dl, [si+1]
Xchg [si],dl
mov [si+1],dl

down:
inc si
dec cl
jnz up1
dec ch
jnz up2
mov ah, 4ch
int 21h
 code ends
 end start 
