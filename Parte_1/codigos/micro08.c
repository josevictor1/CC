#include <stdio.h>

int main(){
	int numero;

	numero = 1;
	while(numero != 0){
		printf("Digite um número: ");
		scanf("%d", &numero);

		if(numero > 10){
			printf(" O número %d é maior que 10", numero);
		}
		else {
			printf("O número %d é maior que 10", numero);
		}
	}
}

