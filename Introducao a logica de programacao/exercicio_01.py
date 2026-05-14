
# Monte um algoritmo que receba dois números decimais, e dívida o maior número pelo menor número:

num1 = float(input("Digite o primeiro número decimal: "))                            # Recebe o primeiro número
num2 = float(input("Digite o segundo número decimal: "))                             # Recebe o segundo número

if num1 > num2:                                                                      # Testa primeira condição
    resultado = num1 / num2                                                          # Faz o cálculo e guarda na variável
else:
    resultado = num2 / num1                                                          # Testa a segunda condição

print(f'O resultado da divisão do maior número pelo menor número é {resultado}')     # Printa o cálculo final

'''
Observação:

- Não foi solicitado que o print final informasse qual o maior número dividido.

'''