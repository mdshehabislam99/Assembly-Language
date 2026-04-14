dosseg
.model small
.stack 100h

.data
msg db 'Equal$'
msg1 db 'greater$'
var1 db ?
var2 db ?

.code 
main proc
mov ax,@data
mov ds,ax

mov ah,1
int 21h
mov var1,al
mov bl,var1


mov ah,1
int 21h
mov var2,al
mov dl,var2

cmp bl,dl
je L1
jg l2

mov dl,'n'
mov ah,2
int 21h
jmp L3

L1:
lea dx,msg
mov ah,9h
int 21h
mov ah,2
int 21h
jmp L3

L2:
lea dx,msg1
mov ah,9h
int 21h
mov ah,2
int 21h

L3:
mov ah,4ch
int 21h

main endp
end main
