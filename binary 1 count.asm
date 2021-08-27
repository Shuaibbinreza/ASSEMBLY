.model small
.stack 100h
.data
msg1 db 'type a character:$'
msg2 db 0dh,0ah,'the ascii code of'
char1 db ?, ' in binary is:$'
msg3 db 0dh,0ah,'the number of 1 bits'
char2 db ?,'$'
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg1
    int 21h
    
    mov ah,1
    int 21h 
    
   mov char1,al
   mov bl,al
   
   xor bh,bh
   
   mov ah,9
   lea dx,msg2
   int 21h
   
   mov ah,2
   mov cx,8
   
   top:
   shl bl,1
   jc put_1
   mov dl,'0'
   jmp display 
   
   put_1:
   
   mov dl,'1'
   ;inc bh
   
   display:
   
   int 21h
   loop top
   
   or bh,30h
   
   ;mov char2,bh
   
   ;mov ah,9
   ;lea dx,msg3
   ;int 21h 
   
   mov ah,4ch
   int 21h
   main endp
end main