.model small
.data
var dw 0FFFFH

.code
mov ax, @data
mov ds, ax

mov ax, var
clc
inc ax
end
