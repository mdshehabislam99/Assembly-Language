dosseg
.model small
.stack 100h
.data
.code
main proc

mov dx,9
push dx
mov ax,5
push ax

pop dx
pop ax

mov ah,2
add ax,48
mov dl,al
int 21h

mov ah,4ch
int 21h

main endp
end main

