import 'dart:io';

void main() {
  print("Digite el monto de la hipoteca:");
  double hipoteca = double.parse(stdin.readLineSync()!);

  print("Digite la inversión total necesaria:");
  double inversionTotal = double.parse(stdin.readLineSync()!);

  double aportePersona = 0;
  double aporteSocio = 0;

  if (hipoteca < 1000000) {
    aportePersona = inversionTotal / 2;
    aporteSocio = inversionTotal / 2;

    print("Hipoteca menor a 1.000.000");
    print("La inversión será 50% y 50%.");
  } else {

    aportePersona = hipoteca;

    double resto = inversionTotal - hipoteca;
    double adicional = resto / 2;

    aportePersona += adicional;
    aporteSocio = adicional;

    print("Hipoteca igual o mayor a 1.000.000");
    print("Él aporta la hipoteca y el resto se divide en partes iguales.");
  }
  print("Aporte de la persona: $aportePersona");
  print("Aporte del socio: $aporteSocio");
}
