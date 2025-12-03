import 'dart:io';
void main(){
  print("Cantidad en metros: ");
  double metros = double.parse(stdin.readLineSync()!);

  double pulgadas  = metros * 39.27;
  double pulgadas_sobrantes = pulgadas % 12;
  int piesCompletos =  pulgadas ~/ 12; 
  
  print("La cantidad dada en pies completos es: $piesCompletos");
  print("La cantidad dada en pulgadas es: $pulgadas");
  print("Las pulgadas sobrantes son: $pulgadas_sobrantes"); 
}