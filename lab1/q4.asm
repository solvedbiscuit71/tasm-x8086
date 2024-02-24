.model small
.data
.code
MOV AX,05H
MOV BL,02H
DIV BL
MOV CL,AH
MUL BL
ADD AL,CL
end
