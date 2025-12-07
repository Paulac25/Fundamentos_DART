import 'dart:io';

double calcularTarifa(double peso) {
  if (peso <= 3) return 0;
  if (peso <= 6) return 600;
  if (peso <= 9) return 1200;
  if (peso <= 12) return 1500;
  if (peso <= 15) return 2000;
  return 2500;
}

void main() {
  print("Cantidad de vuelos a procesar:");
  int vuelos = int.parse(stdin.readLineSync()!);

  int totalPasajerosGlobal = 0;
  int pasajerosQueNoPagaron = 0;

  for (int v = 1; v <= vuelos; v++) {
    print("\n=== VUELO $v ===");
    print("Número del vuelo:");
    String numVuelo = stdin.readLineSync()!;

    print("Cantidad de pasajeros en este vuelo:");
    int cantPasajeros = int.parse(stdin.readLineSync()!);

    double totalMontoVuelo = 0;
    double maxPesoPasajero = -1;
    double minPesoPasajero = 999999;
    String nombreMax = "";
    String nombreMin = "";
    String codigoAbordoMax = "";
    String codigoAbordoMin = "";

    for (int p = 1; p <= cantPasajeros; p++) {
      totalPasajerosGlobal++;

      print("Pasajero $p");
      print("Código de abordo:");
      String codigoAbordo = stdin.readLineSync()!;

      print("Nombre del pasajero:");
      String nombre = stdin.readLineSync()!;

      print("Cantidad de maletas:");
      int maletas = int.parse(stdin.readLineSync()!);

      double totalPeso = 0;
      double totalPagar = 0;
      double mayorPesoMaleta = -1;
      String codigoMaletaMayor = "";

      for (int m = 1; m <= maletas; m++) {
        print("Código de la maleta $m:");
        String codigoMaleta = stdin.readLineSync()!;

        print("Peso de la maleta en Kgs:");
        double peso = double.parse(stdin.readLineSync()!);

        totalPeso += peso;

        double tarifa = calcularTarifa(peso);
        totalPagar += tarifa * peso;

        if (peso > mayorPesoMaleta) {
          mayorPesoMaleta = peso;
          codigoMaletaMayor = codigoMaleta;
        }
      }
      print("Pasajero $nombre");
      print("Vuelo: $numVuelo");
      print("Código de abordo: $codigoAbordo");
      print("Total peso equipaje: $totalPeso Kg");
      print("Monto a pagar: $totalPagar");
      print("Maleta de mayor peso: $codigoMaletaMayor con $mayorPesoMaleta");

      totalMontoVuelo += totalPagar;

      if (totalPagar == 0) pasajerosQueNoPagaron++;
      if (totalPeso > maxPesoPasajero) {
        maxPesoPasajero = totalPeso;
        nombreMax = nombre;
        codigoAbordoMax = codigoAbordo;
      }

      if (totalPeso < minPesoPasajero) {
        minPesoPasajero = totalPeso;
        nombreMin = nombre;
        codigoAbordoMin = codigoAbordo;
      }
    }
    print("Pasajero con mayor peso total:");
    print("Nombre: $nombreMax - Código: $codigoAbordoMax - Peso: $maxPesoPasajero Kg");
    print("Pasajero con menor peso total:");
    print("Nombre: $nombreMin - Código: $codigoAbordoMin - Peso: $minPesoPasajero Kg");
    print("Monto total cancelado por equipaje en el vuelo: $totalMontoVuelo");
  }
  double porcentaje = (pasajerosQueNoPagaron * 100) / totalPasajerosGlobal;
  print("Pasajeros que no pagaron: $porcentaje");
}
