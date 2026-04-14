dosseg
.model small
.stack 100h

.data
msg db 'Hello$'

.code
main proc
mov ax,@data
mov ds,ax

mov cx,9
l2:
lea dx,msg
mov ah, 9h
int 21h
mov ah,2
int 21h
loop l2

mov ah,4ch
int 21h

main endp
end main
