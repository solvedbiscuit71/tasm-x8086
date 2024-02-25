; find the max element of the numbers
.model small
.data
arr db 14H, 89H, 43H, 94H, 03H, 72H
len dw 06H
.code
mov ax, @data
mov ds, ax
lea bx, arr
mov ax, 0000H
mov dl, [bx]
mov si, 0001H
_loop:
    mov al, [bx + si]
    cmp dx, ax
    jge _continue
    mov dl, al
    _continue:
    inc si
    cmp si, len
    jne _loop
end
