; write an alp program to arrange the numbers (4) in ascending order
.model small
.data
arr db 94H, 89H, 14H, 43H, 03H, 72H
len dw 06H
.code
; setup
mov ax, @data
mov ds, ax
mov sp, 0fffeh
lea bx, arr
mov ax, 0

; sorting
mov si, 01H
_outer:
    mov al, [bx + si]
    push si
    _inner:
        mov dl, [bx + si - 1]
        cmp dx, ax
        jge _else
        _if:
            jmp _inner_break
        _else:
            mov [bx + si], dl
            dec si
            cmp si, 0000H
            jne _inner
    _inner_break:
    mov [bx + si], al
    pop si
    inc si
    cmp si, len
    jne _outer
_outer_break:
end
