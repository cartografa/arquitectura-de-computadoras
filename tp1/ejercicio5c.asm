; Volver a escribir el programa, pero ahora con una subrutina que reciba 
; A, B y C por valor a través de los registros AX, BX y CX, 
; calcule AX + BX - CX, y devuelva el resultado por valor en el registro DX. 
; El programa principal debe llamar a la subrutina y luego guardar el resultado 
; en la memoria con etiqueta D.

ORG 1000h
A DW 5h
B DW 6h
C DW 2h 
D DW ?

ORG 3000h
CALCULO: MOV DX, AX 
         ADD DX, BX
         SUB DX, CX
RET

ORG 2000h
MOV AX, A 
MOV BX, B
MOV CX, C
CALL CALCULO
MOV D, DX
HLT
END