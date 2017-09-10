DATA SEGMENT
     MESSAGE DB "ENTER CHARACTER :$"
     X DB ?
ENDS
CODE SEGMENT 
    ASSUME DS:DATA CS:CODE
START:
      MOV AX,DATA
      MOV DS,AX
     
      LEA DX,MESSAGE      
      MOV AH,9
      INT 21H     
     
      MOV AH,1
      INT 21H
      MOV X,AL 
     
      MOV AH,4CH
      INT 21H     
ENDS
END START