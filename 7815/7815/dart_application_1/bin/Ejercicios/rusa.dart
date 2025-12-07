import 'dart:io';

void main(){
    print("Digite el primer número: ");
    int multiplicador = int.parse(stdin.readLineSync()!);
    
    print("Digite el segundo número: ");
    int multiplicando = int.parse(stdin.readLineSync()!);

    int suma = 0;

    int m1 = multiplicador;
    int m2 = multiplicando;

    while (m1 >= 1){
      if (m1 % 2 != 0){
        suma += m2;
      }

      m1 = m1 ~/ 2;
      m2 = m2 * 2;
    }

    print("Resultador de la multiplicacion: ");
    print("$multiplicador x $multiplicando = $suma");
}