//Crear una lista de 10 números entero, determinado el mayor y el menor de la lista 

void main() {
  List<int> numeros = [23, 5, 78, 12, 45, 9, 56, 1, 90, 33];

  int mayor = numeros.reduce((a, b) => a > b ? a : b);
  int menor = numeros.reduce((a, b) => a < b ? a : b);

  print('Lista: $numeros');
  print('Mayor: $mayor');
  print('Menor: $menor');
}
