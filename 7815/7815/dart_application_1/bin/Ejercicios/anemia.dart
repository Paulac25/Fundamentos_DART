import 'dart:io';

void main() {
  print("Digite la edad en años (si es menor de 1 año use decimales, ej: 0.5): ");
  double edad = double.parse(stdin.readLineSync()!);

  String sexo = "";
  if (edad > 15) {
    print("Digite el sexo (M para mujer, H para hombre): ");
    sexo = stdin.readLineSync()!.toUpperCase();
  }

  print("Digite el nivel de hemoglobina (g%): ");
  double hemo = double.parse(stdin.readLineSync()!);

  double min = 0;
  double max = 0;


  if (edad >= 0 && edad <= 1/12) {
    min = 13;
    max = 26;
  } else if (edad > 1/12 && edad <= 0.5) {
    min = 10;
    max = 18;
  } else if (edad > 0.5 && edad <= 1) {
    min = 11;
    max = 15;
  } else if (edad > 1 && edad <= 5) {
    min = 11.5;
    max = 15;
  } else if (edad > 5 && edad <= 10) {
    min = 12.6;
    max = 15.5;
  } else if (edad > 10 && edad <= 15) {
    min = 13;
    max = 15.5;
  } else if (edad > 15 && sexo == "M") {
    min = 12;
    max = 16;
  } else if (edad > 15 && sexo == "H") {
    min = 14;
    max = 18;
  }

  if (hemo < min) {
    print("POSITIVO -> ANEMIA.");
  } else {
    print("NEGATIVO -> ANEMIA.");
  }
}
