; Escribir un programa que dados los valores etiquetados como 
; A, B y C y almacenados en la memoria de datos, calcule A+B-C 
; y guarde el resultado en la memoria con etiqueta D, 
; sin utilizar subrutinas.
ORG 1000h
A DW 5h
B DW 6h
C DW 2h 
D DW ?

ORG 2000h
MOV CX, A
ADD CX, B
SUB CX, C
MOV D, CX
HLT
END
