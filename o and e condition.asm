.MODEL SMALL
.STACK 200h
.DATA    
    
.CODE

    MAIN PROC 
        
        MOV AX, @DATA
        MOV DS, AX 
        
        mov ah, 1
        int 21h 
        
        cmp al, '1'
        je print
        
        cmp al, '3'
        je print
        
        cmp al, '2'
        je print2
        
        cmp al, '4'
        je print2
        
        
        print:
            mov ah, 2
            mov dl, 0ah
            int 21h
            mov dl, 0dh
            int 21h 

            mov dl, 'o'
            int 21h 
            jmp end 
            
        print2:
            mov ah, 2 
            mov dl, 0ah
            int 21h
            mov dl, 0dh
            int 21h 
            mov dl, 'e'
            int 21h 
            jmp end
            
        
        end:
        MOV AH , 4CH
        INT 21H
        
    MAIN ENDP

END MAIN
