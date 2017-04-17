#include <stdio.h>

int main(){

		char nome[40],sexo;
		int x, h=0, m=0;

		for(x = 1; x < 5; x++){
			printf("Digite o nome: \n");
			scanf("%s",nome);
			printf("H - Homem ou M - Mulher: \n");
			getchar();
			scanf("%c",&sexo);

			if (sexo == 'H'){
				h = h + 1;
			}
			else if(sexo  == 'M'){
				m = m + 1;
			}
			else {
				printf("Sexo só pode ser H ou M!\n");
			}

		}

		printf("Foram inseridos %d Homens\n",h);
		printf("Foram inseridos %d Mulheres\n",m);


}
