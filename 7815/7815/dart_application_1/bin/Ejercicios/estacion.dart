import 'dart:io';

void main() {
  int dias = 0;
  int errores = 0;

  double sumaMax = 0;
  double sumaMin = 0;

  while (true) {
    print("Ingrese temperatura máxima (0 para terminar):");
    double tmax = double.parse(stdin.readLineSync()!);
    print("Ingrese temperatura mínima:");
    double tmin = double.parse(stdin.readLineSync()!);
    if (tmax == 0 && tmin == 0) break;

    bool error = false;

    if (tmax < 14 || tmax > 30) error = true;
    if (tmin < 14 || tmin > 30) error = true;

    if (error) {
      errores++;
    }

    dias++;
    sumaMax += tmax;
    sumaMin += tmin;
  }

  double mediaMax = dias > 0 ? sumaMax / dias : 0;
  double mediaMin = dias > 0 ? sumaMin / dias : 0;

  double porcentajeErrores = dias > 0 ? (errores * 100) / dias : 0;

  print("Número de días: $dias");
  print("Media de máximas: $mediaMax °C");
  print("Media de mínimas: $mediaMin °C");
  print("Errores ingresados: $errores");
  print("Porcentaje de errores: $porcentajeErrores");
}
