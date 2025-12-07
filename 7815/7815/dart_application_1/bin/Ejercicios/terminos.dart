void main() {
  double suma = 0.0;
  int n = 0;

  while (true) {
    n++;
    suma += (n * n + 1) / n; // (k^2+1)/k = k + 1/k
    if (suma > 1000) {
      n--;
      double sumaN = 0.0;
      for (int k = 1; k <= n; k++) {
        sumaN += (k * k + 1) / k;
      }
      print("Número de términos: $n");
      print("Suma hasta n: ${sumaN.toStringAsFixed(9)}");
      break;
    }
  }
}
