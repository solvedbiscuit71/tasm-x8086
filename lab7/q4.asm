.model small
.data
nums1 db 5 dup(?)
nums2 db 5 dup(?)
product db 5 dup(?)

msg1 db "enter nums1: $"
msg2 db 13,10,"enter nums2: $"
msg3 db 13,10,"multiplied nums: $"
.code
mov ax, @data
mov ds, ax
mov ax, 0 

lea dx, msg1
mov ah, 09H
int 21H

lea bx, nums1
mov si, 0
_input_nums1:
    mov ah, 01H
    int 21H
    sub al, 30H
    mov [bx + si], al
    inc si
    cmp si, 5
    jne _input_nums1

lea dx, msg2
mov ah, 09H
int 21H

lea bx, nums2  
mov si, 0
_input_nums2:
    mov ah, 01H
    int 21H
    sub al, 30H
    mov [bx + si], al
    inc si
    cmp si, 5
    jne _input_nums2

mov si, 0 
_loop:
    lea bx, nums1
    mov al, byte ptr [bx + si]     
    lea bx, nums2
    mul byte ptr [bx + si] 
    lea bx, product
    mov byte ptr [bx + si], al
    inc si
    cmp si, 5
    jne _loop

lea dx, msg3
mov ah, 09H
int 21H  

mov si, 0
lea bx, product
mov ah, 02H
_print_nums:
    mov dl, [bx + si]
    add dl, '0'
    int 21H
    inc si
    cmp si, 5
    jne _print_nums

end
