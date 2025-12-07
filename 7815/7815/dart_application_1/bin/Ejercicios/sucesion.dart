void main(){
  int primerT = 6;
  int diferencia = 5;
  int numeroT  = 12;

  int termino12 = primerT +  (numeroT - 1) * diferencia;
  int suma12 = (numeroT ~/ 2) * (2 * primerT + (numeroT - 1) * diferencia);

  print("EL termino doceavo de la sucesión es: $termino12");
  print("La suma de la sucesión es: $suma12");
}