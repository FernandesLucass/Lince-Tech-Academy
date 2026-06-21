// [EXTRA] Utilizando classes
// Com base no programa desenvolvido na AP1 - Definição de variáveis, reescreva o programa
// utilizando uma classe para agrupar os valores e utilize o método toString para formatação dos dados.
// Utilize os modificadores "const" e "final" onde for possível.

class Pessoa {
  final String nome;
  final String sobrenome;
  final int idade;
  final bool ativo;
  final double peso;
  final String? nacionalidade;

  const Pessoa({
    required this.nome,
    required this.sobrenome,
    required this.idade,
    required this.ativo,
    required this.peso,
    this.nacionalidade,
  });

  @override
  String toString() {
    final statusIdade = idade >= 18 ? 'maior de idade' : 'menor de idade';
    final statusAtivo = ativo ? 'Ativo' : 'Inativo';

    return 'Nome completo: $nome $sobrenome\n'
        'Idade: $idade ($statusIdade)\n'
        'Situação: $statusAtivo\n'
        'Peso: ${peso.toStringAsFixed(2)}\n'
        'Nacionalidade: ${nacionalidade ?? "Nao informada"}';
  }
}

void main() {
  const pessoa = Pessoa(
    nome: 'Lucas',
    sobrenome: 'Fernandes',
    idade: 26,
    ativo: true,
    peso: 78.6,
    nacionalidade: null,
  );

  print(pessoa);
}
