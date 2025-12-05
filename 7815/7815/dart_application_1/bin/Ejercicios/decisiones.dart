import 'dart:io';

void main() {
  print("Digite el capital actual de la empresa:");
  double capital = double.parse(stdin.readLineSync()!);

  double prestamo = 0;
  double nuevoSaldo = capital;

  if (capital < 0) {
    prestamo = 10000 - capital;
    nuevoSaldo = 10000;
  } else if (capital <= 20000) {
    prestamo = 20000 - capital;
    nuevoSaldo = 20000;
  } else {
    prestamo = 0;
    nuevoSaldo = capital;
  }

  double equipo = 5000;
  double mobiliario = 2000;
  double restante = nuevoSaldo - equipo - mobiliario;

  double insumos = restante / 2;
  double incentivos = restante / 2;

  print("Nuevo saldo disponible: $nuevoSaldo");
  print("Préstamo necesario: $prestamo");
  print("Equipo de cómputo: $equipo");
  print("Mobiliario: $mobiliario");
  print("Insumos: $insumos");
  print("Incentivos al personal: $incentivos");
}
