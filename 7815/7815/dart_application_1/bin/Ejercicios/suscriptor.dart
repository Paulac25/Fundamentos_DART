import 'dart:io';

void main() {
  print("Digite la lectura anterior (kWh):");
  int lecturaAnterior = int.parse(stdin.readLineSync()!);

  print("Digite la lectura actual (kWh):");
  int lecturaActual = int.parse(stdin.readLineSync()!);

  int consumo = lecturaActual - lecturaAnterior;
  double costoKwh = 0;

  if (consumo <= 100) {
    costoKwh = 2.622;
  } else if (consumo <= 300) {
    costoKwh = 79.78;
  } else if (consumo <= 500) {
    costoKwh = 89.52;
  } else {
    costoKwh = 97.95;
  }

  double montoLuz = consumo * costoKwh;

  print("Consumo total: $consumo");
  print("Costo por kWh: $costoKwh");
  print("Monto por consumo eléctrico: $montoLuz");
}
