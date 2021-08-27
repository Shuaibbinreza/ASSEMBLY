.model small
.stack 100h
.data 

.code
main proc
    mov ax, @data
    mov ds, ax
    
    
    mov ah, 2
    mov cx, 256
    mov dx, 0
    
    
    print:
        int 21h
        inc dx
        dec cx
        jnz print   
    
    
    mov ah, 4ch
    int 21h
    
    main endp
end main