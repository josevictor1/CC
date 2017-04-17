#include <stdio.h>

int main(){
	
	float preco, venda, novo_preco;

	printf("Digite o preco: ");
	scanf("%f", &preco);
	printf("Digite a venda: ");
	scanf("%f", &venda);

	if ( (venda <500) || (preco < 30)){
		novo_preco = preco + (10.0/100.0 * preco);
	}
	else if( (venda >= 500 && venda < 1200) || (preco >= 30 && preco < 80)){ 
		novo_preco = preco + (15/100 * preco);
	}
	else if(venda >= 1200 || preco >= 80){
		novo_preco = preco - (20/100 * preco);
	}

	printf("O novo preco é %f", novo_preco);

}

