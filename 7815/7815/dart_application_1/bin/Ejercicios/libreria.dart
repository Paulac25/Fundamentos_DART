  import 'dart:io';

void main() {
  print("Ingrese la cantidad de autores:");
  int cantAutores = int.parse(stdin.readLineSync()!);

  int totalLibros = 0;
  int totalCienciaFiccion = 0;
  int totalRomance = 0;

  String autorMasLibros = "";
  int mayorCantidadLibros = 0;

  for (int i = 1; i <= cantAutores; i++) {
    print("Autor $i ===");
    print("Apellido del autor: ");
    String apellido = stdin.readLineSync()!;

    print("Cantidad de libros de este autor: ");
    int cantLibrosAutor = int.parse(stdin.readLineSync()!);

    totalLibros += cantLibrosAutor;

    int totalPaginas = 0;
    int mayorPaginas = 0;
    int codigoMayor = 0;

    for (int j = 1; j <= cantLibrosAutor; j++) {
      print("Libro $j");

      print("Código del libro: ");
      int codigo = int.parse(stdin.readLineSync()!);

      print("Género (cf, r, a, t, n, au, ac): ");
      String genero = stdin.readLineSync()!.toLowerCase();

      print("Número de páginas: ");
      int paginas = int.parse(stdin.readLineSync()!);

      totalPaginas += paginas;

      if (paginas > mayorPaginas) {
        mayorPaginas = paginas;
        codigoMayor = codigo;
      }

      if (genero == "cf") totalCienciaFiccion++;
      if (genero == "r") totalRomance++;
    }

    print("Resultados por Autor:");
    print("Apellido: $apellido");
    print("Total de páginas escritas: $totalPaginas");
    print("Libro con más páginas: Código $codigoMayor con $mayorPaginas páginas");

    if (cantLibrosAutor > mayorCantidadLibros) {
      mayorCantidadLibros = cantLibrosAutor;
      autorMasLibros = apellido;
    }
  }

  double porcentajeCF = (totalCienciaFiccion / totalLibros) * 100;


  print("Porcentaje de libros de Ciencia Ficción: $porcentajeCF%");
  print("Cantidad de libros de Ciencia Ficción: $totalCienciaFiccion");
  print("Cantidad de libros Romance: $totalRomance");
  print("Autor con más libros: $autorMasLibros ($mayorCantidadLibros libros)");
}
