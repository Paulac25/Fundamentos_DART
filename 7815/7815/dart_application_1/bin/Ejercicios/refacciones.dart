import 'dart:io';

void main() {
  print("Digite el monto total de la compra (por ejemplo 600000): ");
  double montoT = double.parse(stdin.readLineSync()!);

  double invertirE = 0;
  double prestamoB = 0;
  double creditoF = 0;
  double intereses = 0;

  if (montoT > 500000) {
    invertirE = 0.55 * montoT; 
    prestamoB = 0.30 * montoT;     
    creditoF = montoT - invertirE - prestamoB;
  } else {
    invertirE = 0.70 * montoT;   
    prestamoB = 0;                     
    creditoF = montoT - invertirE;
  }
  intereses = 0.20 * creditoF;

  print("Monto total: $montoT");
  print("Invertirá: $invertirE");
  print("Pago a crédito al fabricante: $creditoF");
  print("Intereses a pagar: $intereses");
  if (prestamoB > 0) {
    print("Préstamo solicitado al banco: $prestamoB");
  } else {
    print("No se solicita préstamo al banco.");
  }
}
