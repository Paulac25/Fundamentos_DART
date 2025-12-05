import 'dart:io';

void main() {
  print("Digite A:");
  int A = int.parse(stdin.readLineSync()!);

  print("Digite B:");
  int B = int.parse(stdin.readLineSync()!);

  print("Digite C:");
  int C = int.parse(stdin.readLineSync()!);

  print("Digite D:");
  int D = int.parse(stdin.readLineSync()!);


  int N = A * 1000 + B * 100 + C * 10 + D;

  print("Número formado: $N");

  int centenas = (N / 100).round() * 100;

  print("Número redondeado a la centena más próxima: $centenas");
}
