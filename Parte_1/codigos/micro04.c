#include <stdio.h>

int main(){
	int x, num, intervalo;

	for(x = 1; x < 5; x++){
		printf("Digite um número: ");
		scanf("%d",&num);
		if(num >= 10){
			if(num <= 150){
				intervalo = intervalo + 1;
			}
		}
	}

	printf("Ao total foram digitados %d números no intervalo entre 10 e 150",intervalo);
}

