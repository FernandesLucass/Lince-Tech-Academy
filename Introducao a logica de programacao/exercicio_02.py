
# Monte um algoritmo que receba 5 números, e imprima todos os números ímpares recebidos:

impares = []                                                    # Cria uma lista vazia para armazenar os números ímpares
for i in range(5):                                              # Laço de repetição para coletar os 5 números
    numero = int(input(f"Digite o {i + 1}º número: "))          # Dá um input na tela 5 vezes, alterando a fstring de acordo com o índice do laço
    if numero % 2 != 0:                                         # Verifica se o número é ímpar e o adiciona na lista
        impares.append(numero)                                  # Appenda o número à lista que estava vazia

print(f"\nOs números ímpares digitados foram: {impares}")       # Imprime todos os ímpares armazenados de uma só vez no final

'''
Observação:

- Utilizei uma lista vazia + laço for apenas para não precisar "sujar" o código com 5 inputs separados.

'''