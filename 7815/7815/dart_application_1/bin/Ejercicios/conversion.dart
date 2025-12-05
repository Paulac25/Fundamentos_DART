void main() {

  void generarTabla(int inicio, int fin, int paso) {
    for (int F = inicio; F <= fin; F += paso) {
      double C = 5 * (F - 32) / 9;
      double R = F + 459.67;
      double K = C + 273.15;

      print(
        "${F.toString().padLeft(9)} |"
        " ${C.toStringAsFixed(2).padLeft(10)} |"
        " ${K.toStringAsFixed(2).padLeft(10)} |"
        " ${R.toStringAsFixed(2).padLeft(10)}"
      );
    }

    print("\n");
  }

  print("Tabla de 28°F a 54°F en intervalos de 1°F");
  generarTabla(28, 54, 1);

  print("Tabla de 450°F a 950°F en intervalos de 50°F");
  generarTabla(450, 950, 50);

  print("Tabla de -50°F a 250°F en intervalos de 10°F");
  generarTabla(-50, 250, 10);
}
