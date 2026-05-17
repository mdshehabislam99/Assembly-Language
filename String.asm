dosseg
.model small
.stack 100h

.data
msg db ?
msg1 db ?
char1 db ?
char2 db ?
newline db 13,10,"$" 

.code 
main proc
mov ax,@data
mov ds,ax

mov ah,1
int 21h
mov char1,al
mov dl,char1
mov ah,2
int 21h

mov ah,1
int 21h
mov char2,al
mov dl,char2
mov ah,2
int 21h

lea dx,msg
mov ah,9h
int 21h

lea dx,newline
mov ah,9h
int 21h

lea dx,msg1
mov ah,9h
int 21h

mov ah,4ch
int 21h

main endp
end main
