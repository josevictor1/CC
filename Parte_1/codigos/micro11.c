#include <stdio.h>

int main(){
	int numero;
	int x;

	printf("Digite um número: \n");
	scanf("%d", &numero);
	int verifica(int n);
	x = verifica(numero);
	if(x == 1){
		printf("Número positivo\n");
	}	
	else if(x == 0){
		printf("Zero\n");
	}
	else{
		printf("Número negativo\n");
	}

}

int verifica(int n){
	int res;
	if(n > 0){
		res =1;
	}
	else if(n < 0){
		res = -1;
	}
	else{
		res = 0;
	}

	return res;
}
