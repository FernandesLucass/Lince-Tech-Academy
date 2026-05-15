
# Implemente um algoritmo que receba um número X, e imprima sua multiplicação de 1 até 9 (tabuada):

# Recebe o número do usuário
x = int(input("Digite um número para ver sua tabuada: "))

print(f"\nTabuada do {x}:")

# Laço de repetição de 1 até 9
for i in range(1, 10):
    resultado = x * i
    print(f"{x} x {i} = {resultado}")