
# Monte um algoritmo que receba dois números, realize a subtração entre eles e retorne o valor absoluto (positivo) da operação:

num1 = float(input('Digite o primeiro número: '))                               # Recebe o primeiro número e converte para float
num2 = float(input('Digite o segundo número: '))                                # Recebe o segundo número e converte para float

resultado = num1 - num2                                                         # Realiza a subtração


if resultado < 0:                                                               # Lógica do valor absoluto: se o resultado for negativo, inverte o sinal
    resultado = resultado * -1

print(f'O valor absoluto da subtração entre {num1} e {num2} é: {resultado}')    # Printa o resultado final

'''
Observação:

- Não utilizei a função 'abs()' para calcular o valor absoluto, conforme enunciado.

'''