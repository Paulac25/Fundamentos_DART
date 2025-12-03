import 'dart:io';
void main(){
  print("Valor de su compra: ");
  double compra = double.parse(stdin.readLineSync()!);

  double descuento = compra*0.85;
  print("El total de su compra con descuento es: $descuento");
}