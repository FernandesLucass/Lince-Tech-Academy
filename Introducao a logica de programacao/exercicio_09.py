"""
Implemente um algoritmo que dado um texto, e imprima:

a) A quantidade de vogais
b) A quantidade de consoantes
c) A quantidade total de letras
d) A quantidade de palavras
"""

# Recebe o texto do usuário
texto = input("Digite um texto: ").lower()

# Inicializa as variáveis de contagem
qtd_vogais = 0
qtd_consoantes = 0
qtd_letras = 0

# String com todas as vogais (incluindo acentuadas) para facilitar a comparação
vogais = "aeiouáéíóúãõâêîôû"

# Laço para verificar caractere por caractere do texto
for caractere in texto:

    if caractere.isalpha():
        qtd_letras += 1
        # Se a letra estiver na nossa string de vogais, conta como vogal
        if caractere in vogais:
            qtd_vogais += 1
        # Se é uma letra mas não é vogal, só pode ser consoante
        else:
            qtd_consoantes += 1

# Conta a quantidade de palavras quebrando o texto nos espaços
qtd_palavras = len(texto.split())

# Imprime os resultados finais
print(f"a) Quantidade de vogais: {qtd_vogais}")
print(f"b) Quantidade de consoantes: {qtd_consoantes}")
print(f"c) Quantidade total de letras: {qtd_letras}")
print(f"d) Quantidade de palavras: {qtd_palavras}")