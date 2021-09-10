; * Multiplicación de números sin signo. Pasaje de parámetros a través de registros.
; Escribir un programa para multiplicar los números NUM1 y NUM2, 
; y guardar el resultado en la variable RES
; a) Sin hacer llamados a subrutinas, resolviendo el problema desde el programa principal;

ORG 1000h
NUM1 DW 5
NUM2 DW 3
RES DW ?

ORG 2000h
MOV AX, NUM1 
MOV BX, NUM2 
MOV CX, 0
LOOP: ADD CX, BX
      DEC AX 
JNZ LOOP
MOV RES, CX 
HLT
END 
