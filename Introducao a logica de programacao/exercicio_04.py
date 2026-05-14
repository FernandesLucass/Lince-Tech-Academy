
# Monte um algoritmo que receba dois números decimais, e imprima o menor múltiplo comum entre eles:

num1 = int(input('Digite o primeiro número: '))                                         # Recebe o primeiro número e converte para inteiro
num2 = int(input('Digite o segundo número: '))                                          # Recebe o segundo número e converte para inteiro

if num1 > num2:                                                                         # __
    maior = num1                                                                        #|
    menor = num2                                                                        #|   Bloco para identificar o maior e o menor número, 
else:                                                                                   #|   para facilitar a lógica do cálculo do MMC!
    maior = num2                                                                        #|
    menor = num1                                                                        #|__

multiplo_comum = maior                                                                  # Começa a testar o múltiplo comum a partir do maior número

while True:                                                                             # Loop infinito para encontrar o múltiplo comum
    if multiplo_comum % menor == 0:                                                     # Verifica se o valor atual é divisível pelo menor número
        print(f'O menor múltiplo comum entre {num1} e {num2} é: {multiplo_comum}')
        break                                                                           # Encerra o loop ao encontrar o MMC    
    multiplo_comum += maior                                                             # Incrementa o múltiplo comum pelo maior número para testar o próximo múltiplo

'''
Observação: 

- Poderia ter utilizado o recurso pronto de 'max()' e 'min()' para identificar o maior e o menor número, mas fiz a lógica manual, conforme enunciado.
- Não entendi se 'deciamal' se referia a números com vírgula ou apenas com base 10, então optei por converter para inteiro, já que o cálculo do MMC é mais simples com inteiros.
Se fosse necessário trabalhar com decimais, o processo seria mais complexo e envolveria a conversão para frações ou o uso de um método diferente para encontrar o MMC.

'''