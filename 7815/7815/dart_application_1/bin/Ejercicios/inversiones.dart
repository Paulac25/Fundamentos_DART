import 'dart:io';
void main(){
  print("Ingrese el valor de la capital que desea invertir: ");
  double capital = double.parse(stdin.readLineSync()!);

  double pago = (capital * 0.02);
  double calcular = (capital + pago);

  print("El pago que se realizara despues de 2 meses seran: $calcular");

}