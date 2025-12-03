import 'dart:io';

void main() {
  print("Ingrese la cantidad de naranjas: ");
  int X = int.parse(stdin.readLineSync()!);

  print("Ingrese el precio por docena: ");
  double Y = double.parse(stdin.readLineSync()!);

  print("Ingrese la cantidad obtenida por la venta: ");
  double K = double.parse(stdin.readLineSync()!);

  double docenas = X / 12;
  double costo = docenas * Y;
  double ganancia = K - costo;
  double porcentajeG = (ganancia / costo) * 100;

  print("El porcentaje de ganancia obtenido es: $porcentajeG");
}
