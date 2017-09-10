DATA SEGMENT
     NUM1 DB 5
     NUM2 DB 9
     NUM3 DB 7
     AVG  DB ?
ENDS
CODE SEGMENT 
    ASSUME DS:DATA CS:CODE
START:
      MOV AX,DATA
      MOV DS,AX
     
      MOV AL,NUM1
      ADD AL,NUM2  
      ADD AL,NUM3
     
      MOV AH,0
     
      MOV DL,3
      DIV DL
     
      MOV AVG,AL
           
      MOV AH,4CH
      INT 21H     
ENDS
END START
END