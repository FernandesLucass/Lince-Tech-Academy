// Definição de variáveis
// Crie um programa que declare variáveis atendendo os requisitos da tabela abaixo, inicialize-as com algum
// valor de sua preferência e imprima no console com a formatação especificada.

// ignore_for_file: dead_code

void main() {
  // 1. Declaração e inicialização das variáveis
  String nome = 'Lucas';
  String sobrenome = 'Fernandes';
  int idade = 26;
  bool ativo = true;
  double peso = 75.5; // double para decimal
  String? nacionalidade; // String? indica que é opcional (pode ser null)

  // 2. Impressão com as formatações exigidas da tabela

  // Nome
  print('Nome completo: $nome $sobrenome');

  // Idade (Maior ou menor)
  String statusIdade = idade >= 18 ? 'maior de idade' : 'menor de idade';
  print('Idade: $idade ($statusIdade)');

  // Situação (Ativo ou Inativo)
  String statusAtivo = ativo ? 'Ativo' : 'Inativo';
  print('Situação: $statusAtivo');

  // Peso (Formatado com duas casas decimais "0.00")
  print('Peso: ${peso.toStringAsFixed(2)}');

  // Nacionalidade (Valor ou "Não informada")
  print('Nacionalidade: ${nacionalidade ?? "Nao informada"}');
}
