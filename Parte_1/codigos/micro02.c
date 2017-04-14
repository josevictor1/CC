#include <stdio.h>

int main(){

	int num1, num2;

	printf("Digite o primeiro número: ");
	scanf("%d", &num1);
	printf("Digite o segundo número: ");
	scanf("%d",&num2);

	if(num1 > num2){
		printf("O Primeiro número %d é maior que o segundo %d", num1,num2);
	}

	else{
		printf("O segundo número %d é maior que o primeiro %d",num1,num2);
	}
}

