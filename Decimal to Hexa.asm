.model small
.stack 100h
.data
    m1 db 'Enter the Decimal Number: $'
    m2 db 0dh, 0ah, 'In Hexa Decimal: $'
.code
main proc
    mov ax, @data
    mov ds, ax 
    
    mov ah, 9
    lea dx,m1
    int 21h
            
    mov ah, 1
    int 21h
    
    mov bl, al
    int 21h
    
    mov cl, al 
    
    mov ah, 9
    lea dx,m2
    int 21h
    
    mov ah, 2
    mov dl, cl
    add dl, 11h
    int 21h 
       
     
        
    mov ah, 4ch
    int 21h    
    main endp
end main