#include <stdio.h>

int main(){

		char nome[40],sexo;
		int x, h, m;

		for(x = 1; x < 5; x++){
			printf("Digite o nome: ");
			scanf("%s",nome);
			printf("H - Homem ou M - Mulher: ");
			scanf("%c",&sexo);

			if (sexo == 'H'){
				h = h + 1;
			}
			else if(sexo  == 'M'){
				m = m + 1;
			}
			else {
				printf("Sexo só pode ser H ou M!");
			}

		}

		printf("Foram inseridos %d Homens",h);
		printf("Foram inseridos %d Mulheres",m);


}
