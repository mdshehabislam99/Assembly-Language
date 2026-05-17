dosseg 
.model small
.stack 100h
.data
.code
main proc 

mov al,5
mov bl,4

add bl,al
mov dl,bl
add dl,48

mov ah,2
int 21h

mov ah,13
int 21h

mov ah,10
int 21h

mov ah,4ch
int 21h

main endp
end main