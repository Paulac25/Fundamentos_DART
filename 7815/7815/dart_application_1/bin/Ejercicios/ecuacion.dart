import 'dart:io';
import 'dart:math';

void main() {
  print("Resolver ecuación de segundo grado: Ax^2 + Bx + C = 0\n");

  print("Digite el valor de A:");
  double A = double.parse(stdin.readLineSync()!);

  print("Digite el valor de B:");
  double B = double.parse(stdin.readLineSync()!);

  print("Digite el valor de C:");
  double C = double.parse(stdin.readLineSync()!);

  double discriminante = pow(B, 2) - (4 * A * C);

  print("\nDiscriminante = $discriminante");

  if (discriminante == 0) {

    double X = -B / (2 * A);
    print("D = 0 → La ecuación tiene una sola raíz real.");
    print("X = $X");
  } else if (discriminante > 0) {
    double X1 = (-B + sqrt(discriminante)) / (2 * A);
    double X2 = (-B - sqrt(discriminante)) / (2 * A);

    print("D > 0 → La ecuación tiene dos raíces reales.");
    print("X1 = $X1");
    print("X2 = $X2");
  } else {
    print("D < 0 → La ecuación NO tiene soluciones reales.");
  }
}
