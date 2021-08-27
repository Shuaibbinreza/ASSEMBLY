.model small
.stack 100h
.code
main proc 
    
    mov ah,1
    int 21h
    
    mov cl,al
    int 21h
    
    sub cl,30h
    
    print_loop:
    
    mov bl,0
    add bl, cl  
    
     
     top:  
     mov ah,2
     mov dl,'*' 
     int 21h
     dec bl
     jnz top
     
     mov dl,0dh
     int 21h
     mov dl,0ah
     int 21h
     dec cl
     jnz print_loop 
     
     
     mov ah,4ch
     int 21h
     main endp
end main