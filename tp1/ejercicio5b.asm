; Escribir un programa como en a) pero ahora el cálculo y el almacenamiento del resultado 
; debe realizarse en una subrutina llamada calculo, sin recibir ni devolver parámetros, 
; es decir, utilizando A, B, C y D como variables globales. Si bien esta técnica no está 
; recomendada, en ejercicio sirve para ver sus diferencias con el uso de parámetros.

ORG 1000h
A DW 5h
B DW 6h
C DW 2h 
D DW ?

ORG 3000h
CALCULO: MOV CX, A
         ADD CX, B
         SUB CX, C
         MOV D, CX
RET

ORG 2000h
CALL CALCULO
HLT
END
