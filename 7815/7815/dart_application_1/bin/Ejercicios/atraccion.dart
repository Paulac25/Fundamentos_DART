import 'dart:math';

void main() {
  const double G = 6.67259e-11;
  const double M_Tierra = 5.97e24;

  List<Map<String, dynamic>> satelites = [
    {"nombre": "Canada 1", "pais": "Canadá", "masa": 8300.0, "altura": 31200000.0},
    {"nombre": "Alfa 1", "pais": "Chile", "masa": 5500.0, "altura": 36000000.0},
    {"nombre": "Boby 4", "pais": "EE.UU.", "masa": 12000.0, "altura": 33450000.0},
    {"nombre": "Che 3", "pais": "Argentina", "masa": 3350.0, "altura": 34200000.0},
  ];

  double mayorF = -1;
  double menorF = double.infinity;
  double sumaF = 0;
  double mayorMasa = -1;
  double sumaMasa = 0;
  double menorAltura = double.infinity;
  double mayorAltura = -1;

  for (var s in satelites) {
    double masa = s["masa"];
    double altura = s["altura"];
    double r = altura;
    double F = G * ((masa * M_Tierra) / pow(r, 2));
    s["fuerza"] = F;

    if (F > mayorF) mayorF = F;
    if (F < menorF) menorF = F;

    sumaF += F;

    if (masa > mayorMasa) mayorMasa = masa;
    sumaMasa += masa;

    if (altura < menorAltura) menorAltura = altura;
    if (altura > mayorAltura) mayorAltura = altura;
  }

  double promedioF = sumaF / satelites.length;
  double promedioMasa = sumaMasa / satelites.length;

  print("Mayor fuerza: $mayorF N");
  print("Menor fuerza: $menorF N");
  print("Fuerza promedio: $promedioF N");
  print("Mayor masa: $mayorMasa kg");
  print("Masa promedio: $promedioMasa kg");
  print("Menor altura: $menorAltura m");
  print("Mayor altura: $mayorAltura m");
}
