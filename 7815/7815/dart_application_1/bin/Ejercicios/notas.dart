import 'dart:io';

void main() {
  print("Digite la nota del examen de Matemática: ");
  double exM = double.parse(stdin.readLineSync()!);
  print("Digite la nota de su primera tarea de Matemática: ");
  double m1 = double.parse(stdin.readLineSync()!);
  print("Digite la nota de su segunda tarea de Matemática: ");
  double m2 = double.parse(stdin.readLineSync()!);
  print("Digite la nota de su tercera tarea de Matemática: ");
  double m3 = double.parse(stdin.readLineSync()!);

  double promTM = (m1 + m2 + m3) / 3;
  double notaM = (exM * 0.90) + (promTM* 0.10);

 
  print("\n Digite la nota del examen de Física: ");
  double exmF = double.parse(stdin.readLineSync()!);
  print("Digite la nota de su primera tarea de Física: ");
  double f1 = double.parse(stdin.readLineSync()!);
  print("Digite la nota de su segunda tarea de Física: ");
  double f2 = double.parse(stdin.readLineSync()!);

  double promTF = (f1 + f2) / 2;
  double notaF = (exmF * 0.80) + (promTF * 0.20);


  print("\nDigite la nota de su examen de Química: ");
  double examQuim = double.parse(stdin.readLineSync()!);
  print("Digite la nota de su primera tarea de Química: ");
  double q1 = double.parse(stdin.readLineSync()!);
  print("Digite la nota de su segunda tarea de Química: ");
  double q2 = double.parse(stdin.readLineSync()!);
  print("Digite la nota de su tercera tarea de Química: ");
  double q3 = double.parse(stdin.readLineSync()!);

  double promTQ = (q1 + q2 + q3) / 3;
  double notaQ = (examQuim * 0.85) + (promTQ * 0.15);

  double promedioFinal = (notaM + notaF + notaQ) / 3;

  
  print("\n----- RESULTADOS -----");
  print("Promedio Matemática: $notaM");
  print("Promedio Física: $notaF");
  print("Promedio Química: $notaQ");
  print("PROMEDIO GENERAL: $promedioFinal");
}
