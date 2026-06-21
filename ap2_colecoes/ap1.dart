// Lista aleatória
// Crie um programa que inicialize uma lista com 10 números entre 0 e 100, gerados aleatoriamente. Imprima os itens da lista conforme o exemplo:
// Posição: 0, valor: XX
// Posição: 1, valor: XX
// Posição: 2, valor: XX
// Posição: ...
// Posição: 9, valor: XX

import 'dart:math';

void main() {
  final random = Random();
  final numeros = List.generate(10, (_) => random.nextInt(101));

  for (int i = 0; i < numeros.length; i++) {
    print('Posição: $i, valor: ${numeros[i]}');
  }
}
