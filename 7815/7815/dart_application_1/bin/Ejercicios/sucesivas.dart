import 'dart:io';

void main() {
  stdout.write("Digite el dividendo: ");
  int A = int.parse(stdin.readLineSync()!);

  stdout.write("Digite el divisor: ");
  int B = int.parse(stdin.readLineSync()!);

  int cociente = 0;
  int resto = A;

  while (resto >= B) {
    resto = resto - B;
    cociente++;
  }

  print("Cociente = $cociente");
  print("Resto = $resto");
}
