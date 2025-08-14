//Realizar las tablas de multiplicar de un número dado
void main() {
  int numero = 6;

  print('Tabla de multiplicar del $numero');
  for (int i = 1; i <= 10; i++) {
    print('$numero x $i = ${numero * i}');
  }
}
