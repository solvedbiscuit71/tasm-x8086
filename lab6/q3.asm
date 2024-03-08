.model small
.data
greater db "num1 is greater than num2", '$'
equal db "num1 is equal to num2", '$'
lesser db "num1 is lesser than num2", '$'
.code
mov ax, @data
mov ds, ax

mov ah, 01H
int 21H
mov bl, al
sub bl, 30H

mov ah, 01H
int 21H
mov cl, al
sub cl, 30H

cmp bx, cx
je _equal
jg _greater
_lesser:
    lea dx, lesser
    jmp _display
_equal:
    lea dx, equal
    jmp _display
_greater:
    lea dx, greater
_display:
mov ah, 09H
int 21H

mov ah, 4CH
int 21H
end
