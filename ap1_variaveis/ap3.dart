// Inverter valores
// Crie um programa que atenda os requisitos abaixo:
// Declare duas variáveis numéricas aleatórias* entre 1 e 100
// Imprima o valor dessas variáveis
// Inverta os valores das variáveis
// Imprimir novamente as variáveis
// Utilize "const" e "final" onde for possível

import 'dart:math';

void main() {
  final gerador = Random(); // utilização do dart:math conforme enunciado.

  int valorA =
      gerador.nextInt(100) +
      1; // somei +1 para ficar entre 1 e 100, conforme enunciado.
  int valorB = gerador.nextInt(100) + 1;

  print('Valores originais:');
  print('Variável A: $valorA');
  print('Variável B: $valorB');
  print('-------------------');

  final temp = valorA;
  valorA = valorB;
  valorB = temp;

  print('Valores invertidos:');
  print('Variável A: $valorA');
  print('Variável B: $valorB');
}
