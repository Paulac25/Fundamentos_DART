import 'dart:io';

void main() {
  print("Digite el Valor1: ");
  double valor1 = double.parse(stdin.readLineSync()!);

  print("Digite el Valor2: ");
  double valor2 = double.parse(stdin.readLineSync()!);

  print("Digite el Valor3: ");
  double valor3 = double.parse(stdin.readLineSync()!);


  double triangulo = (valor1 * valor2) / 2;
  double circulo = valor2 * (valor1 * valor1);
  double rectangulo = valor1 * valor2;

  bool coincide = false;

  if (triangulo == valor3) {
    print("Coincide con un TRIÁNGULO (área = $triangulo)");
    coincide = true;
  }

  if (circulo == valor3) {
    print("Coincide con un CÍRCULO (área = $circulo)");
    coincide = true;
  }

  if (rectangulo == valor3) {
    print("Coincide con un RECTÁNGULO (área = $rectangulo)");
    coincide = true;
  }
}
