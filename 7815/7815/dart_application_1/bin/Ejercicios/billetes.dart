import 'dart:io';

void main() {

  print("Digite la cantidad de dinero: ");
  int cantidad = int.parse(stdin.readLineSync()!);

  List<int> billetes = [50000, 20000, 10000, 5000, 2000, 1000];

  int restante = cantidad;

  for (int valor in billetes) {
    int numeroBilletes = restante ~/ valor;
    restante = restante % valor;
    print("Billetes de $valor : $numeroBilletes");
  }

  print("Cantidad total ingresada: $cantidad");
}
