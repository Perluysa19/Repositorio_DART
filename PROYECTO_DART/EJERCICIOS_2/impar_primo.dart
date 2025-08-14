//Determinar de un número indicado si es primo o par

bool esPar(int n) {
  return n % 2 == 0;
}

bool esPrimo(int n) {
  if (n <= 1) return false; 
  for (int i = 2; i <= n ~/ 2; i++) {
    if (n % i == 0) return false; 
  }
  return true;
}

void main() {
  int numero = 20;

  if (esPar(numero)) {
    print('$numero es par');
  } else {
    print('$numero es impar');
  }

  if (esPrimo(numero)) {
    print('$numero es primo');
  } else {
    print('$numero no es primo');
  }
}
