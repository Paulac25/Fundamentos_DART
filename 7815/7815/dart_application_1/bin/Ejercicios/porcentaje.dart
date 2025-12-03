  import 'dart:io';

  void main(){
    print("Cantidad de hombres entre los estudiantes: ");
    int hombres  = int.parse(stdin.readLineSync()!);

    print("Cantidad de mujeres entre los estudiantes: ");
    int mujeres = int.parse(stdin.readLineSync()!);

    int cantidadEstd = hombres + mujeres;
    double porcentajeh = (hombres / cantidadEstd)* 100;
    double porcentajem = (mujeres / cantidadEstd)* 100;

    print("Cantidad de estudiantes: $cantidadEstd");
    print("Porcentaje de mujeres entre los estudiantes: $porcentajem");
    print("Porcentaje de hombres entre los estudiantes: $porcentajeh");
  }