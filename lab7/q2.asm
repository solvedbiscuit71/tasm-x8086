.model small
.data
nums db 5 dup(?)
msg db "enter nums: $"
msg2 db 13,10,"maximum: $"
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
  
lea dx, msg2
mov ah, 09H
int 21H

; maximum
mov dx, 0
mov ax, 0
mov dl, [bx]
mov si, 0001H
_loop:
    mov al, [bx + si]
    cmp dx, ax
    jge _continue
    mov dl, al
    _continue:
    inc si
    cmp si, 5
    jne _loop

add dl, '0'
mov ah, 02H
int 21H

end
