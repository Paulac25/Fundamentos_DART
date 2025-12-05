import 'dart:io';

void main() {
  print("Ingrese las ventas del departamento 1:");
  double v1 = double.parse(stdin.readLineSync()!);

  print("Ingrese las ventas del departamento 2:");
  double v2 = double.parse(stdin.readLineSync()!);

  print("Ingrese las ventas del departamento 3:");
  double v3 = double.parse(stdin.readLineSync()!);

  print("Ingrese el salario mensual de cada vendedor:");
  double salario = double.parse(stdin.readLineSync()!);

  double totalVentas = v1 + v2 + v3;
  double porcentaje33 = totalVentas * 0.33;

  double pago1 = salario;
  double pago2 = salario;
  double pago3 = salario;

  if (v1 > porcentaje33) {
    pago1 += salario * 0.20;
  }
  if (v2 > porcentaje33) {
    pago2 += salario * 0.20;
  }
  if (v3 > porcentaje33) {
    pago3 += salario * 0.20;
  }
  print("Departamento 1 recibirá: $pago1");
  print("Departamento 2 recibirá: $pago2");
  print("Departamento 3 recibirá: $pago3");
}
