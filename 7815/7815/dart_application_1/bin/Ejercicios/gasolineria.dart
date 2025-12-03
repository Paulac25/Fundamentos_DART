import 'dart:io';

void main() {

  const precioLitro = 100;
  const galonALitros = 3.785;

  print("Ingrese la cantidad de galones surtidos: ");
  double galones = double.parse(stdin.readLineSync()!);

  double litros = galones * galonALitros;
  double monto = litros * precioLitro;

  print("Cantidad en litros: $litros");
  print("Monto a pagar: $monto");
}
