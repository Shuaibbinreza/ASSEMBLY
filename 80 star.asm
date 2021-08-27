.model small
.stack 100h
.code
main proc
    
    
    mov cl,80
    
    print_loop:
     
     mov ah,2
     mov dl,'*' 
     int 21h
          
     dec cl
     jnz print_loop
     
     mov ah,4ch
     int 21h
     main endp
end main