
# Monte um algoritmo que receba dois números decimais, e imprima o menor múltiplo comum entre eles:

# Recebe inputs do usuário e converte para inteiro
num1 = int(input('Digite o primeiro número: '))
num2 = int(input('Digite o segundo número: '))

# Bloco para identificar o maior e o menor número
if num1 > num2:
    maior = num1
    menor = num2
else:
    maior = num2
    menor = num1

# Começa a testar o múltiplo comum a partir do maior número
multiplo_comum = maior                                                                  

# Loop para encontrar o múltiplo comum e incremente o pelo maior número para testar o próximo múltiplo
while True:                                                                             
    if multiplo_comum % menor == 0:
        print(f'O menor múltiplo comum entre {num1} e {num2} é: {multiplo_comum}')
        break
    multiplo_comum += maior

'''
Observação: 

- Poderia ter utilizado o recurso pronto de 'max()' e 'min()' para identificar o maior e o menor número, mas fiz a lógica manual, conforme enunciado.
- Não entendi se 'deciamal' se referia a números com vírgula ou apenas com base 10, então optei por converter para inteiro, já que o cálculo do MMC é mais simples com inteiros.
Se fosse necessário trabalhar com decimais, o processo seria mais complexo e envolveria a conversão para frações ou o uso de um método diferente para encontrar o MMC.

'''