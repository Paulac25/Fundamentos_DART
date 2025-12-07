import 'dart:io';

void main() {
  print("Digite la cantidad de alumnos: ");
  int n = int.parse(stdin.readLineSync()!);

  int countMujeres = 0, countHombres = 0;
  int sumEdadMujeres = 0, sumEdadHombres = 0;
  Map<String,int> estadoCivilCount = {};
  Map<String,int> especialidadCount = {};
  int mujeresAdultas = 0;
  int hombresJovenes = 0;
  int hombresSolteros = 0, mujeresSolteras = 0;

  for (int i = 1; i <= n; i++) {
    print('\nAlumno $i:');

    print('Digite la edad edad: ');
    int edad = int.parse(stdin.readLineSync()!);

    print('Digite el Sexo (M/F): ');
    String sexo = stdin.readLineSync()!.trim().toUpperCase();

    print('Digite su Estado civil: ');
    String estado = stdin.readLineSync()!.trim();

    print('Digite su Especialidad: ');
    String especialidad = stdin.readLineSync()!.trim();

    if (sexo == 'M') {
      countMujeres++;
      sumEdadMujeres += edad;
      if (edad > 21) mujeresAdultas++;
      if (estado.toUpperCase().startsWith('S')) {
        mujeresSolteras++;
      }
    } else if (sexo == 'H' || sexo == 'MA' || sexo == 'MASC' || sexo == 'MASCULINO' || sexo == 'HOMBRE' || sexo == 'HM') {
      countHombres++;
      sumEdadHombres += edad;
      if (edad > 17 && edad < 21) hombresJovenes++;
      if (estado.toUpperCase().startsWith('S')) {
        hombresSolteros++;
      }
    } else {
      if (sexo.startsWith('F')) {
        countMujeres++;
        sumEdadMujeres += edad;
        if (edad > 21) mujeresAdultas++;
        if (estado.toUpperCase().startsWith('S')) mujeresSolteras++;
      } else {
        countHombres++;
        sumEdadHombres += edad;
        if (edad > 17 && edad < 21) hombresJovenes++;
        if (estado.toUpperCase().startsWith('S')) hombresSolteros++;
      }
    }
    estadoCivilCount[estado] = (estadoCivilCount[estado] ?? 0) + 1;
    especialidadCount[especialidad] = (especialidadCount[especialidad] ?? 0) + 1;
  }

  double promedioMujeres = countMujeres > 0 ? sumEdadMujeres / countMujeres : 0.0;
  double promedioHombres = countHombres > 0 ? sumEdadHombres / countHombres : 0.0;
  Map<String,double> porcentajeEstado = {};
  estadoCivilCount.forEach((k,v) {
    porcentajeEstado[k] = (v / n) * 100;
  });

  Map<String,double> porcentajeEspecialidad = {};
  especialidadCount.forEach((k,v) {
    porcentajeEspecialidad[k] = (v / n) * 100;
  });

  double porcentajeMujeresAdultas = countMujeres > 0 ? (mujeresAdultas / countMujeres) * 100 : 0.0;
  double porcentajeHombresJovenes = countHombres > 0 ? (hombresJovenes / countHombres) * 100 : 0.0;

  print("Promedio edad mujeres: $promedioMujeres");
  print("Promedio edad hombres: $promedioHombres");
  print("Cantidad mujeres: $countMujeres, Cantidad hombres: $countHombres");
  print("Porcentaje por estado civil:");
  porcentajeEstado.forEach((k,v) {
    print('   $k : ${v.toStringAsFixed(2)}%  (count=${estadoCivilCount[k]})');
  });
  print("Cantidad y % por especialidad:");
  especialidadCount.forEach((k,v) {
    print("$k : $v  -> $porcentajeEspecialidad[k])");
  });
  print("Porcentaje de mujeres adultas (>21) respecto al total de mujeres: $porcentajeMujeresAdultas");
  print( "Porcentaje de hombres jóvenes (17<edad<21) respecto al total de hombres: $porcentajeHombresJovenes");
  print("Hombres solteros: $hombresSolteros, Mujeres solteras: $mujeresSolteras");
}
