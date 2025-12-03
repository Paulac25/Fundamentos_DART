import 'dart:io';

void main() {
  print("Ingrese el capital prestado: ");
  double capital = double.parse(stdin.readLineSync()!);

  print("Ingrese el interés pagado: ");
  double interes = double.parse(stdin.readLineSync()!);

  double tasa = (interes * 100) / (capital * 4);

  print("El porcentaje anual cobrado es: $tasa");
}
