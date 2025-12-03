import 'dart:io';
void main(){
  print("Valor de su primera nota: ");
  double n1 = double.parse(stdin.readLineSync()!);

  print("Valor de su segunda nota: ");
  double n2  =double.parse(stdin.readLineSync()!);

  print("Valor de su tercera nota: ");
  double n3 = double.parse(stdin.readLineSync()!);

  print("Valor de su examen final: ");
  double exf = double.parse(stdin.readLineSync()!);

  print("Valor de su trabajo final: ");
  double trf  = double.parse(stdin.readLineSync()!);

  double promedioP = (n1 + n2 + n3)/3;
  double promediop2 = promedioP * 0.55; 
  double promedioF = exf * 0.30;
  double promedioT = trf * 0.15;
  double Final = promediop2 + promedioF + promedioT;

  print("El promedio de sus calificaciones parciales: $promedioP");
  print("El promedio de sus calificaciones parciales con el 55%: $promediop2");
  print("EL promedio de su examen final (30%): $promedioF");
  print("El promedio de su trabajo final(15%): $promedioT");
  print("--------- // --------");
  print("LA CALIFICACION FINAL DE COMPUTACION ES: $Final");
}