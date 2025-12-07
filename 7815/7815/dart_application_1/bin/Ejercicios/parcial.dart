import 'dart:io';

void main() {

  double menorProgramacion = double.infinity;
  double sumaProgramacion = 0;
  int totalAlumnos = 0;
  int noPresentaronIngles = 0;
  int siPresentaronIngles = 0;
  int aprobaronTodas = 0;
  int reprobaronMatematica = 0;
  int presentaronMatematica = 0;

  while (true) {
    print("\n¿Desea ingresar un alumno? (s/n): ");
    String opcion = stdin.readLineSync()!.toLowerCase();

    if (opcion != 's') {
      break;
    }
    totalAlumnos++;

    print("Nota de Matemática (si no presentó = -1): ");
    double notaMate = double.parse(stdin.readLineSync()!);
    print("Nota de Programación (si no presentó = -1): ");
    double notaProg = double.parse(stdin.readLineSync()!);
    print("Nota de Inglés (si no presentó = -1): ");
    double notaIng = double.parse(stdin.readLineSync()!);

    if (notaProg != -1) {
      if (notaProg < menorProgramacion) {
        menorProgramacion = notaProg;
      }
      sumaProgramacion += notaProg;
    }

    if (notaIng == -1) {
      noPresentaronIngles++;
    } else {
      siPresentaronIngles++;
    }

    bool aproboMate = notaMate >= 3;
    bool aproboProg = notaProg >= 3;
    bool aproboIng = notaIng >= 3;

    if (notaMate != -1 && notaProg != -1 && notaIng != -1) {
      if (aproboMate && aproboProg && aproboIng) {
        aprobaronTodas++;
      }
    }
    if (notaMate != -1) {
      presentaronMatematica++;
      if (notaMate < 3) {
        reprobaronMatematica++;
      }
    }
  }

  if (menorProgramacion == double.infinity) {
    print("a) Nadie presentó Programación.");
  } else {
    print("a) Nota menor de Programación: $menorProgramacion");
  }

  if (siPresentaronIngles == 0) {
    print("b) Nadie presentó inglés. No se puede calcular porcentaje.");
  } else {
    double porcentajeNoIngles = (noPresentaronIngles / siPresentaronIngles) * 100;
    print("b) Porcentaje de alumnos que NO presentaron inglés respecto a los que SÍ: $porcentajeNoIngles");
  }
  print("c) Alumnos que aprobaron todas las materias: $aprobaronTodas");

  double promedioProg = siPresentaronIngles == 0 ? 0 : (sumaProgramacion / (sumaProgramacion == 0 ? 1 : totalAlumnos));
  if (sumaProgramacion == 0) {
    print("d) Nadie presentó Programación.");
  } else {
    print("d) Promedio general en Programación: ${(sumaProgramacion / (totalAlumnos)).toStringAsFixed(2)}");
  }

  if (presentaronMatematica == 0) {
    print("e) Nadie presentó Matemática.");
  } else {
    double porcentajeReprobaron = (reprobaronMatematica / presentaronMatematica) * 100;
    print("e) % de alumnos que reprobaron Matemática: ${porcentajeReprobaron.toStringAsFixed(2)}%");
  }
}
