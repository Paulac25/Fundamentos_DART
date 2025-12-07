import 'dart:io';

void main() {

  print("Digite el capital a depositar: ");
  double capital = double.parse(stdin.readLineSync()!);
  print("Digite la tasa de interés: ");
  double tasa = double.parse(stdin.readLineSync()!);
  print("Digite la duración del depósito en semanas: ");

  int semanas = int.parse(stdin.readLineSync()!);
  int dias = semanas * 7;

  for (int i = 1; i <= dias; i++) {
    double interesDiario = (capital * tasa) / 365;
    capital += interesDiario;
  }

  print("El capital acumulado después de $dias días es: $capital");
}
