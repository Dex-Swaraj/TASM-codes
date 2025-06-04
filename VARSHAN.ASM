add1 MACRO a,b,res
mov al, a
mov bl,b
mul bl
mov res, al
Endm
 Data Segment

no1 db 10h
no2 db 20h
no3 db 30h
no4 db 40h
rest db ?
res2 db ?
z dw ?
Data ends
Code Segment
assume cs: code, DS: Data
Start:
mov dx,data
mov ds, dx
add1 no1, no2, rest
add1 no3 no4, res2
mov al,rest
mov bl, res2
mul bl
mov z,ax
 mov ah, 4ch
int 21h
Code Ends
End Start
