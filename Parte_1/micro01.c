#include <stdio.h>


/*
 *
 * Função: Ler uma temperatura em graus Celsius e apresentá-la
 *
 * convertida em graus Fahrenheit. A fórmula de conversão é:
 *
 * F=(9*C+160) / 5,
 *
 * sendo F a temperatura em Fahrenheit e C a temperatura em
 *
 * Celsius.
 *
 * */

int main(){
	float cel ,far;

	printf("	Tabela de conversão: Celsius -> Fahrenheit");
	printf("Digite a temperatura em Celsius: ");
	scanf("%f",&cel);
	far = (9*cel+160)/5;
	printf("A nova temperatura é: %f F",far);

}
