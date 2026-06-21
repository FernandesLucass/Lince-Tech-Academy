// Divisões
// Crie um programa que atenda os requisitos abaixo:
// Declare duas variáveis numéricas aleatórias* entre 1 e 100
// Realize a divisão da primeira variável pela segunda e salve em uma variável resultado
// Salve a parte inteira do resultado em uma nova variável
// Salve a parte decimal do resultado em uma nova variável
// Imprima todas as variáveis do programa

import 'dart:math';

void main() {
  final gerador = Random();

  final int valorA =
      gerador.nextInt(100) +
      1; // somei +1 para ficar entre 1 e 100, conforme enunciado.
  final int valorB = gerador.nextInt(100) + 1;

  final double resultado = valorA / valorB;
  final int parteInteira = resultado.toInt();
  final double parteDecimal = resultado - parteInteira;

  print('Valor 1: $valorA');
  print('Valor 2: $valorB');
  print('Resultado da divisão: $resultado');
  print('Parte inteira: $parteInteira');
  print('Parte decimal: $parteDecimal');
}
