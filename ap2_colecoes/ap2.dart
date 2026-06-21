// Utilizando métodos de lista #1
// Crie um programa que inicialize uma lista com 50 números gerados aleatoriamente entre 0 e 15 e imprima a lista gerada.
// Em sequência, utilize o método removeWhere para retirar todos os números pares presentes na lista, e imprima novamente.
// As listas devem ser impressas conforme o exemplo abaixo:
// Lista original: 10 ; 13 ; 11 ; 7 ; 12 ; 9 ...
// Lista atualizada: 13 ; 11 ; 7 ; 9 ...

import 'dart:math';

void main() {
  final random = Random();

  List<int> numeros = List.generate(50, (_) => random.nextInt(16));
  print('Lista original: ${numeros.join(' ; ')}');

  numeros.removeWhere((numero) => numero % 2 == 0);
  print('Lista atualizada: ${numeros.join(' ; ')}');
}
