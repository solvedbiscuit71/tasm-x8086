.model small
.code
mov cx, 7
mov ax, 1
_fact:
    mul cx
    loop _fact
end
