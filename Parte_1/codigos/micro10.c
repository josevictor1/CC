#include <stdio.h>

int main(){

	int numero;
	int fat;

	printf("Digite um número: ");
	scanf("%d", &numero);
	int fatorial(int n);
	fat = fatorial(numero);

	printf("O fatorial de ");
	printf("%d", numero);
	printf(" é ");
	printf("%d",fat);

}

int fatorial(int n){
	if( n <= 0){
		return 1;
	}
	else{
		return n* fatorial(n-1);
	}	

}
