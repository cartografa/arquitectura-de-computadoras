; * Multiplicación de números sin signo. Pasaje de parámetros a través de registros.
; Escribir un programa para multiplicar los números NUM1 y NUM2, 
; y guardar el resultado en la variable RES
; c) Llamando a una subrutina MUL, pasando los parámetros por referencia desde el 
; programa principal a través de registros, y devolviendo el resultado 
; a través de un registro por valor.

ORG 1000h
NUM1 DW 5
NUM2 DW 3
RES DW ?

ORG 3000h
MUL: MOV CX, 0
LOOP: ADD CX, BX
      DEC AX  
      JNZ LOOP 
FIN: RET

ORG 2000h
MOV AX, OFFSET NUM1 
MOV BX, OFFSET NUM2 
CALL MUL
MOV RES, CX 
HLT
END 
