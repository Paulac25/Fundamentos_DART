import 'dart:io';

void main() {
  print("Digite su Nombre: ");
  String nombre = stdin.readLineSync()!;

  print("Ingrese el número de horas normales trabajadas: ");
  double horasT = double.parse(stdin.readLineSync()!);

  print("Ingrese el valor por hora: ");
  double valorH = double.parse(stdin.readLineSync()!);

  print("Ingrese las horas extras trabajadas: ");
  double extrasT = double.parse(stdin.readLineSync()!);

  print("Ingrese número de hijos: ");
  int hijos = int.parse(stdin.readLineSync()!);


  double sueldoB = horasT * valorH;
  double valorExtra = valorH * 1.25;
  double pagosExtra = extrasT * valorExtra;

  double paroF = sueldoB * 0.05;
  double politica = sueldoB * 0.02;
  double cajaA = sueldoB * 0.07;
  double totalD = paroF + politica + cajaA;

  double asignacionA = 25000;
  double asignacionP = 18000;
  int asignacionH = 17300 * hijos;
  double totalA = asignacionA + asignacionH + asignacionP;

  double sueldoNeto = sueldoB - totalD + pagosExtra + totalA;

  print("\n----- TRABAJADOR: $nombre -----\n");

  print(" ----- DEDUCCIONES ----");
  print("Paro Forzoso (5%): $paroF");
  print("Política Habitacional (2%): $politica");
  print("Caja de Ahorro (7%): $cajaA");
  print("Total Deducciones: $totalD\n");

  print(" ----- ASIGNACIONES ---- ");
  print("Actualización Académica: $asignacionA");
  print("Asignación por Hijos: $asignacionH");
  print("Prima por Hogar: $asignacionP");
  print("Total Asignaciones: $totalA\n");

  print("SUELDO NETO: $sueldoNeto");
}
