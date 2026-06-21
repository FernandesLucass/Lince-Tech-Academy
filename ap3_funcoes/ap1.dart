// Crie um programa que atenda os requisitos abaixo:
// Inicialize duas listas com 5 números aleatórios entre 0 e 100
// Crie uma função receba uma lista como parâmetro e a imprima na seguinte formatação Lista: 10, 5, 39, 45, 1
// Crie uma função que receba duas listas, e retorne uma nova lista de mesmo tamanho contendo a soma dos itens de
// mesmo índice nas duas listas iniciais (ver exemplo).
// Imprima as acoes realizadas e a lista final
// [Bonus] Validações:
// Caso tente imprimir uma lista vazia, imprimir apenas Lista vazia
// Caso as listas tenham tamanhos diferentes, retornar uma lista vazia

import 'dart:math';

void imprimirLista(List<int> lista) {
  if (lista.isEmpty) {
    print('Lista vazia');
  } else {
    print('Lista: ${lista.join(', ')}');
  }
}

// Função para somar as listas e imprimir as ações
List<int> somarListas(List<int> lista1, List<int> lista2) {
  if (lista1.length != lista2.length) {
    return [];
  }

  List<int> listaFinal = [];

  for (int i = 0; i < lista1.length; i++) {
    print('${lista1[i]}+${lista2[i]}'); // Imprime a ação
    listaFinal.add(lista1[i] + lista2[i]); // Adiciona a soma na nova lista
  }

  return listaFinal;
}

void main() {
  final random = Random();

  final lista1 = List.generate(5, (_) => random.nextInt(101));
  final lista2 = List.generate(5, (_) => random.nextInt(101));

  imprimirLista(lista1);
  imprimirLista(lista2);
  print('');

  final listaResultado = somarListas(lista1, lista2);

  imprimirLista(listaResultado);
}
