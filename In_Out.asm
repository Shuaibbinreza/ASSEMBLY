.MODEL SMALL
.STACK 200h
.DATA    
    
.CODE

    MAIN PROC 
        
        MOV AX, @DATA
        MOV DS, AX 
        
        mov ah, 1
        int 21h
        
        mov ah, 2
        mov dl, al
        int 21h
        
        MOV AH , 4CH
        INT 21H
        
    MAIN ENDP

END MAIN
