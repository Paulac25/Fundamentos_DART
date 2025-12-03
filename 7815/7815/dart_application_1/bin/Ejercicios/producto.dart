import 'dart:io';

void main() {
  print("Ingrese el precio final pagado: ");
  double precioF = double.parse(stdin.readLineSync()!);

  print("Ingrese el precio de venta al público (PVP): ");
  double pvp = double.parse(stdin.readLineSync()!);

  double descuento = pvp - precioF;
  double porcentaje = (descuento / pvp) * 100;

  print("Descuento aplicado: $descuento");
  print("Porcentaje de descuento: ${porcentaje.toStringAsFixed(2)}%");
}
