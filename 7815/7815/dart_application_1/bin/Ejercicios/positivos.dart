import 'dart:io';

void main() {
  print("Digite el valor de N:");
  int N = int.parse(stdin.readLineSync()!);

  print("Digite el valor de K (debe ser menor que N):");
  int K = int.parse(stdin.readLineSync()!);

  if (K >= N) {
    print("Error: K debe ser menor que N.");
    return;
  }

  print("\nConteo descendente:");
  for (int i = N; i >= K; i--) {
    print(i);
  }
}
