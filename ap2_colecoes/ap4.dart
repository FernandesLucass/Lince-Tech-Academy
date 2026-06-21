// Utilizando mapas
// Crie um programa que utilize um mapa para relacionar uma lista de cidades com a sigla do estado onde essa cidade e localizada.
// Com o mapa de cidades por estado, implemente as seguintes acoes:
// Utilizando as chaves do mapa, imprima as siglas dos estados, no formato Estados: XX ; XX ; XX ; XX
// Imprimir todas as cidades SC em ordem alfabética (ex.: Cidades de SC: Blumenau ; Florianopolis ; Gaspar)
// Imprimir todas as cidades em ordem alfabética, no formato
// Belo Horizonte - MG
// Berlinda - MG
// // Blumenau - SC
// ...
// Sao Paulo - SP

void main() {
  // Definindo o mapa de estados
  final estados = {
    'SC': ['Gaspar', 'Blumenau', 'Florianopolis'],
    'PR': ['Curitiba', 'Cascavel', 'Foz do Iguacu'],
    'SP': ['Sao Paulo', 'Guarulhos', 'Campinas'],
    'MG': ['Belo Horizonte', 'Juiz de Fora', 'Berlinda'],
  };

  // Imprimir a lista de siglas dos estados
  print('Estados: ${estados.keys.join(' ; ')}');

  final santaCatarina = estados['SC']!;
  santaCatarina.sort();

  // Imprimir as cidades de Santa Catarina
  print('Cidades de SC: ${santaCatarina.join(' ; ')}');
  final cidadesComSigla = [];

  for (var siglaEstado in estados.keys) {
    final cidadesDoEstado = estados[siglaEstado]!;

    for (var cidade in cidadesDoEstado) {
      cidadesComSigla.add('$cidade - $siglaEstado');
    }
  }

  // Ordenar em ordem alfabetica
  cidadesComSigla.sort();

  print('-------------------------------------------------------------------');

  for (var item in cidadesComSigla) {
    print(item);
  }

  print('-------------------------------------------------------------------');
}
