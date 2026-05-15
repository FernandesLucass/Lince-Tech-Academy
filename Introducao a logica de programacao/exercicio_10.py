"""
Implemente um algoritmo que receba uma sequência de X números e:

a) Imprima todos os números em ordem crescente
b) Imprima todos os números em ordem decrescente
c) Imprima o maior número
d) Imprima o menor número
e) Imprima a soma dos números
f) Imprima a média dos números
g) Imprima a soma dos números pares
h) Imprima a soma dos números ímpares
"""

# Recebe a quantidade de números digitados
quantidade = int(input("Quantos números você deseja inserir? "))

numeros = []

# Laço para coletar todos os números
for i in range(quantidade):
    numero = int(input(f"Digite o {i+1}º número: "))
    numeros.append(numero)

# Inicializa as variáveis usando o primeiro número da lista
maior = numeros[0]
menor = numeros[0]
soma_total = 0
soma_pares = 0
soma_impares = 0

# Percorre a lista para processar todas as condições matemáticas
for n in numeros:
    # Valida maior e menor
    if n > maior:
        maior = n
    if n < menor:
        menor = n
        
    # Soma total
    soma_total += n
    
    # Valida e soma pares ou ímpares
    if n % 2 == 0:
        soma_pares += n
    else:
        soma_impares += n

# Calcula a média
media = soma_total / quantidade

# Cria as listas ordenadas
crescente = sorted(numeros)
decrescente = sorted(numeros, reverse=True)

# Imprime todos os resultados exigidos
print("\n--- Resultados ---")
print(f"a) Ordem crescente: {crescente}")
print(f"b) Ordem decrescente: {decrescente}")
print(f"c) Maior número: {maior}")
print(f"d) Menor número: {menor}")
print(f"e) Soma total: {soma_total}")
print(f"f) Média dos números: {media:.2f}")
print(f"g) Soma dos números pares: {soma_pares}")
print(f"h) Soma dos números ímpares: {soma_impares}")