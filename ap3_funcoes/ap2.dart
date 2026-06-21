// Crie um programa atendendo os requisitos abaixo:
// Crie uma função A que receba outra função como parâmetro.
// Crie uma função B que receba um número como parâmetro.
// A função B devera retornar o resultado de uma operação aritmética de sua escolha no parâmetro recebido.
// A função A devera executar a função recebida como parâmetro duas vezes, passando números aleatórios.
// A função A devera retornar a soma das duas execuções da função parâmetro.
// Crie uma função C, atendendo os mesmo requisitos da função B.
// A função main devera executar a função A passando a função B como parâmetro.
// A função main devera executar a função A passando a função C como parâmetro.
// A função main devera imprimir os resultados da função A(B) e A(C).

import 'dart:math';

// Função A: recebe uma função que processa um inteiro e retorna um inteiro
int funcaoA(int Function(int) operacao) {
  final random = Random();

  final num1 = random.nextInt(11);
  final num2 = random.nextInt(11);

  print('Números sorteados na Função A: $num1 e $num2');

  // Executa a função recebida duas vezes e retorna a soma dos resultados
  return operacao(num1) + operacao(num2);
}

// Função B: recebe um número e multiplica por 2
int funcaoB(int numero) {
  return numero * 2;
}

// Função C: recebe um número e soma 10
int funcaoC(int numero) {
  return numero + 10;
}

void main() {
  print('--- Executando A(B) ---');
  final resultadoAB = funcaoA(funcaoB);
  print('Resultado de A(B): $resultadoAB\n');

  print('--- Executando A(C) ---');
  final resultadoAC = funcaoA(funcaoC);
  print('Resultado de A(C): $resultadoAC');
}
