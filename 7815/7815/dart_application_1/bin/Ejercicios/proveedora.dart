import 'dart:io';

void main() {
  print("Ingrese cantidad de registros (vendedores):");
  int n = int.parse(stdin.readLineSync()!);


  Map<int, double> ventasCanal = {};
  Map<int, double> comisionCanal = {};
  Map<int, double> ventasCiudad = {};
  Map<int, double> esperadoCiudad = {};
  Map<int, double> ventasEstado = {};
  Map<int, double> comisionEstado = {};

  Map<int, double> ventaVendedor = {};
  Map<int, int> vendedorEstado = {};


  print("Ingrese cantidad de ciudades:");
  int c = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < c; i++) {
    print("\nCiudad ${i + 1}");
    print("Código de ciudad (4 dígitos): ");
    int codCiudad = int.parse(stdin.readLineSync()!);

    print("Monto de venta esperado: ");
    double esperado = double.parse(stdin.readLineSync()!);

    esperadoCiudad[codCiudad] = esperado;
  }


  for (int i = 0; i < n; i++) {
    print("Registro vendedor ${i + 1}");

    print("Código del vendedor (5 dígitos): ");
    int codVendedor = int.parse(stdin.readLineSync()!);

    print("Unidades vendidas: ");
    int unidades = int.parse(stdin.readLineSync()!);

    print("Monto total vendido: ");
    double monto = double.parse(stdin.readLineSync()!);

    int codCanal = codVendedor ~/ 100;  
    int codCiudad = codVendedor ~/ 1000; 
    int codEstado = codCiudad % 100;     

    vendedorEstado[codVendedor] = codEstado;
    ventaVendedor[codVendedor] = monto;

 
    int tipo = codVendedor ~/ 10000;  
    double comision = 0;

    if (tipo == 11) {
      comision = monto * 0.10;
    } else if (tipo == 12) {
      comision = monto * 0.15;
    }

 
    ventasCanal[codCanal] = (ventasCanal[codCanal] ?? 0) + monto;
    comisionCanal[codCanal] = (comisionCanal[codCanal] ?? 0) + comision;

    ventasCiudad[codCiudad] = (ventasCiudad[codCiudad] ?? 0) + monto;

    ventasEstado[codEstado] = (ventasEstado[codEstado] ?? 0) + monto;
    comisionEstado[codEstado] = (comisionEstado[codEstado] ?? 0) + comision;
  }

 
  ventasCanal.forEach((canal, total) {
    double com = comisionCanal[canal] ?? 0;

    String tipo = (canal ~/ 100 == 11) ? "Tienda" : "Calle";

    print("Canal: $canal");
    print("Tipo: $tipo");
    print("Total vendido: $total");
    print("Comisión pagada: $com");
  });


  ventasCiudad.forEach((ciudad, vendido) {
    double esperado = esperadoCiudad[ciudad] ?? 0;
    double porcentaje = esperado > 0 ? (vendido / esperado) * 100 : 0;

    print("Ciudad: $ciudad");
    print("Total vendido: $vendido");
    print("Porcentaje alcanzado: $porcentaje%");
  });


  Map<int, int> mayorVendedorEstado = {};
  Map<int, double> mayorMontoEstado = {};

  ventaVendedor.forEach((vend, monto) {
    int estado = vendedorEstado[vend]!;
    if (!mayorMontoEstado.containsKey(estado) ||
        monto > mayorMontoEstado[estado]!) {
      mayorMontoEstado[estado] = monto;
      mayorVendedorEstado[estado] = vend;
    }
  });

  comisionEstado.forEach((estado, com) {
    print("Estado: $estado");
    print("Comisión total pagada: $com");
    print("Vendedor que más vendió: $mayorMontoEstado");
    print("Monto vendido por ese vendedor: " "$mayorMontoEstado");
  });
}
