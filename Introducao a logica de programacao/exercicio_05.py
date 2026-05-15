
# Implemente um algoritmo que realize os cálculos da fórmula de Bhaskara e imprima os valores de X:

# Recebe inputs de a, b e c e converte para float
a = float(input("Digite o valor de a: "))                                           
b = float(input("Digite o valor de b: "))
c = float(input("Digite o valor de c: "))

# Cálculo padrão de Delta
delta = (b ** 2) - (4 * a * c)                                                      

# Condição para caso o Delta seja menor do que 0
if delta < 0:                                                                       
    print("A equação não possui raízes reais, pois o Delta é negativo.")

# Condição para caso o Delta seja igual a 0
elif delta == 0:                                                                    
    x = -b / (2 * a)
    print(f"A equação possui apenas uma raiz real: X = {x}")

# Calcula as duas raízes usando ** 0.5 para a raiz quadrada
else:
    x1 = (-b + (delta ** 0.5)) / (2 * a)                                            
    x2 = (-b - (delta ** 0.5)) / (2 * a)
    print(f"A equação possui duas raízes reais: X1 = {x1} e X2 = {x2}")

"""
Observação: 

- Casos de testes para as 3 condições:

Cenário 1: a = 1, b = -5, c = 6 | Resultado: 2.0
Cenário 2: a = 1, b = -4, c = 4 | Resultado: 2.0
Cenário 3: a = 1, b = 1, c = 1  | Resultado: "A equação não possui raízes reais, pois o Delta é negativo."

"""