import 'dart:io';

void main() {
  print("Digite el nombre del cliente:");
  String nombre = stdin.readLineSync()!;

  print("Digite el monto de la compra:");
  double monto = double.parse(stdin.readLineSync()!);

  double descuento = 0;

  if (monto < 500) {
    descuento = 0;
  } 
  else if (monto <= 1000) {
    descuento = monto * 0.05;
  } 
  else if (monto <= 7000) {
    descuento = monto * 0.11;
  } 
  else if (monto <= 15000) {
    descuento = monto * 0.18;
  } 
  else {
    descuento = monto * 0.25;
  }

  double totalPagar = monto - descuento;

  print("Cliente: $nombre");
  print("Monto de compra: $monto");
  print("Descuento aplicado: $descuento");
  print("Monto final a pagar: $totalPagar");
}
