import 'dart:io';
void main(){
  
  print("Ingrese la cantidad de N1");
  double n1 = double.parse(stdin.readLineSync()!);
  print("Ingrese la cantidad de N2");
  double n2 = double.parse(stdin.readLineSync()!);
  print("Ingrese la cantidad de N3");
  double n3 = double.parse(stdin.readLineSync()!);
  print("Ingrese la cantidad de N4");
  double n4 = double.parse(stdin.readLineSync()!);
  print("Ingrese la cantidad de N5");
  double n5 = double.parse(stdin.readLineSync()!);
  print("Ingrese la cantidad de N6");
  double n6 = double.parse(stdin.readLineSync()!);
  print("Ingrese la cantidad de N7");
  double n7 = double.parse(stdin.readLineSync()!);
  print("Ingrese la cantidad de N8");
  double n8 = double.parse(stdin.readLineSync()!);

  double total = ((n1 * 50000)+(n2 * 20000)+(n3 * 10000)+(n4 * 5000)+(n5 * 2000)+(n6 * 1000)+(n7 * 500)+(n8 * 100));
  print("El total de dinero en el banco es de: $total");
}