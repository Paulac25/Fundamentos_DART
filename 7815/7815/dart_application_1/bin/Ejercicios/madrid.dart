import 'dart:io';
void main(){
  print("Digite la cantidad de Chelines (chelines autriacos -> Pesetas): ");
  double chelines = double.parse(stdin.readLineSync()!);
  double pesetas = chelines * (956.871 / 100);
  print("---- / Los chelines en Pasetas son: $pesetas / -----" );

  print("Digite la cantidad de Dracmas (Dracmas Griegos -> Francos Francese): ");
  double dracmas = double.parse(stdin.readLineSync()!);
  double pesetas2 = dracmas * (88.607 / 100);
  double francos = pesetas2 / 20.110;
  print("---- / Los Dracmas en Francos son: $francos / -----" );

  print("Digite la cantidad de Pesetas (Pesetas -> Dólares)");
  double pesetas3 = double.parse(stdin.readLineSync()!);
  double dolares = pesetas3 / 122.499; 
  print("---- / Las Pesetas en Dólares son: $dolares / -----" );

  print("Digite la cantidad de Pesetas (Pesetas -> Liras Italianas)");
  double pesetas4 = double.parse(stdin.readLineSync()!);
  double lira = pesetas4 * ( 100 / 9.289 );
  print("---- / Las Pesetas en Liras son: $lira / -----");   
}