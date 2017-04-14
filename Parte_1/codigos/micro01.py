"""Funcao: Ler uma temperatura em graus Celsius e apresenta-la convertida
em graus Fahrenheit. A formula de conversao eh: F=(9*C+160) / 5,
sendo F a temperatura em Fahrenheit e C a temperatura em Celsius."""

def micro01():
	cel = 0.0
    far = 0.0
	print("		Tabela de conversao: Celsius -> Fahrenheit")
	print("Digite a temperatura em Celsius: ",end="")
	cel = float(raw_input())
	far = (9*cel+160)/5
	print("A nova temperatura eh:"+str(far)+"F")
	
micro01()
