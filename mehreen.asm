dosseg 
.model small
.stack 100h
.data
.code
main proc 

mov ax,7
add ax,4

mov ah,2
int 21h

main endp
end main