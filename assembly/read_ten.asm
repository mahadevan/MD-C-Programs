DATA SEGMENT
     MESSAGE DB "ENTER 10 CHARACTERS : $"
ENDS
CODE SEGMENT 
    ASSUME DS:DATA CS:CODE
START:
      MOV AX,DATA
      MOV DS,AX
     
      LEA DX,MESSAGE      
      MOV AH,9
      INT 21H
     
      MOV CX,10
      INPUT:
            MOV AH,1
            INT 21H
      LOOP INPUT     
     
      MOV AH,4CH
      INT 21H     
ENDS
END START