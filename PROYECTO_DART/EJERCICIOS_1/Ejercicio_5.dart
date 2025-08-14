//Iterar en una lista y mostrar sus elementos

void main() {
  List<String> frutas = ['Manzana', 'Banana', 'Naranja', 'Fresa'];

  for (int i = 0; i < frutas.length; i++) {
    print('Elemento $i: ${frutas[i]}');
  }
}
