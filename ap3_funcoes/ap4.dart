// Escreva uma função que receba uma lista de números inteiros e imprima no console
// em ordem crescente os números representados na forma decimal, binaria, octal e hexadecimal.
// Requisitos:
// A lista de temperaturas deve ser inicializada com 15 números inteiros entre 1 e 5000, gerados aleatoriamente.
// Defina uma função para conversão de cada base (decimal, binário, octal, hexadecimal).
// Os dados devem ser impressos conforme exemplo: decimal: 17, binário: 10001, octal: 21, hexadecimal: 11

import 'dart:math';

// Funções para cada conversão de base
String converterDecimal(int numero) => numero.toString();
String converterBinario(int numero) => numero.toRadixString(2);
String converterOctal(int numero) => numero.toRadixString(8);
String converterHexadecimal(int numero) => numero.toRadixString(16);

// Função que recebe a lista, ordena e imprime
void processarEImprimir(List<int> numeros) {
  numeros.sort();

  for (int numero in numeros) {
    final dec = converterDecimal(numero);
    final bin = converterBinario(numero);
    final oct = converterOctal(numero);
    final hex = converterHexadecimal(numero);

    print('decimal: $dec, binário: $bin, octal: $oct, hexadecimal: $hex');
  }
}

void main() {
  final random = Random();
  final listaNumeros = List.generate(15, (_) => random.nextInt(5000) + 1);

  processarEImprimir(listaNumeros);
}
