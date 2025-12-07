import 'dart:io';

const double PRECIO1 = 5000;
const double PRECIO2 = 8000;
const double PRECIO3 = 12000;

void main() {
  int totalSucursales = 0;
  int sucursalesQueCumplen = 0;

  print("Ingrese la cantidad de sucursales:");
  int cantSucursales = int.parse(stdin.readLineSync()!);
  totalSucursales = cantSucursales;

  for (int i = 1; i <= cantSucursales; i++) {
    print("Sucursal $i  ");
    print("Código de la sucursal (2 dígitos): ");
    int codigoSucursal = int.parse(stdin.readLineSync()!);

    print("Descripción de la sucursal: ");
    String descripcion = stdin.readLineSync()!;
    print("Monto esperado de la sucursal: ");
    double montoEsperado = double.parse(stdin.readLineSync()!);
    print("Cantidad de puntos de venta de esta sucursal: ");
    int cantPuntos = int.parse(stdin.readLineSync()!);

    double totalVendidoSucursal = 0;
    double mayorComision = 0;
    int puntoMayorComision = 0;

    for (int p = 1; p <= cantPuntos; p++) {
      print("Punto de venta $p");
      print("Código del punto (4 dígitos): ");
      int codigoPunto = int.parse(stdin.readLineSync()!);

      print("Unidades vendidas del producto 1: ");
      int u1 = int.parse(stdin.readLineSync()!);
      print("Unidades vendidas del producto 2: ");
      int u2 = int.parse(stdin.readLineSync()!);
      print("Unidades vendidas del producto 3: ");
      int u3 = int.parse(stdin.readLineSync()!);

      double ventasBrutas = (u1 * PRECIO1) + (u2 * PRECIO2) + (u3 * PRECIO3);
      double comision = ventasBrutas * 0.10;
      double montoNeto = ventasBrutas - comision;
      int totalUnidades = u1 + u2 + u3;
      int menorProducto = 1;
      int menorUnidades = u1;

      if (u2 < menorUnidades) {
        menorUnidades = u2;
        menorProducto = 2;
      }
      if (u3 < menorUnidades) {
        menorUnidades = u3;
        menorProducto = 3;
      }
      totalVendidoSucursal += ventasBrutas;

      if (comision > mayorComision) {
        mayorComision = comision;
        puntoMayorComision = codigoPunto;
      }
      print("Punto de Venta $codigoPunto");
      print("Unidades vendidas: $totalUnidades");
      print("Monto neto de la venta: \$montoNeto");
      print("Comisión pagada: $comision");
      print("Producto con menos ventas: $menorProducto");
    }

    double porcentaje = (totalVendidoSucursal / montoEsperado) * 100;

    if (totalVendidoSucursal >= montoEsperado) {
      sucursalesQueCumplen++;
    }

    print("Resumen de la Sucursal $codigoSucursal");
    print("Descripción: $descripcion");
    print("Monto total vendido: $totalVendidoSucursal");
    print("Porcentaje alcanzado: $porcentaje%");
    print("Punto con mayor comisión: $puntoMayorComision");
    print("Monto de la mayor comisión: $mayorComision");
  }
  double porcentajeCumplimiento = (sucursalesQueCumplen / totalSucursales) * 100;
  print("PORCENTAJE DE SUCURSALES QUE ALCANZARON SU META: $porcentajeCumplimiento%");
}
