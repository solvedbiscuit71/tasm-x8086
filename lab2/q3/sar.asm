.model small
.code
mov ax, 0A5B6H
mov cl, 02h
stc
sar ax, 1
sar ax, cl
end
