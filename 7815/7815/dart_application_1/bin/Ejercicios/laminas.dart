void main(){
  double valorA = 4 * 1.5;
  double valorB = 0.5;

  int cantidadP = (valorA ~/ valorB) ;
  double desperdicio = valorA - (cantidadP * valorB);

  print("La cantidad de piezas que se fabrican con una lámina: $cantidadP");
  print("Desperdicio: $desperdicio");
}