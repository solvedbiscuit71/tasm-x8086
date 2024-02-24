.model small
.data
.code
mov ax, 0A5B6H
mov cl, 02h
stc
rol ax, 1
ror ax, cl
end
