
# Monte um algoritmo que receba dois números decimais, e dívida o maior número pelo menor número:

# Recebe inputs do usuário
num1 = float(input("Digite o primeiro número decimal: "))
num2 = float(input("Digite o segundo número decimal: "))

# Testa condições e realiza a divisão
if num1 > num2:                                                                      
    resultado = num1 / num2
else:
    resultado = num2 / num1

print(f'O resultado da divisão do maior número pelo menor número é {resultado}')

'''
Observação:

- Não foi solicitado que o print final informasse qual o maior número dividido.

'''