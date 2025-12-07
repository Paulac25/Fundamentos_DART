import 'dart:io';

void main() {
  print("¿Cuántos grupos (g) en el año?: ");
  int g = int.parse(stdin.readLineSync()!);

  double sumaPromediosGrupos = 0.0;

  for (int ig = 1; ig <= g; ig++) {
    print("Cantidad de alumnos en el grupo $ig: ");
    int n = int.parse(stdin.readLineSync()!);

    double sumaPromediosAlumnosDelGrupo = 0.0;

    for (int ia = 1; ia <= n; ia++) {
      print("\n  Nombre del alumno $ia: ");
      String nombre = stdin.readLineSync()!;

      print("  ¿Cuántas materias (m) lleva $nombre?: ");
      int m = int.parse(stdin.readLineSync()!);

      double sumaPromediosMateriasAlumno = 0.0;

      for (int im = 1; im <= m; im++) {
        print("    Materia $im: ingrese 3 calificaciones:");
        double s3 = 0;
        for (int k = 1; k <= 3; k++) {
          print("Nota $k: ");
          double nota = double.parse(stdin.readLineSync()!);
          s3 += nota;
        }
        double promMateria = s3 / 3.0;
        sumaPromediosMateriasAlumno += promMateria;
      }

      double promedioAlumno = m > 0 ? sumaPromediosMateriasAlumno / m : 0.0;
      print("Promedio de $nombre: ${promedioAlumno.toStringAsFixed(2)}");
      sumaPromediosAlumnosDelGrupo += promedioAlumno;
    }

    double promedioGrupo = n > 0 ? sumaPromediosAlumnosDelGrupo / n : 0.0;
    print("Promedio del grupo $ig: ${promedioGrupo.toStringAsFixed(2)}");
    sumaPromediosGrupos += promedioGrupo;
  }

  double promedioGeneral = g > 0 ? sumaPromediosGrupos / g : 0.0;
  print("Promedio general de los $g grupos: ${promedioGeneral.toStringAsFixed(2)}");
}
