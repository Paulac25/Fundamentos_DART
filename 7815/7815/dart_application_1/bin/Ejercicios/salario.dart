import 'dart:io';
void main(){
  print("Digite sus Horas trabajadas");
  double horasT = double.parse(stdin.readLineSync()!);

  print("Digite el precio por hora");
  double precioH = double.parse(stdin.readLineSync()!);

  double salario = horasT * precioH; 
  double descuento = salario * 0.20;
  double salarioNeto = salario - descuento;

  print("Su descuento es de: $descuento");
  print("Su salario Neto es de: $salarioNeto");
}