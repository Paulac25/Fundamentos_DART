
import 'dart:io';

void main() {
  print("Digite el Nombre del empleado:");
  String nombre = stdin.readLineSync()!;

  print("Digite la cédula:");
  String cedula = stdin.readLineSync()!;

  print("Digite el tipo de empleado (obrero - administrativo - ejecutivo):");
  String tipo = stdin.readLineSync()!.toLowerCase();

  print("Digite la cantidad de hijos:");
  int hijos = int.parse(stdin.readLineSync()!);

  print("Ingreses los días asistidos (máx 30):");
  int dias = int.parse(stdin.readLineSync()!);

  double sueldoBasico = 0;

  if (tipo == "obrero") {
    sueldoBasico = 100000;
  } else if (tipo == "administrativo") {
    sueldoBasico = 165500;
  } else {
    sueldoBasico = 250000;
  }

  if (hijos > 5) hijos = 5;

  double aporteHijos = sueldoBasico * 0.10 * hijos;
  double aporteAsistencia = dias > 28 ? sueldoBasico * 0.05 : 0;

  double cajaAhorros = sueldoBasico * 0.10;
  double seguroSocial = sueldoBasico * 0.02;

  double sueldoNeto =
      sueldoBasico + aporteHijos + aporteAsistencia - cajaAhorros - seguroSocial;

  print("Empleado: $nombre  -  Cédula: $cedula");
  print("Sueldo básico: $sueldoBasico");
  print("Caja de ahorros: $cajaAhorros");
  print("Seguro social: $seguroSocial");
  print("Sueldo Neto: $sueldoNeto");
}
