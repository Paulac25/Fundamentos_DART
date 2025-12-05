import 'dart:io';

void main() {
  int tresCorrectas = 0;
  int unoDos = 0;
  int unoTres = 0;
  int dosTres = 0;
  int alMenos1 = 0;
  int alMenos2 = 0;
  int alMenos3 = 0;
  int ninguna = 0;

  for (int i = 1; i <= 100; i++) {
    print("Persona $i:");

    stdout.write("¿Respondió bien la pregunta 1? (1=Sí, 2=No): ");
    int p1 = int.parse(stdin.readLineSync()!);

    stdout.write("¿Respondió bien la pregunta 2? (1=Sí, 2=No): ");
    int p2 = int.parse(stdin.readLineSync()!);

    stdout.write("¿Respondió bien la pregunta 3? (1=Sí, 2=No): ");
    int p3 = int.parse(stdin.readLineSync()!);

    if (p1 == 1 && p2 == 1 && p3 == 1) tresCorrectas++;
    if (p1 == 1 && p2 == 1 && p3 == 2) unoDos++;
    if (p1 == 1 && p2 == 2 && p3 == 1) unoTres++;
    if (p1 == 2 && p2 == 1 && p3 == 1) dosTres++;

    if (p1 == 1) alMenos1++;
    if (p2 == 1) alMenos2++;
    if (p3 == 1) alMenos3++;

    if (p1 == 2 && p2 == 2 && p3 == 2) ninguna++;
  }

  print("a) Tres correctas: $tresCorrectas");
  print("b) Solo la 1 y la 2: $unoDos");
  print("c) Solo la 1 y la 3: $unoTres");
  print("d) Solo la 2 y la 3: $dosTres");
  print("e) La primera por lo menos: $alMenos1");
  print("f) La segunda por lo menos: $alMenos2");
  print("g) La tercera por lo menos: $alMenos3");
  print("h) Ninguna correcta: $ninguna");
}
