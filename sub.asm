dosseg 
.model small
.stack 100h
.data
.code
main proc 

mov al,15
mov bl,4

sub al,bl
mov dl,al
add dl,48

mov ah,2
int 21h

mov ah,4ch
int 21h

main endp
end main