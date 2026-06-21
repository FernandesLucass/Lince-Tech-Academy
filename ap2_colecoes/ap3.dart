// Utilizando métodos de lista #2
// Crie um programa que inicialize uma lista com 50 números gerados aleatoriamente entre 10 e 21 e imprima a lista gerada.
//Em sequência, imprima todos os valores únicos presentes na lista.
// As listas devem ser impressas conforme o exemplo abaixo:
// Lista original: 10 ; 17 ; 20 ; 10 ; 10 ; 13 ; 11 ; 17 ...
// Itens únicos: 10 ; 17 ; 20 ; 13 ; 17 ...

import 'dart:math';

void main() {
  final random = Random();

  List<int> numeros = List.generate(50, (_) => random.nextInt(12) + 10);
  print('Lista original: ${numeros.join(' ; ')}');

  final unicos = numeros.toSet();
  print('Itens únicos: ${unicos.join(' ; ')}');
}
