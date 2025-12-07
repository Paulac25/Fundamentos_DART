import 'dart:io';

void main() {
  print("Ingrese la cantidad de registros de personas:");
  int n = int.parse(stdin.readLineSync()!);

  Map<int, int> municipioCont = {};
  Map<int, int> municipioTotal = {};
  Map<int, int> ciudadGrupo = {};
  Map<int, int> ciudadTotal = {};
  Map<int, int> estadoProfDesempleados = {};
  Map<int, int> estadoTotalProf = {};

  for (int i = 0; i < n; i++) {
    print("\n=== Registro ${i + 1} ===");

    print("Edad: ");
    int edad = int.parse(stdin.readLineSync()!);

    print("Nivel de educación (N,B,S,P): ");
    String nivel = stdin.readLineSync()!.toUpperCase();

    print("Situación (D/E): ");
    String situacion = stdin.readLineSync()!.toUpperCase();

    print("Código del municipio (6 dígitos): ");
    int codMunicipio = int.parse(stdin.readLineSync()!);
    int codCiudad = (codMunicipio ~/ 100);
    int codEstado = (codMunicipio ~/ 10000);

    municipioTotal[codMunicipio] = (municipioTotal[codMunicipio] ?? 0) + 1;
    ciudadTotal[codCiudad] = (ciudadTotal[codCiudad] ?? 0) + 1;

    bool cumple = (situacion == "D" && nivel == "N" && edad > 25);

    if (cumple) {
      municipioCont[codMunicipio] = (municipioCont[codMunicipio] ?? 0) + 1;
      ciudadGrupo[codCiudad] = (ciudadGrupo[codCiudad] ?? 0) + 1;
    }


    if (nivel == "P") {
      estadoTotalProf[codEstado] = (estadoTotalProf[codEstado] ?? 0) + 1;

      if (situacion == "D") {
        estadoProfDesempleados[codEstado] =
            (estadoProfDesempleados[codEstado] ?? 0) + 1;
      }
    }
  }

  municipioCont.forEach((cod, cant) {
    print("Municipio $cod → $cant personas del grupo especial");
  });

  ciudadGrupo.forEach((cod, cantGrupo) {
    int tot = ciudadTotal[cod]!;
    if (cantGrupo > tot / 2) {
      print("Ciudad $cod supera el 50% del grupo especial");
    }
  });

  double mayorPorcentaje = -1;
  int estadoMayor = 0;

  estadoTotalProf.forEach((estado, totalProf) {
    int des = estadoProfDesempleados[estado] ?? 0;
    double porc = (des / totalProf) * 100;

    if (porc > mayorPorcentaje) {
      mayorPorcentaje = porc;
      estadoMayor = estado;
    }
  });
  print("Estado con mayor porcentaje: $estadoMayor " "($mayorPorcentaje%)");
}
