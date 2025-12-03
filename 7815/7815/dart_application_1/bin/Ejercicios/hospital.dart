import 'dart:io';

void main() {
  print('Ingrese el presupuesto anual del hospital: ');
  double presupuesto = double.parse(stdin.readLineSync()!);

  double ginecologia = presupuesto * 0.40;
  double traumatologia = presupuesto * 0.30;
  double pediatria = presupuesto * 0.30;

  print("Ginecología: $ginecologia");
  print("Traumatología: $traumatologia");
  print("Pediatría: $pediatria");
}
