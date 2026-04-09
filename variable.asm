dosseg
.model small
.stack 100h
.data
var1 db ?
.code
main proc
mov ax, @data
mov ds,ax

mov dx,offset var1
int 21h

mov ah,2
int 21h

mov ah,4ch
int 21h

main endp
end main


