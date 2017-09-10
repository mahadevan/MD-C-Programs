DATA SEGMENT
     MESSAGE DB "ENTER CHARACTER :$"
     NUM DB ?
     BCD DB ?
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
      MOV NUM,AL
     
      SUB AL,30H
      MOV BCD,AL 
     
      MOV AH,4CH
      INT 21H     
ENDS
END START