import 'dart:io';

void main() {
  print("Digite la cantidad de hectáreas del bosque:");
  double hectareas = double.parse(stdin.readLineSync()!);

  double metrosC = hectareas * 10000;

  double porcentajeP;
  double porcentajeO;
  double porcentajeC;


  if (metrosC > 1000000) {
    porcentajeP = 0.70;
    porcentajeO = 0.20;
    porcentajeC = 0.10;
  } else {
    porcentajeP = 0.50;
    porcentajeO = 0.30;
    porcentajeC = 0.20;
  }


  double areaP = metrosC * porcentajeP;
  double areaO = metrosC * porcentajeO;
  double areaC = metrosC * porcentajeC;


  double areaPP = 10 / 8;  
  double areaPO = 15 / 15; 
  double areaPC = 18 / 10; 


  int cantidadP = (areaP / areaPP).floor();
  int cantidadO = (areaO / areaPO).floor();
  int cantidadC = (areaC / areaPC).floor();

  print("Superficie total: $metrosC");
  print("Cantidad de pinos a sembrar: $cantidadP");
  print("Cantidad de oyameles a sembrar: $cantidadO");
  print("Cantidad de cedros a sembrar: $cantidadC");
}
