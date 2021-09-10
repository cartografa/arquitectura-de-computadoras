; Ejercicio 2: Calcular valor de SP durante el programa considerando que vale 8000h al comenzar
ORG 3000H
RUTINA: MOV BX, 3
RET

ORG 2000H
PUSH AX       ; SP: 7FFEh
CALL RUTINA   ; SP: 7FFCh (guarda la dirección de retorno)
POP BX        ; SP: 8000h 
HLT
END
