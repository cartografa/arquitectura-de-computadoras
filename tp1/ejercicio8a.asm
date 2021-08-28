; 8) Subrutinas para realizar operaciones con cadenas de caracteres
; a) Escribir una subrutina LONGITUD que cuente el número de caracteres 
; de una cadena de caracteres terminada en cero (00H) almacenada en 
; la memoria. La cadena se pasa a la subrutina por referencia vía 
; registro, y el resultado se retorna por valor también a través de un registro.
; Ejemplo: la longitud de ‘abcd’00h es 4 (el 00h final no cuenta)

ORG 1000h
CAD DB "GENIAL"
    DB 00H

ORG 3000h
LONGITUD: MOV DX, 0   ; REGISTRO CONTADOR
          LOOP: MOV AH, [BX]
                CMP AH, 00H 
                JZ FIN 
                INC DX 
                INC BX 
          JMP LOOP 
FIN: RET

ORG 2000h
MOV BX, OFFSET CAD
CALL LONGITUD 
HLT 
END 