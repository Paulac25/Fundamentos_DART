import 'dart:io';

void main() {
  print("Cantidad de obreros en la bloquera: ");
  int obreros = int.parse(stdin.readLineSync()!);

  print("Límite semanal por obrero (unidades esperadas): ");
  int limite = int.parse(stdin.readLineSync()!);

  int obrerosQueCumplieron = 0;
  String nombreMasProd = "";
  int masProdujo = -1;
  int sumaTotalProduccion = 0;

  for (int i = 1; i <= obreros; i++) {
    print("Digite el nombre del obrero $i: ");
    String nombre = stdin.readLineSync()!;
    int totalSemana = 0;

    for (int d = 1; d <= 7; d++) {
      print("  Unidades día $d: ");
      int u = int.parse(stdin.readLineSync()!);
      totalSemana += u;
    }

    double porcentaje = (totalSemana / limite) * 100;
    print("Obrero: $nombre");
    print("Total semana: $totalSemana unidades");
    print("Porcentaje respecto al límite ($limite): $porcentaje%");

    if (totalSemana >= limite) obrerosQueCumplieron++;
    if (totalSemana > masProdujo) {
      masProdujo = totalSemana;
      nombreMasProd = nombre;
    }
    sumaTotalProduccion += totalSemana;
  }

  double promedioBloquera = obreros > 0 ? sumaTotalProduccion / obreros : 0;
  double porcCumplieron = obreros > 0 ? (obrerosQueCumplieron * 100 / obreros) : 0;
  print("Porcentaje de obreros que alcanzaron o superaron la meta: $porcCumplieron%");
  print("Obrero que más produjo: $nombreMasProd → $masProdujo unidades");
  print("Promedio de producción semanal de la bloquera: $promedioBloquera unidades");
}
