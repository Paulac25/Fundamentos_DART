void main() {
  double objetivo = 1.99;
  double suma = 0.0;
  double termino = 1.0;
  int n = 0;

  while (suma < objetivo) {
    n++;
    suma += termino;
    termino /= 2.0;
  }

  print('Número de términos necesarios: $n');
  print('Suma alcanzada: ${suma.toStringAsFixed(12)}');
}
