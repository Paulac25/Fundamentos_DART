import 'dart:io';
import 'dart:math';
void main(){
   print("Inserte el valor de a: ");
   double a = double.parse(stdin.readLineSync()!);
   
   print("Inserte el valor de b: ");
   double b = double.parse(stdin.readLineSync()!);

   print("Inserte el valor de c: ");
   double c = double.parse(stdin.readLineSync()!);

  double p = (a + b + c )/2;
  double area = sqrt(p * (p - a)* (p - b) *(p - c));

  print("El área de un triángulo en función de las longitudes de sus lados es: $area");
}