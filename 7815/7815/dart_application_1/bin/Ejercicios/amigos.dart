int sumaDivisores(int n) {
  int suma = 0;
  for (int i = 1; i < n; i++) {
    if (n % i == 0) suma += i;
  }
  return suma;
}

void main() {
  print("Pares de números amigos:");

  int encontrados = 0;
  int num = 1;

  while (encontrados < 4) {
    int sumaA = sumaDivisores(num);
    int sumaB = sumaDivisores(sumaA);

    if (sumaB == num && num != sumaA && num < sumaA) {
      print("$num y $sumaA");
      encontrados++;
    }

    num++;
  }
}
