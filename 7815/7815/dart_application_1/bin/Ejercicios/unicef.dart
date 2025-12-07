import 'dart:io';

void main() {
  int total = 0;
  int tachira = 0;
  int capital = 0;
  int grupo1 = 0;
  int grupo2 = 0;
  int grupo3 = 0;
  int grupo4 = 0;
  int ninos = 0;
  int ninas = 0;

  while (true) {
    print("Ingrese sexo del niño (M/F). 'X' para terminar:");
    String sexo = stdin.readLineSync()!.toUpperCase();

    if (sexo == "X") break;

    print("Edad del niño:");
    int edad = int.parse(stdin.readLineSync()!);

    print("Estado del orfanatorio:");
    String estado = stdin.readLineSync()!.toLowerCase();

    total++;

    if (estado == "tachira") tachira++;
    if (estado == "distrito capital") capital++;
    if (sexo == "M") ninos++;
    if (sexo == "F") ninas++;

    if (edad < 1) {
      grupo1++;
    } else if (edad <= 3) {
      grupo2++;
    } else if (edad <= 6) {
      grupo3++;
    } else {
      grupo4++;
    }
  }

  double pctTachira = total > 0 ? (tachira * 100 / total) : 0;
  double pctCapital = total > 0 ? (capital * 100 / total) : 0;
  double pctNinos = total > 0 ? (ninos * 100 / total) : 0;
  double pctNinas = total > 0 ? (ninas * 100 / total) : 0;

  print("Porcentaje del Estado Táchira: $pctTachira");
  print("Porcentaje del Distrito Capital: ${pctCapital.toStringAsFixed(2)}%");

  print("Grupos de edad:");
  print("Grupo 1 (<1 año): $grupo1");
  print("Grupo 2 (1-3 años): $grupo2");
  print("Grupo 3 (4-6 años): $grupo3");
  print("Grupo 4 (>6 años): $grupo4");

  print("Niños y niñas:");
  print("Niños: $ninos $pctNinos %");
  print("Niñas: $ninas $pctNinas %");
}
