; b) Escribir una subrutina CONTAR_MIN que cuente el número de letras minúsculas de la ‘a’ a la ‘z’ de una cadena de
; caracteres terminada en cero almacenada en la memoria. La cadena se pasa a la subrutina por referencia vía registro,
; y el resultado se retorna por valor también a través de un registro.
; Ejemplo: CONTAR_MIN de ‘aBcDE1#!’ debe retornar 2.

ORG 1000h
CAD DB "aBcDE1#!"
    DB 00h

ORG 3000h
CONTAR_MIN: MOV DX, 0   ; REGISTRO CONTADOR
            LOOP: MOV AH, [BX]       ; muevo lo que apunta BX
                  CMP AH, 00h        ; comparo con el 00 (final de la cadena)
                  JZ FIN
                  CMP AH, 61h        ; comparo con 61h (letra 'a')
                  JNS MAYOR_61
                  MAYOR_61: CMP AH, 7Ah    ; si no es negativo comparo con 7Ah (letra 'z')
                  JS MENOR_7A 
                  MENOR_7A: INC DX          ; si es negativo incremento contador
                  INC BX             ; incremento la dirección que guarda BX
            JMP LOOP 
FIN: RET

ORG 2000h
MOV BX, OFFSET CAD
CALL CONTAR_MIN
HLT 
END 