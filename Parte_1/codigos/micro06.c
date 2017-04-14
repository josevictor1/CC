#include <stdio.h>

/* Função : Faça um algoritmo que leia um número de 1 a 5 e o
 *
 * escreva por extenso. Caso o usuário digite um número que
 *
 * não esteja neste intervalo, exibir mensagem: número inválido.
 *
 * */


int main(){
	int numero;

	printf("Digite um número de 1 a 5: ");
	scanf("%d", &numero);

	if(numero == 1){
		printf("Um");
	}
	else if(numero == 2){
		printf("Dois");
	}
	else if(numero == 3){
		printf("Três");
	}
	else if(numero == 4){
		printf("Quatro");
	}
	else if(numero == 5){
		printf("Cinco");
	}
	else{
		printf("Nùmero Inválido!!!");
	}
}
