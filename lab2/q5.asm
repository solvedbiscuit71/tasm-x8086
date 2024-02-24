.model small
.data
.code
mov al,54h
stc
lahf
adc ah, al
sahf
end
