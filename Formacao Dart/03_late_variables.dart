// late double valorTotal;

// void main() {
//   valorTotal = 1000;

//   print(valorTotal);
// }

// -----------------------------------------------------------

void main() {
  late double resultado = _getValorTotal();

  resultado.toInt();
  print('Chamando a func Main');
} 

double _getValorTotal() {
  print('Chamando a func _getValorTotal');
  return 0.0;
}