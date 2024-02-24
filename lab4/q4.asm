.model small
.data   
num dw 13
res dw ?
.code
mov ax, @data
mov ds, ax

mov cl, 3
mov ax, 1
_loop:
	mul num
	loop _loop
mov res, ax
end
