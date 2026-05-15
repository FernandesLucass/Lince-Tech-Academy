
# Monte um algoritmo que receba 5 números, e imprima todos os números ímpares recebidos:

# Cria uma lista vazia para armazenar os números ímpares
impares = []

# Laço de repetição para coletar os 5 números
for i in range(5):                                              
    numero = int(input(f"Digite o {i + 1}º número: "))
    # Verifica se o número é ímpar e o adiciona na lista
    if numero % 2 != 0:
        impares.append(numero)

print(f"\nOs números ímpares digitados foram: {impares}")

'''
Observação:

- Utilizei uma lista vazia + laço for apenas para não precisar aumentar o código com 5 inputs separados.

'''