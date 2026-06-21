// Cálculo de médias
// Crie um programa que calcula media entre quatro valores, e imprima no console
//conforme o exemplo abaixo. Utilize os modificadores "const" e "final" onde for possível.

void main() {
  const notas = [7.0, 8.0, 5.3, 9.7];

  final soma = notas[0] + notas[1] + notas[2] + notas[3];
  final media = soma / notas.length;

  print('A media entre [ ${notas.join(' , ')} ] = $media');
}
