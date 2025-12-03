import 'dart:io';

void main() {
  print("Ingrese el capital invertido: ");
  double capital = double.parse(stdin.readLineSync()!);

  print("Ingrese la tasa de interés: ");
  double tasa = double.parse(stdin.readLineSync()!);

  double interes = (capital * tasa) / 100;

  print("El interés generado es: $interes");

  double totalFinal;

  if (interes > 7000) {
    totalFinal = capital + interes;
    print("El interés supera 7000, será reinvertido.");
  } else {
    totalFinal = capital;
    print("El interés NO supera 7000, no se reinvierte.");
  }

  print("Total final en la cuenta: $totalFinal");
}
