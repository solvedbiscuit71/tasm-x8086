; write an alp program to check whether 47 is a prime or not
.model small
.code
mov cx, 2
_loop:
    mov ax, 47
    mov dx, 0000H
    div cx
    cmp dx, 0000H
    je _not_prime

    inc cx
    cmp cx, 47
    jne _loop
_prime:
    mov ax, 0ffffh
    jmp _complete
_not_prime:
    mov ax, 0000h
_complete:
end
