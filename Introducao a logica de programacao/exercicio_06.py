
# Implemente um algoritmo que receba as medidas dos catetos de um triangulo retângulo, e imprima o valor da hipotenusa (teorema de Pitágoras):

# Recebe os valores dos dois catetos
cateto1 = float(input("Digite a medida do primeiro cateto: "))
cateto2 = float(input("Digite a medida do segundo cateto: "))

# Aplica o Teorema de Pitágoras e extrai a raiz quadrada com ** 0.5
hipotenusa = (cateto1 ** 2 + cateto2 ** 2) ** 0.5

# Imprime o resultado final com 2 casas decimais apenas
print(f"O valor da hipotenusa é: {hipotenusa:.2f}")