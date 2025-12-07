import 'dart:io';

void main() {
  print("Digite el número de factura: ");
  int numFac = int.parse(stdin.readLineSync()!);
  print("Digite el nombre del cliente: ");
  String nombre = stdin.readLineSync()!;
  print("Digite el monto del a factura: ");
  double monto = double.parse(stdin.readLineSync()!);
  print("Digite la fecha de compra (AAAA-MM-DD): ");
  DateTime fecCom = DateTime.parse(stdin.readLineSync()!);
  print("Digite la fecha de pago (AAAA-MM-DD): ");
  DateTime fecPag = DateTime.parse(stdin.readLineSync()!);

  int dias = fecPag.difference(fecCom).inDays;
  double interes = 0;
  double descuento = 0;

  if (dias >= 60) {
    interes = monto * 0.08;
  } else if (dias >= 31 && dias <= 59) {
    interes = monto * 0.06;
  } else if (dias < 15) {
    descuento = monto * 0.02;
  }

  double montoFinal = monto + interes - descuento;
  
  print("Número de factura: $numFac");
  print("Cliente: $nombre");
  print("Monto original: $monto");
  print("Días transcurridos: $dias");
  print("Interés de mora: $interes");
  print("Monto descontado por pronto pago: $descuento");
  print("Monto final a pagar: $montoFinal");
}
