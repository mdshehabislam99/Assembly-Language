dosseg
.model small
.stack 100h
.data
var db 53
.code

main proc
mov ax,@data
mov ds,ax

mov dl,var
mov ah,2
int 21h

mov ah,4ch
int 21h

main endp
end main