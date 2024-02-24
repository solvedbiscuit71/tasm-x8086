.model small
.code
mov ax, 0A5B6H
mov cl, 02h
stc
shr ax, 1
shr ax, cl
end
