.model small
.stack 100h
.data 

num1 db ?
num2 db ?
res db ?

m1 db 'Enter first Number: $'
m2 db 0dh, 0ah, 'Enter Second Number: $' 
m3 db 0dh, 0ah, 'Larger number is: $'

.code
main proc
    mov ax, @data
    mov ds, ax
    
    
    lea dx, m1
    mov ah, 9
    int 21h
    
    
    mov ah, 1
    int 21h
    
    mov cl, al 
    
    
    lea dx, m2
    mov ah, 9
    int 21h
    
    
    mov ah, 1
    int 21h
    mov bl, al
    
    cmp bl, cl
    jle print
    jmp c
    
    print:
    lea dx, m3
    mov ah, 9
    int 21h
    
    mov ah, 2
    mov dl, cl
    int 21h   
    jmp EXIT
        
    
    c:  
    lea dx, m3
    mov ah, 9
    int 21h
         
    mov ah, 2
    mov dl, bl
    int 21h
    jmp EXIT
    
        
    EXIT:
    mov ah, 4ch
    int 21h
    
    main endp
end main