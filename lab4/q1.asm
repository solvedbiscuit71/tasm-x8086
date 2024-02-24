.model small
.data
n1 db 27
n2 db 47
.code
mov ax, @data
mov ds, ax

mov dl, n1
mov dh, n2

cmp dl, dh
jg _elif
je _else
_if:
    mov al, 0ffh
    jmp _finish
_elif:
    mov ah, 0ffh
    jmp _finish
_else:
    mov ax, 0ffffh
_finish:
end
