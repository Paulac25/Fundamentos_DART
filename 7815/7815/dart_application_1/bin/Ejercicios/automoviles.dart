import 'dart:io';

void main() {
  print("Digite la distancia recorrida en km:");
  int km = int.parse(stdin.readLineSync()!);

  double total = 0;

  if (km <= 300) {
    total = 5000;
  } else if (km <= 1000) {
    int extra = km - 300;
    total = 5000 + extra * 200;
  } else {
    int tramoMedio = 1000 - 300;
    int tramoSuperior = km - 1000;

    total = 5000 + (tramoMedio * 200) + (tramoSuperior * 150);
  }

  print("El total a pagar por el alquiler es: $total");
}
