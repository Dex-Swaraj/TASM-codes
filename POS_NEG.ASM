data SEGMENT
arry db 10h,20h,-35h,-67h,09h
pos DB ?
neg1 DB  ?
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
shl al,01
JC next1
INC BL
JMP NEXT
next1: INC BH
NEXT: INC si
DEC cx
JNZ UP
MOV pos, bl
MOV neg1,bh
MOV AH,4CH
INT 21H
 code ends
 end start 
