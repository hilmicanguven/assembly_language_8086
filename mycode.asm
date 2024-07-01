
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h ;our program is loaded into this 100h address 

mov ax, 0x300
mov ds, ax      ; @note we do not assign 0x300 to "ds" directly
                ; there is no opcode for "immediate" usage for "ds" register 
mov [0xff], 0x30

      
;---------------------- Print Hello World ----------------------       
;jmp main
;
;message: db 'Hello World!' , 0   ; db=data bytes
;                                        
;print:
;    mov ah, 0eh ; Command(function number) passed to BIOS   
;._loop:
;    lodsb    ;load from 'si' to 'al' and increment 'si' by 1
;    cmp al,0 ;if it is zero, it is end of string. 
;    je .done   
;    int 10h ; interrupt 0x10 responsible for putting something on the screen
;    
;    jmp ._loop
;             
;.done:
;    ret      
;main:
;    mov si, message
;    call print 
;
;---------------------- Print Hello World ---------------------- 

ret




