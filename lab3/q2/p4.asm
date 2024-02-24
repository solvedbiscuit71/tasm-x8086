.model small
.code
mov al, 98H
mov ah, 21H
add al, ah
daa
mov al, 98H
sub al, ah
das
end
