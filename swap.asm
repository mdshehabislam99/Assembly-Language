dosseg
.model small
.stack 100h
.data
var db ?
var1 db ?
.code
main proc
mov ax,@data
mov ds,ax

mov ah,1
int 21h
mov var,al
mov dl,var
push dx

mov ah,1
int 21h
mov var1,al
mov dl,var1
push ax

pop ax
pop dx

mov ah,2
mov dl,al
int 21h

mov ah,4ch
int 21h

main endp
end main

