.model small
.code
mov al, 39H
mov ah, 54H
add al, ah
daa
mov al, 39H
sub al, ah
das
end
