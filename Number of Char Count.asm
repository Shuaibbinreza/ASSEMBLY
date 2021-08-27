.model small
.stack 100h
.data   
num db ?
num2 db ?

msg db 0dh, 0ah,'Number of Char is: $' 

; Shuaib
; 201-15-14062
; EVE O1

.code
main proc
    mov ax,@data
    mov ds,ax  
   
   mov ah, 1
   int 21h
   
   mov cl, '0'
   
     
   Read: 
    int 21h 
    inc cl
    cmp al, 0dh
    je s_in  
    jmp Read
    
   s_in: 
   
    mov ah, 9
    lea dx, msg
    int 21h
    
    mov ah, 2
    mov dl, cl
    int 21h    
    jmp end
   
   end:   
   mov ah,4ch
   int 21h
   main endp
end main