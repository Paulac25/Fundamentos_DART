import 'dart:io';
void main(){
  print("Digite el valor de a");
  double a = double.parse(stdin.readLineSync()!);

  print("Digite el valor de b");
  double b = double.parse(stdin.readLineSync()!);

  print("Digite el valor de c");
  double c = double.parse(stdin.readLineSync()!);

  print("Digite el valor de d");
  double d = double.parse(stdin.readLineSync()!);

  print("Digite el valor de e");
  double e = double.parse(stdin.readLineSync()!);

  print("Digite el valor de f");
  double f = double.parse(stdin.readLineSync()!);

  double x = ((c * e) - (b * f)) / ((a * e ) - (b * d ));
  double y = ((a * f) - (c * d)) / ((a * e ) - (b * d ));

  print("EL valor de x es: $x");
  print("EL valor de y es: $y");
}