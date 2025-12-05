import 'dart:io';

void main() {

  print("Digite el primer número: ");
  double num1 = double.parse(stdin.readLineSync()!);

  print("Digite el segundo número: ");
  double num2 = double.parse(stdin.readLineSync()!);

  if (num1 > num2) {
    print("El número mayor es: $num1");
  } else if (num2 > num1) {
    print("El número mayor es: $num2");
  } else {
    print("Ambos números son iguales.");
  }
}
