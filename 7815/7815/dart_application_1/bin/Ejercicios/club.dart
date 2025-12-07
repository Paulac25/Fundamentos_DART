import 'dart:io';

void main() {
  int personas = 5;
  int basculas = 10;

  for (int i = 1; i <= personas; i++) {
    print("Persona $i:");
    print("Nombre: ");
    String nombre = stdin.readLineSync()!;

    print("Peso anterior (kg): ");
    double pesoAnterior = double.parse(stdin.readLineSync()!);

    double suma = 0;
    for (int b = 1; b <= basculas; b++) {
      print("  Lectura báscula $b: ");
      double lect = double.parse(stdin.readLineSync()!);
      suma += lect;
    }

    double promedio = suma / basculas;
    double diff = promedio - pesoAnterior;

    if (diff > 0) {
      print("$nombre → SUBIÓ $diff kg (promedio ahora: $promedio.toStringAsFixed(2)} kg)");
    } else if (diff < 0) {
      print("$nombre → BAJÓ ${(-diff).toStringAsFixed(2)} kg (promedio ahora: $promedio kg)");
    } else {
      print("$nombre → No cambió (promedio: $promedio kg)");
    }
  }
}
