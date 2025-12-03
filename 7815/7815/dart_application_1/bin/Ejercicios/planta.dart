import 'dart:io';

void main() {
  print("Ingrese los kilogramos de harina obtenidos: ");
  int M = int.parse(stdin.readLineSync()!);

  print("Ingrese los litros de aceite obtenidos: ");
  int N = int.parse(stdin.readLineSync()!);

  print("Ingrese el precio por bulto de harina: ");
  double B1 = double.parse(stdin.readLineSync()!);

  print("Ingrese el precio por caja de aceite: ");
  double B2 = double.parse(stdin.readLineSync()!);

  print("Ingrese el precio al detal por 1 kg de harina: ");
  double B3 = double.parse(stdin.readLineSync()!);

  print("Ingrese el precio al detal por 1 litro de aceite: ");
  double B4 = double.parse(stdin.readLineSync()!);

  int bultosH = M ~/ 24;
  int harinaR = M % 24;
  int cajasAc = N ~/ 15;
  int aceiteR = N % 15;

  double ingresoHB = bultosH * B1;
  double ingresoAC = cajasAc * B2;
  double ingresoHR = harinaR * B3;
  double ingresoAR = aceiteR * B4;

  double total = ingresoHB + ingresoAC + ingresoHR + ingresoAR;

  print("Ingreso total por tonelada de maíz: $total");
}
