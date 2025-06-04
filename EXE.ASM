

code segment
assume  cs:code,
start:


mov al,1
mov bl,-1
imul bl
mov ah, 4ch
int 21h

        code ends
        end start
