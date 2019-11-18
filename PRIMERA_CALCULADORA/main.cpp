/*ESTA ES LA VERSION EN C++ DE MI PRIMERA CALCULADORA HECHA EN UN ARCHIVO .BAT
OTRAS VERSIONES DE LA MISMA ESTAN DISPONIBLES EN MI REPOSITORIO DE GITHUB

==========--VERSIONES--==========
1. VERSION ORIGINAL ARCHIVO .BAT
2. SEGUNDA VERSION JAVASCRIPT
3. TERCERA VERSION PYTHON
4. CUARTA VERSION PASCAL (Si se que es casi obsoleto)
5. QUINTA VERSION C++.

Version en C++  fecha: 17 de noviembre 2019
(C) RICHARD DANIEL MORONTA GARCIA

*/
#include <stdio.h>
#include <stdlib.h>

int main ()
{
	int primerNumero;
	int segundoNumero;
	int opcion;
	int resultado;
	
	printf ("==========--PRIMERA CALCULADORA--==========\n");
	printf ("=============--VERSION EN C++--============\n\n");
	
	printf (" INGRESA EL PRIMER NUMERO: ");
	scanf ("%d",&primerNumero);
	printf (" INGRESA EL SEGUNDO NUMERO: ");
	scanf ("%d",&segundoNumero);
	
	// El menu se puede hacer en una linea utilizando \n.
	printf ("¿Que operacion desea realizar: \n\n");
	printf ("===============================\n");
	printf (" 1 = SUMA\n");
	printf (" 2 = RESTA\n");
	printf (" 3 = MULTIPLICACION\n");
	printf (" 4 = DIVISION\n");
	printf ("===============================\n\n ");
	
	scanf (" %d",&opcion);
	
	if (opcion == 1){
		printf ("-----------------");
		printf ("\n LA SUMA ES: %d \n", primerNumero + segundoNumero);
		printf ("----------------- \n\n");	
	}
	else{
		if (opcion == 2){
			printf ("-----------------");
			printf ("\n LA RESTA ES: %d \n", primerNumero - segundoNumero);
			printf ("----------------- \n\n");
		}
		else{
			if (opcion == 3){
				printf ("-----------------");
				printf ("\n LA MULTIPLICACION ES: %d \n", primerNumero * segundoNumero);
				printf ("----------------- \n\n");
			}
			else{
				if (opcion ==4){
					if (segundoNumero < 1){
						printf ("---------------------------------------- ");
						printf ("\n ERROR NO SE PUEDE DIVIDIR ENTRE 0 :( \n");
						printf ("---------------------------------------- \n\n");
					}
					else{
						printf ("-----------------");
						printf ("\n LA DIVISION ES: %d \n", primerNumero / segundoNumero);
						printf ("----------------- \n\n");
					}
				}
			}
		}
	}
	
	
	system ("PAUSE");
	
	return 0;
}
