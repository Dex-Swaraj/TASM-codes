data segment 
array1 db 10h, 2h, 3h, 4h, 5h
array2 db 01h, 02h, 03h, 04h, 05h
result dw 5 dup(?) ; Array to store the sum
  data ends
code segment 
ASSUME CS:code,DS:data
START:

    mov si, offset array1 ; Source index for array1
    mov di, offset array2 ; Source index for array2
   

    mov cx, 5 ; Set the loop counter to the number of elements

sum_loop:
    mov ax, [si] ; Load element from array1
    add ax, [di] ; Add element from array2
    add bx, ax ; Store the sum in result array

    inc si ; Increment source index for array1
    inc di ; Increment source index for array2
    

    loop sum_loop ; Repeat for all elements

     mov result,bx
    mov ah, 4ch ;
    int 21h ; 

code ends
end start
