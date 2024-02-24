.model small
.code
mov al, 39H
mov ah, 48H
add al, ah
daa
mov al, 39H
sub al, ah
das
end
