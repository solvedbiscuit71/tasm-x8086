.model small
.code
mov ax, 0H
mov cx, 5H
_sum:
    add ax, cx
    loop _sum
end
