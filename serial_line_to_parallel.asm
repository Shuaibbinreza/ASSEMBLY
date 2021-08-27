.model small
.stack 100h
.data
.code
main proc
    mov ax, @data
    mov dx, ax
    
    mov ah, 1
    int 21h 
    
    mov bl, al
    int 21h
    
    mov bh, al
    int 21h
    
    mov cl, al 
    
    
    mov ah, 2
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h   
    
    
    mov ah, 2
    mov dl, bl
    add dl, 20h    
    int 21h 
    
    
    mov ah, 2
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h  
    
    
    mov ah, 2
    mov dl, cl
    add dl, 20h    
    int 21h 
    
    
    mov ah, 2
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h
    mov dl, bh
    add dl, 20h
    int 21h
    
    
    mov ah, 4ch
    int 21h
    main endp
end main