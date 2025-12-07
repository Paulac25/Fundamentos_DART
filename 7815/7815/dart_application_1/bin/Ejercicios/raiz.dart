import 'dart:io';
import 'dart:math';

void main() {
  double N = 0;


  do {
    stdout.write("Digite un número positivo: ");
    N = double.parse(stdin.readLineSync()!);

    if (N <= 0) {
      print("El número debe ser positivo.\n");
    }
  } while (N <= 0);

  double X = 0.1;
  double RN = 0;
  double diferencia;


  do {
    RN = (X + N / X) / 2;
    diferencia = (X - RN).abs();
    X = RN; // Actualizar X
  } while (diferencia >= 0.000001);

  print("La raíz cuadrada aproximada de $N es: $RN");
}
