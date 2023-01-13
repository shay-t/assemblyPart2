segment .data 			;DS
t1 dw 1,2,3,4,5,6,7,8,9,10 	;declaration du tableau t1
t2 dw 0,0,0,0,0,0,0,0,0,0	;declration  du tableau t2
	;..............
segment .bss                    ;SS
        ;..............
segment .text                   ;CS
global _main			;debut du programe reconnu par gcc
extern _printf                  ;etiquette vers une fonction extern printf
_main:	                        ;etiquette vers le debut du programme
_b100:	mov ecx,10		;registre compteur/le nombre doperations toujours utilises avec loop arrive a 0 on sort de loop
_b150:	mov esi,0		;
etq1:	mov ax,[t1+esi]
	mov [t2+esi],ax
	add esi,2
        loop etq1
fin:
ret
				;..............