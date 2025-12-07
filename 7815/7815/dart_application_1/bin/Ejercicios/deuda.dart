
void main() {
  int primerPago = 100;
  int diferencia = 125;
  int deuda = 12775;

  int pagoActual = primerPago;
  int suma = 0;
  int numeroPagos = 0;

  print("Pago - Monto - Pendiente");

  while (suma < deuda) {
    numeroPagos++;
    suma += pagoActual;

    int pendiente = deuda - suma;
    if (pendiente < 0) pendiente = 0;

    print("$numeroPagos\t$pagoActual\t$pendiente");

    pagoActual += diferencia;
  }

  int ultimoPago = primerPago + (numeroPagos - 1) * diferencia;

  print("Número de pagos: $numeroPagos");
  print("Monto del último pago: $ultimoPago");
}
