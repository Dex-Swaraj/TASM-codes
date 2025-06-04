;ALP program to implement fibonacci series

; OUTPUT INSTRUCTIONS : al points current elelemnt
;                       bl points prevoius element


fibo macro prev,prev2
mov point,al          ; store previous elelemnt in point var
add al,bl             ; add prevoius elelemnt with second prevoius elelemnt 
mov curr,al           ; store  it in curr var 
endm

data segment
prev2 db 01h
prev db 01h
curr db 00h
point db 00h
data ends

code segment
assume cs:code,ds:data
start:
mov dx,data
mov ds,dx
mov cx,06h
mov ax,0000h
up:
    mov bl,prev2          ; mov second  previous element  in bl 
    mov al,prev           ; mov previous  element in al 
    fibo al,bl

                          ;mov point to prev2   i.e prevoius element will be now second prevoius 

    mov dl,point
    mov prev2,dl

                          ; addition of al,bl is in al i.e current  number.... now make it previous 

    mov prev,al

    mov bl,prev2
    jnc next              ; if carry genearted add it to ah
    inc ah
next:dec cx
      jnz up
      mov ah,4ch
      int 21h
      code ends
      end start 
