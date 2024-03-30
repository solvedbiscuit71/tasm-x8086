.model small
.data
b1 db 6 dup('$')

.code
mov ax, @data
mov ds, ax

mov ax, 7103
mov bx, offset b1
mov si, 0

int2str:  
mov dx, 0
mov cx, 10
div cx
add dl, '0'
mov [bx + si], dl
inc si
cmp ax, 0
jne int2str  

mov cx, si
mov si, 0
mov di, cx
dec di

revstr:
mov dl, byte ptr [bx + si]
mov dh, byte ptr [bx + di]
mov [bx + si], dh
mov [bx + di], dl
inc si
dec di
cmp si, di
jl revstr   

mov dx, offset b1
mov ah, 09H
int 21H
hlt
end
