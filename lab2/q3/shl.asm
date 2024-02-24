.model small
.data
.code
mov ax, 0A5B6H
mov cl, 02h
stc
shl ax, 1
sal ax, cl
end
