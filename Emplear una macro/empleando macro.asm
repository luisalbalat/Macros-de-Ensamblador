.model small
.stack 100h
.data
    mensaje db "Presione una letra: $"
.code
    main proc
    mov ax, @data
    mov ds, ax
    
    mov ah, 9
    lea dx, mensaje
    int 21h
capturar_letra
    mov ah, 2
    mov dl, al
    int 21h
    
    mov ah, 4ch
    int 21h
main endp
end main