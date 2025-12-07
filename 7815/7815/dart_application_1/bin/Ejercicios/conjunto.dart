import 'dart:io';

void main() {
  print("¿Cuántos empleados va a procesar?:");
  int M = int.parse(stdin.readLineSync()!);

  int totalEdad = 0;
  double totalSueldos = 0;
  int totalVTipo1 = 0;
  int totalVTipo2 = 0;
  int totalVTipo3 = 0;
  int totalExtranjeroEdadImpar = 0;

  for (int i = 1; i <= M; i++) {
    print("Empleado $i");

    print("Digite su nombre:");
    String nombre = stdin.readLineSync()!;
    print("Digite su nacionalidad (V = Venezolano o E = Extranjero):");
    String nac = stdin.readLineSync()!.toUpperCase();
    print("Digite su edad:");
    int edad = int.parse(stdin.readLineSync()!);
    print("Tipo de empleado (1, 2 o 3):");
    int tipo = int.parse(stdin.readLineSync()!);
    print("Digite las Horas trabajadas:");
    double horas = double.parse(stdin.readLineSync()!);

    int pagoHora = 0;

    if (tipo == 1) pagoHora = 5000;
    else if (tipo == 2) pagoHora = 10000;
    else if (tipo == 3) pagoHora = 15000;

    double sueldoBasico = horas * pagoHora;
    double seguro = 0;

    if (sueldoBasico > 100000) {
      seguro = sueldoBasico * 0.03;
    }

    double sueldoNeto = sueldoBasico - seguro;
    if (nac == "V") {
      if (tipo == 1) totalVTipo1++;
      else if (tipo == 2) totalVTipo2++;
      else if (tipo == 3) totalVTipo3++;
    }


    if (nac == "E" && edad % 2 != 0) {
      totalExtranjeroEdadImpar++;
    }
    totalEdad += edad;
    totalSueldos += sueldoNeto;

    print("Sueldo Básico: $sueldoBasico");
    print("Seguro Social: $seguro");
    print("Sueldo Neto: $sueldoNeto");
  }
  double promedioEdad = totalEdad / M;
  
  print("Total Venezolanos Tipo 1: $totalVTipo1");
  print("Total Venezolanos Tipo 2: $totalVTipo2");
  print("Total Venezolanos Tipo 3: $totalVTipo3");

  print("Total Extranjeros con edad impar: $totalExtranjeroEdadImpar");
  print("Promedio de edad: $promedioEdad");
  print("Total general a pagar en sueldos: $totalSueldos");
}
