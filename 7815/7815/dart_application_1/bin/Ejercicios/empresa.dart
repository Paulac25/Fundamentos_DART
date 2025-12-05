import 'dart:io';

void main() {
  print("Ventas del Departamento 1: ");
  double d1 = double.parse(stdin.readLineSync()!);

  print("Ventas del Departamento 2: ");
  double d2 = double.parse(stdin.readLineSync()!);

  print("Ventas del Departamento 3: ");
  double d3 = double.parse(stdin.readLineSync()!);

  print("Salario mensual de cada vendedor: ");
  double salario = double.parse(stdin.readLineSync()!);

  double totalV = d1 + d2 + d3;
  double umbral = totalV * 0.33;

  double dP1 = salario;
  double dP2 = salario;
  double dP3 = salario;

  if (d1 > umbral) {
    dP1  = salario + (salario * 0.20);
  }
  if (d2 > umbral) {
    dP2  = salario + (salario * 0.20);
  }
  if (d3 > umbral) {
    dP3 = salario + (salario * 0.20);
  }

  print("Ventas totales: $totalV");
  print("Umbral (33%): $umbral");

  print("Pago vendedor Departamento 1: $dP1");
  print("Pago vendedor Departamento 2: $dP2");
  print("Pago vendedor Departamento 3: $dP3");
}
