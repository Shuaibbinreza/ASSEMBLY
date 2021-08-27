.model small
.stack 100h
.data
    m1 db 'Enter the char $'
    m2 db 0dh, 0ah, 'Char in Capital: $'
.code
main proc
    mov ax, @data
    mov ds, ax
            
    lea dx, m1        
    mov ah,9
    int 21h 
    
    
    mov ah,1
    int 21h   
    
    mov bl, al 
    
      
    lea dx, m2
    mov ah, 9
    int 21h
    
    
    mov dl, bl
    sub dl, 20h
    mov ah, 2
    int 21h    
     
        
    mov ah, 4ch
    int 21h    
    main endp
end main