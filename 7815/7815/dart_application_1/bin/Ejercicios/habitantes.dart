import 'dart:io';

void main() {
  int totalPoblacion5Estados = 0;

  int mayorPoblacion = -1;
  int menorPoblacion = 999999999;

  String nombreMayor = "";
  String nombreMenor = "";

  for (int i = 1; i <= 5; i++) {
    print("Nombre del Estado $i: ");
    String nombreEstado = stdin.readLineSync()!;

    print("¿Cuántos municipios tiene $nombreEstado?: ");
    int M = int.parse(stdin.readLineSync()!);

    int poblacionEstado = 0;

    for (int j = 1; j <= M; j++) {
      print("Habitantes del municipio $j: ");
      int hab = int.parse(stdin.readLineSync()!);
      poblacionEstado += hab;
    }

    totalPoblacion5Estados += poblacionEstado;

    if (poblacionEstado > mayorPoblacion) {
      mayorPoblacion = poblacionEstado;
      nombreMayor = nombreEstado;
    }

    if (poblacionEstado < menorPoblacion) {
      menorPoblacion = poblacionEstado;
      nombreMenor = nombreEstado;
    }
  }

  print("Ingrese la población total del país: ");
  int totalPais = int.parse(stdin.readLineSync()!);

  double porcentaje = (totalPoblacion5Estados / totalPais) * 100;
  double promedio = totalPoblacion5Estados / 5;

  print("a) Estado con mayor población: $nombreMayor → $mayorPoblacion habitantes");
  print("b) Estado con menor población: $nombreMenor → $menorPoblacion habitantes");
  print("c) Porcentaje respecto al total del país: ${porcentaje.toStringAsFixed(2)} %");
  print("d) Promedio de habitantes por Estado: ${promedio.toStringAsFixed(2)}");
}
