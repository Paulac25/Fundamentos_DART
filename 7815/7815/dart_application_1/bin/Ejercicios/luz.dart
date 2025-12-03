import 'dart:io';
void main(){
  print("Digite la lectura actual: ");
  double lecturaActual = double.parse(stdin.readLineSync()!);

  print("Digite la lectura anterior: ");
  double lecturaAnterior = double.parse(stdin.readLineSync()!);

  print("Digite el costo por Kilovatio: ");
  double costoK = double.parse(stdin.readLineSync()!);
  double consumo = lecturaActual - lecturaAnterior;
  double pago = consumo * costoK;

  print("El monto total a pagar es de: $pago");  
}