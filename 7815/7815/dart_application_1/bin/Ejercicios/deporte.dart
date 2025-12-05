import 'dart:io';

void main() {
  print("Digite la temperatura en grados Fahrenheit:");
  double temp = double.parse(stdin.readLineSync()!);

  String deporte;

  if (temp >= 10 && temp <= 32) {
    deporte = "Esquí";
  } else if (temp >= 33 && temp <= 50) {
    deporte = "Senderismo";
  } else if (temp >= 51 && temp <= 70) {
    deporte = "Golf";
  } else if (temp >= 71 && temp <= 85) {
    deporte = "Natación";
  } else if (temp > 85) {
    deporte = "Tenis";
  } else {
    deporte = "No hay deporte recomendado";
  }


  print("Temperatura: $temp");
  print("Deporte recomendado: $deporte");
}
