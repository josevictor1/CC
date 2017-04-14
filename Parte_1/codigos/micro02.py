""""Funcao: escrever um algoritmo que leia dois valores inteiros distintos
e informe qual eh o maior"""

def micro02():
    num1 = int(raw_input("Digite o primeiro numero: "))
    num2 = int(raw_input("Digite o segundo numero: "))
    if num1 > num2:
        print ("O primeiro numero, "+str(num1)+" eh maior que o segundo, "+str
            (num2))
    else:
        print ("O segundo numero, "+str(num2)+" eh maior que o primeiro "+str(
            num1))

micro02()
