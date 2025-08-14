// Buscar dentro de la siguiente cadena (“SENA ES ADSO”) la cantidad de repeticiones de las letras (E, A) 

void main() {
  String texto = "SENA ES ADSO";

  int contadorE = 0;
  int contadorA = 0;

  for (int i = 0; i < texto.length; i++) {
    String letra = texto[i].toUpperCase(); // para ignorar mayúsculas/minúsculas

    if (letra == 'E') contadorE++;
    if (letra == 'A') contadorA++;
  }

  print('Cantidad de E: $contadorE');
  print('Cantidad de A: $contadorA');
}
