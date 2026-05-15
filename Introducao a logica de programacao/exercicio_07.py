
# Implemente um algoritmo que receba um número decimal, e imprima seu valor fatorial (cálculo fatorial):

# Recebe o número do usuário
numero = int(input("Digite um número para calcular o fatorial: "))

# Inicializa a variável do resultado com 1
fatorial = 1

# Laço de repetição até o número digitado
for i in range(1, numero + 1):
    fatorial *= i  # Multiplica o valor atual pelo próximo número da sequência

# Imprime o resultado final
print(f"O fatorial de {numero} é: {fatorial}")

'''
Observação:

- Não utilizei a função 'math.factorial', conforme enunciado.

'''