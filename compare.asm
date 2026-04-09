dosseg
.model small
.stack 100h
.data
.code 
main proc

mov ah,1
int 21h

sub al,48
mov dl,5

cmp al,dl
je L1
jl l2

mov dl,'g'
mov ah,2
int 21h
jmp L3

L1:
mov dl, 'e'
mov ah,2
int 21h
jmp L3

L2:
mov dl,'l'
mov ah,2
int 21h

L3:
mov ah,4ch
int 21h

main endp
end main
