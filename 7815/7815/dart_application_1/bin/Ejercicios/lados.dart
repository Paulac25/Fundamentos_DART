import 'dart:io';
import 'dart:math';

void main() {
  print("Digite lado A:");
  double A = double.parse(stdin.readLineSync()!);

  print("Digite lado B:");
  double B = double.parse(stdin.readLineSync()!);

  print("Digite lado C:");
  double C = double.parse(stdin.readLineSync()!);


  List<double> lados = [A, B, C];
  lados.sort(); 

  double menor1 = lados[0];
  double menor2 = lados[1];
  double mayor = lados[2];


  if (menor1 + menor2 > mayor) {
    print("Los lados SI forman un triángulo.");


    if (A == B && B == C) {
      print("Tipo: Equilátero");
    } else if (A == B || A == C || B == C) {
      print("Tipo: Isósceles");
    } else {
      print("Tipo: Escaleno");
    }


    double S = (A + B + C) / 2;
    double area = sqrt(S * (S - A) * (S - B) * (S - C));

    print("Área del triángulo: ${area.toStringAsFixed(2)}");

  } else {
    print("Los lados NO forman un triángulo.");
  }
}
