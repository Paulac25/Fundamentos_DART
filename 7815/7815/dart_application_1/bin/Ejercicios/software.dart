import 'dart:io';

bool fechaPendiente(String fechaPagoStr, DateTime fechaCorte) {
  var parts = fechaPagoStr.split('/');
  int d = int.parse(parts[0]);
  int m = int.parse(parts[1]);
  int y = int.parse(parts[2]);
  DateTime f = DateTime(y, m, d);
  return !f.isAfter(fechaCorte);
}

void main() {
  print("Fecha de corte (dd/mm/yyyy): ");
  String corteStr = stdin.readLineSync()!;
  var pc = corteStr.split('/');
  DateTime fechaCorte = DateTime(int.parse(pc[2]), int.parse(pc[1]), int.parse(pc[0]));
  double sumaMaximosAgenciasNacionales = 0.0;
  int contadorAgenciasNacionales = 0;

  print("Cantidad de estados: ");
  int estados = int.parse(stdin.readLineSync()!);

  for (int e = 1; e <= estados; e++) {
    print("Código del estado $e: ");
    String codEstado = stdin.readLineSync()!;

    print("¿Cuántas agencias tiene este estado?: ");
    int agencias = int.parse(stdin.readLineSync()!);

    double montoTotalEstado = 0.0;
    String codAgenciaMayor = "";
    String codAgenciaMenor = "";
    double montoAgenciaMayor = -1;
    double montoAgenciaMenor = double.infinity;

    for (int a = 1; a <= agencias; a++) {
      print("Código de agencia $a: ");
      String codAgencia = stdin.readLineSync()!;

      print("Cantidad de clientes: ");
      int clientes = int.parse(stdin.readLineSync()!);

      int clientesConPagaresPendientes = 0;
      double montoTotalAgencia = 0.0;
      String clienteMayorDeuda = "";
      double mayorDeudaCliente = -1;

      for (int c = 1; c <= clientes; c++) {
        print("Código cliente: ");
        String codCliente = stdin.readLineSync()!;
        print("Nombre cliente: ");
        String nombreCliente = stdin.readLineSync()!;
        print("Dirección: ");
        String direccion = stdin.readLineSync()!;

        print("Cantidad de pagarés del cliente: ");
        int pagares = int.parse(stdin.readLineSync()!);

        int cantidadPagaresPendientesCliente = 0;
        double montoPendienteCliente = 0.0;

        print("Nombre: $nombreCliente");
        print("Dirección: $direccion");
        print("Código estado: $codEstado");
        print("Código agencia: $codAgencia");
        print("Detalle de pagarés pendientes (num, fecha, monto):");

        for (int p = 1; p <= pagares; p++) {
          print("Nº pagaré: ");
          String numPag = stdin.readLineSync()!;
          print("Fecha de venc. (dd/mm/yyyy): ");
          String fec = stdin.readLineSync()!;
          print("Monto: ");
          double monto = double.parse(stdin.readLineSync()!);

          if (fechaPendiente(fec, fechaCorte)) {
            cantidadPagaresPendientesCliente++;
            montoPendienteCliente += monto;
            print("$numPag , $fec , $monto");
          }
        }
        print("    Cantidad de pagarés pendientes: $cantidadPagaresPendientesCliente");
        print("    Monto total pendiente del cliente: $montoPendienteCliente");

        if (cantidadPagaresPendientesCliente > 0) {
          clientesConPagaresPendientes++;
          montoTotalAgencia += montoPendienteCliente;
        }
        if (montoPendienteCliente > mayorDeudaCliente) {
          mayorDeudaCliente = montoPendienteCliente;
          clienteMayorDeuda = codCliente;
        }
      }

      print("Resumen Agencia $codAgencia:");
      print("Cantidad clientes con pagarés pendientes: $clientesConPagaresPendientes");
      print("Monto total adeudado por la agencia: $montoTotalAgencia");
      print("Código cliente con mayor deuda: $clienteMayorDeuda (monto: $mayorDeudaCliente");

      montoTotalEstado += montoTotalAgencia;

      if (montoTotalAgencia > montoAgenciaMayor) {
        montoAgenciaMayor = montoTotalAgencia;
        codAgenciaMayor = codAgencia;
      }
      if (montoTotalAgencia < montoAgenciaMenor) {
        montoAgenciaMenor = montoTotalAgencia;
        codAgenciaMenor = codAgencia;
      }
      sumaMaximosAgenciasNacionales += montoTotalAgencia;
      contadorAgenciasNacionales++;
    }
    print(" Resumen Estado $codEstado ");
    print("Monto total adeudado en el estado: $montoTotalEstado");
    print("Código agencia con mayor monto adeudado: $codAgenciaMayor (monto: $montoAgenciaMayor");
    print("Código agencia con menor monto adeudado: $codAgenciaMenor (monto: $montoAgenciaMenor");
  }

  double promedioMaxAgencias = contadorAgenciasNacionales > 0 ? (sumaMaximosAgenciasNacionales / contadorAgenciasNacionales) : 0.0;
  print("Promedio del monto adeudado (en razón de los montos por agencia): $promedioMaxAgencias");
}
