import 'dart:io';

void main() {
  print("Digite el valor de P:");
  double P = double.parse(stdin.readLineSync()!);

  print("Digite el valor de Q:");
  int Q = int.parse(stdin.readLineSync()!);

  double expresion = (P * P * P) + (Q * Q * Q * Q) - (2 * P * P);

  if (expresion > 680) {
    print("La expresión se cumple.");
    print("P = $P, Q = $Q");
  } else {
    print("La expresión NO se cumple.");
  }
}
