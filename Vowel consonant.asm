.model small
.stack 100h
.data
    m1 db 0dh, 0ah,'Consonant$'
    m2 db 0dh, 0ah, 'Vowel$'
.code
main proc
    mov ax, @data
    mov ds, ax   
    
    mov ah,1
    int 21h   
    
    cmp al, 'A'
    je print 
    
    cmp al, 'E'
    je print
    
    cmp al, 'I'
    je print
    
    cmp al, 'O'
    je print
    
    cmp al, 'U'
    je print
    
    cmp al, 'a'
    je print
    
    cmp al, 'e'
    je print
    
    cmp al, 'i'
    je print
    
    cmp al, 'o'
    je print
    
    cmp al, 'u'
    je print
    jmp chk   
        
    print:  
        mov ah,9 
        lea dx, m2
        int 21h 
        jmp end
        
    chk:
        mov ah,9 
        lea dx, m1
        int 21h 
        jmp end
     
    end:    
    mov ah, 4ch
    int 21h    
    main endp
end main