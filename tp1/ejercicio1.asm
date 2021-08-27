; Ejercicio 1: Calcular valor de SP, AX, BX durante el programa
ORG 2000H 
MOV AX, 5 ; SP: 4000h | AX: 05h | BX: 00h
MOV BX, 3 ; SP: 4000h | AX: 05h | BX: 03h
PUSH AX   ; SP: 3FFEh | AX: 05h | BX: 03h
PUSH AX   ; SP: 3FFCh | AX: 05h | BX: 03h
PUSH BX   ; SP: 3FFAh | AX: 05h | BX: 03h
POP BX    ; SP: 3FFCh | AX: 05h | BX: 03h
POP BX    ; SP: 3FFEh | AX: 05h | BX: 05h
POP AX    ; SP: 4000h | AX: 05h | BX: 05h
HLT
END