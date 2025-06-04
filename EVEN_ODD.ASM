data SEGMENT
arry db 10h,20h,35h,67h,09h
even1 DB ?
odd DB  ?
data ENDS
code SEGMENT
ASSUME CS:code,DS:data
START:
MOV dx,data
MOV DS,dx
LEA si, arry
MOV bl,0H
MOV bh, 0H
MOV Cx,05h

UP: MOV al, [si]
ROR al,01
JC next1
INC BL
JMP NEXT
next1: INC BH
NEXT: INC si
DEC cx
JNZ UP
MOV even1, bl
MOV odd,bh
MOV AH,4CH
INT 21H
 code ends
 end start 
