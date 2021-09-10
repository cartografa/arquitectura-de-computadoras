; Escriba la subrutina ES_VOCAL, que determina si un carácter 
; es vocal o no, ya sea mayúscula o minúscula. 
; La rutina debe recibir el carácter por valor vía registro, 
; y debe retornar, también vía registro, el valor 0FFH si el 
; carácter es una vocal, o 00H en caso contrario.
; Ejemplos: ES_VOCAL de ‘a’ o ‘A’ debe retornar 0FFh y 
; ES_VOCAL de ‘b’ o de ‘4’ debe retornar 00h

ORG 1000h
VOCALES DB "aeiouAEIOU"
CAD     DB ""

0RG 3000h


ORG 2000h

