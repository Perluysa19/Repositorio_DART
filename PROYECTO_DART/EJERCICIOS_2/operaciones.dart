//Realizar una función llamada operaciones, la cual recibe dos valores y la operación, debe mostrar el resultado de la operación indicada según corresponda, mínimo cuatro operaciones. 

void operaciones(double a, double b, String operacion) {
  double resultado;

  if (operacion == '+') {
    resultado = a + b;
  } else if (operacion == '-') {
    resultado = a - b;
  } else if (operacion == '*') {
    resultado = a * b;
  } else if (operacion == '/') {
    if (b != 0) {
      resultado = a / b;
    } else {
      print('Error: división por cero');
      return;
    }
  } else {
    print('Operación no válida');
    return;
  }

  print('Resultado de $a $operacion $b = $resultado');
}

void main() {
  operaciones(10, 5, '+');  // Suma
  operaciones(10, 5, '-');  // Resta
  operaciones(10, 5, '*');  // Multiplicación
  operaciones(10, 5, '/');  // División
  operaciones(10, 0, '/');  // Caso división por cero
  operaciones(10, 5, '^');  // Operación no válida
}
