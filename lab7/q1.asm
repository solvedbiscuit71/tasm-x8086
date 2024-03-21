.model small
.data
nums db 5 dup(?)
msg db "enter nums: $"
msg2 db 13,10,"sorted nums: $"
.code
; setup
mov ax, @data
mov ds, ax
mov sp, 0fffeh
lea bx, nums

lea dx, msg
mov ah, 09H
int 21H

mov si, 0
_input_nums:
    mov ah, 01H
    int 21H
    sub al, 30H
    mov [bx + si], al
    inc si
    cmp si, 5
    jne _input_nums

; sorting
mov dx, 0
mov ax, 0
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
    cmp si, 5
    jne _outer
_outer_break:  
  
lea dx, msg2
mov ah, 09H
int 21H  

mov si, 0   
mov ah, 02H
_print_nums:
    mov dl, [bx + si]
    add dl, '0'
    int 21H
    inc si
    cmp si, 5
    jne _print_nums
end
