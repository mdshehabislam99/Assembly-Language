dosseg
.model small
.stack 100h
.data
.code

main proc
mov cx, 10  ;for how many time loop is ongoing
mov bx,1   ;row size


Pyramid:
mov si, cx  ;counter move into si
mov cx, bx  ;inner counter set

mov ah,2
int 21h

print_stars:
mov dl, '*'
int 21h
loop print_stars

mov dl, 10        ;newline
int 21h

mov cx, si   ;restore counter from si
inc bx
loop Pyramid

mov ah, 4ch
int 21h

main endp
end main
