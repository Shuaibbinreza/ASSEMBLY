.MODEL SMALL
.STACK 200h
.DATA    
msg db 'Hello World$'    
.CODE

    MAIN PROC 
        
        MOV AX, @DATA
        MOV DS, AX  
        
        mov ah, 9
        lea dx,msg
        int 21h
        
        MOV AH , 4CH
        INT 21H
        
    MAIN ENDP

END MAIN
