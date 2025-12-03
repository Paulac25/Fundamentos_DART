import 'dart:io';

void main() {
  print("Ingrese el sueldo del trabajador: ");
  double sueldo = double.parse(stdin.readLineSync()!);

  double nuevoSueldo;

  if (sueldo < 40000) {
    nuevoSueldo = sueldo * 1.15;
  } else {
    nuevoSueldo = sueldo * 1.12;
  }

  print("El nuevo sueldo del trabajador es: $nuevoSueldo");
}
