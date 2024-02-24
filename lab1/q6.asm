.model small
.data
.code
MOV AX,10H
MOV BL,08H
DIV BL
MOV AX,-12
MOV BL,6
IDIV BL
end
