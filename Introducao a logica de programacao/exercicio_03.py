
# Monte um algoritmo que receba dois números, realize a subtração entre eles e retorne o valor absoluto (positivo) da operação:

# Recebe inputs do usuário e converte para float
num1 = float(input('Digite o primeiro número: '))
num2 = float(input('Digite o segundo número: '))

# Realiza a subtração
resultado = num1 - num2

# Lógica do valor absoluto: se o resultado for negativo, inverte o sinal
if resultado < 0:
    resultado = resultado * -1

# Printa o resultado final
print(f'O valor absoluto da subtração entre {num1} e {num2} é: {resultado}')

'''
Observação:

- Não utilizei a função 'abs()' para calcular o valor absoluto, conforme enunciado.

'''