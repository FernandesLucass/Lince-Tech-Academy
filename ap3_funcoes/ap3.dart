// Escreva um programa que receba uma lista de raios de círculos e com base nos raios,
// calcule o area e o perímetro de cada círculo, imprimindo esses dados no console.
// Requisitos:
// A lista de raios deve ser inicializada com 10 números entre 1 e 100, gerados aleatoriamente.
// Defina uma função para cálculo de area e outra para cálculo de perímetro.
// Os dados devem ser impressos conforme exemplo: Raio: 5, area: 78.54, perímetro: 31.42.

import 'dart:math';

// Função para calcular a área
double calcularArea(int raio) {
  return pi * pow(raio, 2);
}

// Função para calcular o perímetro
double calcularPerimetro(int raio) {
  return 2 * pi * raio;
}

void main() {
  final random = Random();

  final raios = List.generate(10, (_) => random.nextInt(100) + 1);

  for (int raio in raios) {
    final area = calcularArea(raio);
    final perimetro = calcularPerimetro(raio);

    print(
      'Raio: $raio, area: ${area.toStringAsFixed(2)}, perímetro: ${perimetro.toStringAsFixed(2)}',
    );
  }
}
