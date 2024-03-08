; write first five even numbers in contiuous memory location
.model small
.data
nums dw 5 dup(?)
.code
mov ax,@data
mov ds,ax

mov si,0000h
lea bx,nums
mov dx,0000h
mov cx,05h

store:
    mov [bx+si],dx
    add dx,2
    add si,2
loop store

end
