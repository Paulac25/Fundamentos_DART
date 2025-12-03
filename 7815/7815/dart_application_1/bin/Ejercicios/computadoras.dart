import 'dart:io';

void main() {
  print("Ingrese el precio al contado: ");
  double P = double.parse(stdin.readLineSync()!);

  print("Ingrese el valor de cada cuota (T): ");
  double T = double.parse(stdin.readLineSync()!);

  double totalCredito = 12 * T;
  double recargo = totalCredito - P;
  double porcentajeR = (recargo / P) * 100;

  print("El porcentaje de recargo por pagar en cuotas es: $porcentajeR");
}
