.model small
.data
.code
mov ax, 0A5B6H
mov cl, 02h
stc
rcr ax, 1
rcl ax, cl
end
