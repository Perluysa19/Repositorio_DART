//Crear una lista de 10 números que no se repitan 

import 'dart:math';

void main() {
  Random random = Random();
  Set<int> numerosUnicos = {};

  while (numerosUnicos.length < 10) {
    numerosUnicos.add(random.nextInt(100));
  }

  List<int> lista = numerosUnicos.toList();
  print('Lista de 10 números sin repetir: $lista');
}
