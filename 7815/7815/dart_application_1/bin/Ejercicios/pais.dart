import 'dart:async';
import 'dart:io';

void main() {
  print("¿Cuántas empresas desea registrar?");
  int n = int.parse(stdin.readLineSync()!);

  int totalEmpresas = 0;
  int empresasAgricolas = 0;
  int empresasMineras = 0;
  int empresasMinerasSur = 0;

  List<int> sumaTrabajadores = List.filled(6, 0);
  List<int> cantidadActividad = List.filled(6, 0);
  List<int> industriasPorLocal = List.filled(5, 0);

  for (int i = 1; i <= n; i++) {
    print("\n=== Empresa $i ===");

    print("Actividad (1-Agrícola,2-Industrial,3-Minera,4-Pesquera,5-Otra): ");
    int act = int.parse(stdin.readLineSync()!);
    print("Localización (1-Norte,2-Sur,3-Este,4-Oeste): ");
    int loc = int.parse(stdin.readLineSync()!);
    print("Número de trabajadores: ");
    int trab = int.parse(stdin.readLineSync()!);

    totalEmpresas++;
    if (act == 1) empresasAgricolas++;

    if (act == 3) {
      empresasMineras++;
      if (loc == 2) empresasMinerasSur++;
    }
 
    if (act >= 1 && act <= 5) {
      sumaTrabajadores[act] += trab;
      cantidadActividad[act]++;
    }

    if (act == 2 && loc >= 1 && loc <= 4) {
      industriasPorLocal[loc]++;
    }
  }
  
  double porcentajeAgricolas = totalEmpresas > 0 ? (empresasAgricolas / totalEmpresas) * 100 : 0;
  print("a) % de empresas agrícolas: ${porcentajeAgricolas.toStringAsFixed(2)} %");

  double porcentajeMinerasSur = empresasMineras > 0 ? (empresasMinerasSur / empresasMineras) * 100 : 0;
  print("b) % de empresas mineras del sur: ${porcentajeMinerasSur.toStringAsFixed(2)} %");

  print("c) Promedio de trabajadores por actividad:");
  for (int i = 1; i <= 5; i++) {
    double prom = cantidadActividad[i] > 0 ? sumaTrabajadores[i] / cantidadActividad[i] : 0;
    String nombreActividad;
    switch (i) {
      case 1:
        nombreActividad = "Agrícola";
        break;
      case 2:
        nombreActividad = "Industrial";
        break;
      case 3:
        nombreActividad = "Minera";
        break;
      case 4:
        nombreActividad = "Pesquera";
        break;
      default:
        nombreActividad = "Otra";
    }
    print("   $nombreActividad → ${prom.toStringAsFixed(2)} trabajadores");
  }
 
  int maxLocal = 1;
  for (int i = 2; i <= 4; i++) {
    if (industriasPorLocal[i] > industriasPorLocal[maxLocal]) {
      maxLocal = i;
    }
  }

  List<String> nombresLoc = ["", "Norte", "Sur", "Este", "Oeste"];
  print("d) Localización con más empresas industriales: ${nombresLoc[maxLocal]} ("
      "${industriasPorLocal[maxLocal]} empresas)");
}
