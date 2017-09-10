DATA SEGMENT
     NUM1 DB 05
     NUM2 DB 06
     RESULT DB ?
ENDS
CODE SEGMENT 
    ASSUME DS:DATA CS:CODE
START:
      MOV AX,DATA
      MOV DS,AX
     
      MOV AL,NUM1
      ADD AL,NUM2
        
      MOV RESULT,AL
     
      MOV AH,0
      AAA 
     
      MOV AH,4CH
      INT 21H     
ENDS
END START