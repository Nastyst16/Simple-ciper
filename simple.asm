; Copyright 2023 Nastase Cristian-Gabriel 315CA
%include "../include/io.mac"

section .text
    global simple
    extern printf

simple:
    ;; DO NOT MODIFY
    push    ebp
    mov     ebp, esp
    pusha

    mov     ecx, [ebp + 8]  ; len
    mov     esi, [ebp + 12] ; plain
    mov     edi, [ebp + 16] ; enc_string
    mov     edx, [ebp + 20] ; step

    ;; DO NOT MODIFY

    ;; Your code starts here

    mov bl, 26  ; number used for div

    task1:
        xor ax, ax
        lodsb   ; loads first byte from esi and puts it in al
        ; it also increments the esi
        sub al, 'A'
        add al, dl
        div bl
        mov al, ah
        add al, 'A'
        stosb   ; stores the al byte in edi and also increments edi
        loop task1

    ;; Your code ends here

    ;; DO NOT MODIFY

    popa
    leave
    ret

    ;; DO NOT MODIFY

;   README

;   Task 1

;         At this task I used lodsb and stosb, which makes
;     the implementation much easier

;     "lodsb" -> loads the first byte from esi and puts it in "al"
;             -> increments "esi"

;     "stosb" -> stores the al byte in "edi"
;             -> increments "edi"

;         I used a "loop" beacause at every iteration the ecx register
;     is decremented, so, the ecx reprezents number of steps
