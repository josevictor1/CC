#include <stdio.h>

int main(){
	int programa, numero;
	char opc;

	programa = 1;
	while( programa == 1){
		printf("Digite um número: ");
		scanf("%d",&numero);

		if(numero > 0){
			printf("Positivo");
		}
		else{
			if(numero == 0){
				printf("O número é igual a  0");
			}
			if (numero < 0){
				printf("Negativo");
			}
		}
		getchar();
		printf("Deseja finalizar? (S/N) ");
		scanf("%c", &opc);
		if(opc == 'S'){
			programa = 0;
		}
	}
}
