.model small
.data
.code
MOV AL,03H
MOV AH,06H
MOV BL,09H
MOV BH,12H
MOV CL,15H
ADD AL,AH
ADD AL,BL
ADD AL,BH
ADD AL,CL
end
