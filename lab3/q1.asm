.model small
.data
n1 db 13
n2 db 01
n3 db 20
n4 db 04

.code
mov ax, @data
mov ds, ax

stc
mov al, n1
adc al, n2
adc al, n3
adc al, n4
end
