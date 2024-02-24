; write a alp to load last 2 digits of your register number into any memory location
.model small
.data
.code
mov ax, @data
mov ds, ax
mov bx, 0007H
mov byte ptr [bx], 47H
end
