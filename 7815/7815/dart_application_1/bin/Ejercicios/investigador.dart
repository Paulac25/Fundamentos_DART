import 'dart:io';

void main() {
  const int totalCuestionarios = 64;
  const int totalPreguntas = 23;

  double sumaPromedios = 0;
  double mayorPromedio = -1;
  int numMayor = 0;
  double menorPromedio = 999;
  int numMenor = 0;
  int conteoMenor3 = 0;
  int conteoMayor4 = 0;
  int conteoEntre45y5 = 0;

  for (int i = 1; i <= totalCuestionarios; i++) {
    print("\nCuestionario $i");

    int sumaPuntos = 0;

    for (int p = 1; p <= totalPreguntas; p++) {
      print("Ingrese la respuesta de la pregunta $p (1-5):");
      int valor = int.parse(stdin.readLineSync()!);

      while (valor < 1 || valor > 5) {
        print("Valor inválido. Ingrese un número entre 1 y 5:");
        valor = int.parse(stdin.readLineSync()!);
      }

      sumaPuntos += valor;
    }

    double promedio = sumaPuntos / totalPreguntas;
    print("Promedio del cuestionario $i: $promedio");

    sumaPromedios += promedio;


    if (promedio > mayorPromedio) {
      mayorPromedio = promedio;
      numMayor = i;
    }


    if (promedio < menorPromedio) {
      menorPromedio = promedio;
      numMenor = i;
    }


    if (promedio < 3) conteoMenor3++;
    if (promedio > 4) conteoMayor4++;
    if (promedio >= 4.5 && promedio <= 5) conteoEntre45y5++;
  }


  double promedioGeneral = sumaPromedios / totalCuestionarios;
  double porcentajeMenor3vsMayor4 = conteoMayor4 > 0 ? (conteoMenor3 / conteoMayor4) * 100 : 0;
  double porcentaje45y5 = (conteoEntre45y5 / totalCuestionarios) * 100;
  
  print("Promedio general: $promedioGeneral");
  print("Mayor promedio: $mayorPromedio (Cuestionario $numMayor)");
  print("Menor promedio: $menorPromedio (Cuestionario $numMenor)");
  print("Porcentaje < 3 respecto a > 4: $porcentajeMenor3vsMayor4%");
  print("Porcentaje entre 4.5 y 5: $porcentaje45y5%");
}
