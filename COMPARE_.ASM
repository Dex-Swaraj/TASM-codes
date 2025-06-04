


data segement

str_s db 'COMPUTER$'
str_d db 'computer$'
Count_s db 0
Count d db 0
Msg1 db 'Strings are Same$'
msg2 db 'Strings are Not Same$'

data ends 

code segement
assume cs:code,ds:data
start:
    mov dx, data 
    mov ds, dx
mov si, offset str s
next: mov al, [si]
cmp al, '$'
je exit
inc si
inc count_s
jmp next
exit:
    
mov si, offset str_d
next1: mov al,[si]
cmp al,'$'
je exits
inc si
inc count_d
jmp next1
exits:

mov al,count_s
cmp al,count_d 
jne exit2
cld

mov ch,0
mov cl,count_s
mov si,offset str_s
mov di,offset str_d
Up:
Cmpsb
Jnz exit2
loop up
mov ah,09h
lea dx,msg1

int 21h
jmp exit3
mov ah,09h
lea dx,msg2
int 21h
exit3:
mov ah,4ch

int 21h
code ends 
end start
