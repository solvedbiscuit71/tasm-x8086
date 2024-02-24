.model small
.code
mov al, 92H
mov ah, 85H
add al, ah
daa
mov al, 92H
sub al, ah
das
end
