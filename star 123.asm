.model small
.stack 100h  
.data
n db ?
.code
main proc 
    ;201-15-14062
    ;SHUAIB
    mov ah,1
    int 21h
    
    mov cl,al
    int 21h
    
    sub cl,30h 
    mov ch,cl
    inc ch
    
    
    print_loop:
    
    mov bl, ch
    sub bl, cl  
    
     
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