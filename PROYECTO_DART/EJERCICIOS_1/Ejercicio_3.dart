void main() {
  int a = 1;
  int b = 2;
  int c = 3;

  int maximo;

  if (a >= b && a >= c) {
    maximo = a;
  } else if (b >= a && b >= c) {
    maximo = b;
  } else {
    maximo = c;
  }

  print('El máximo es: $maximo');
}
