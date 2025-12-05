import 'dart:io';

void main() {
  print("Digite el precio actual del automóvil:");
  double precioAutoActual = double.parse(stdin.readLineSync()!);

  print("Digite el precio del automóvil después de 3 años:");
  double precioAuto3 = double.parse(stdin.readLineSync()!);

  print("Digite el precio actual del terreno:");
  double precioTerrenoActual = double.parse(stdin.readLineSync()!);

  print("Digite el precio del terreno después de 3 años:");
  double precioTerreno3 = double.parse(stdin.readLineSync()!);

  double devaluacionAuto = precioAutoActual - precioAuto3;
  double incrementoTerreno = precioTerreno3 - precioTerrenoActual;

  if (devaluacionAuto <= (incrementoTerreno / 2)) {
    print("La devaluación del auto es menor o igual a la mitad del incremento del terreno.");
    print("Recomienda COMPRAR el automóvil.");
  } else {
    print("Es mejor NO comprar el automóvil.");
    print("La devaluación del auto es demasiado alta.");
  }
}
