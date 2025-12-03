import 'dart:io';
void main(){
  print("Empleado: Jefe,¿De cuanto será mi sueldo con todo y comisiones?");
  print("Ingrese su sueldo base");
  double sueldo = double.parse(stdin.readLineSync()!);

  print("Ingrese el valor de su primera venta");
  double venta1 = double.parse(stdin.readLineSync()!);

  print("Ingrese el valor de su segunda venta");
  double venta2 = double.parse(stdin.readLineSync()!);

  print("Ingrese el valor de su tercera venta");
  double venta3 = double.parse(stdin.readLineSync()!);

  double comisiones = (venta1 + venta2 + venta3)*0.1;
  double sueldoTotal = comisiones + sueldo;

  print("---- Jefe: Usted recibirá: ----");
  print("El total de sus comisones es $comisiones");
  print("Su sueldo total con comisiones y ventas es: $sueldoTotal");
  }