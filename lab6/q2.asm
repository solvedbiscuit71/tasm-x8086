.model small
.data
first db "Praveen", '$'
last db "Perumal", '$'
.code
mov ax, @data
mov ds, ax
lea dx, first
mov ah, 09H
int 21H
mov dl, ' '
mov ah, 02H
int 21H
lea dx, last
mov ah, 09H
int 21H

mov ah, 4cH
int 21H
end
