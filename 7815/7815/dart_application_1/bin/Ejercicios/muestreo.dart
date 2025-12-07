import 'dart:io';

void main(){

  int cantidadN = 0, cantidadJ = 0,cantidadA = 0, cantidadV = 0; 
  double sumaPN = 0,  sumaPJ = 0, sumaPA = 0, sumaPV = 0;

  for (int i = 1; i <= 100; i++){
    print("Digite su edad: ");
    int edad = int.parse(stdin.readLineSync()!);

    print("Digite su peso: ");
    double peso = double.parse(stdin.readLineSync()!);

   if (edad > 0 && edad <= 12) {
  cantidadN++;
  sumaPN += peso;
} else if (edad >= 13 && edad <= 29) {
  cantidadJ++;
  sumaPJ += peso;
} else if (edad >= 30 && edad <= 59) {
  cantidadA++;
  sumaPA += peso;
} else if (edad >= 60) {
  cantidadV++;
  sumaPV += peso;
}
  }
  double promedioN = cantidadN > 0 ? sumaPN / cantidadN : 0;
  double promedioJ = cantidadJ > 0 ? sumaPJ / cantidadJ : 0;
  double promedioA = cantidadA > 0 ? sumaPA / cantidadA : 0;
  double promedioV = cantidadV > 0 ? sumaPV / cantidadV : 0;

  print("La cantidad de niños es: $cantidadN y su promedio de peso es: $promedioN");
  print("La cantidad de Jóvenes es: $cantidadJ y su promedio de peso es: $promedioJ");
  print("La cantidad de adultos es: $cantidadA y su promedio de peso es: $promedioA");
  print("La cantidad de viejos es: $cantidadV y su promedio de peso es: $promedioV");
}