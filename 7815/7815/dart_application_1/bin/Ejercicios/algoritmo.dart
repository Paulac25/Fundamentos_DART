import 'dart:io';
void main (){
  print("Digite el valor de a: ");
  double A = double.parse(stdin.readLineSync()!);

  print("Digite el valor de b: ");
  double B = double.parse(stdin.readLineSync()!);

  print("Digite el valor de c: ");
  double C = double.parse(stdin.readLineSync()!);

  print("Digite el valor de d: ");
  double D = double.parse(stdin.readLineSync()!);

  double calcular =  (A - C) * (A - C);
  double calcular2 = (A - B) * (A - B) * (A - B) / D;
  if( D == 0 ){
    print("Se calculara con la siguiente formula: (A - C) * (A - C): $calcular");
  }else if (D > 0){
    print("Se calculará con la siguiente formula: (A - B) * (A - B) * (A - B) / D: $calcular2");
  }else{
    print("No hay formula definida: ");
  }
} 