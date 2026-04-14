dosseg
.model small
.stack 100h

.data
var1 db ?
var2 db ?
var3 db ?

.code
main proc
mov ax, @data
mov ds,ax

mov ah,1
int 21h
mov var1,al

mov ah,1
int 21h
mov var2,al

mov ah,1
int 21h
mov var3,al

mov dl,var1
mov ah,2
int 21h

mov dl,var2
mov ah,2
int 21h

mov dl,var3
mov ah,2
int 21h

mov ah,4ch
int 21h

main endp
end main


