import 'dart:io';

void main() {
  print("Digite la categoría del trabajador (1-4):");
  int categoria = int.parse(stdin.readLineSync()!);

  print("Digite el sueldo del trabajador:");
  double sueldo = double.parse(stdin.readLineSync()!);

  double aumento = 0;

  if (categoria == 1) {
    aumento = sueldo * 0.15;
  } else if (categoria == 2) {
    aumento = sueldo * 0.10;
  } else if (categoria == 3) {
    aumento = sueldo * 0.08;
  } else if (categoria == 4) {
    aumento = sueldo * 0.07;
  } else {
    print("Categoría inválida.");
    return;
  }

  double nuevoSueldo = sueldo + aumento;

  print("Categoría del trabajador: $categoria");
  print("Sueldo anterior: $sueldo");
  print("Aumento aplicado: $aumento");
  print("Nuevo sueldo: $nuevoSueldo");
}
