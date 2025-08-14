// Remplazar de las siguientes palabras de esta cadena(“No sabía que era ser Dios hasta que aprendí a programar”) (Dios=>Programador, aprendí=>Ingrese, programar=>codificar) 

void main() {
  String texto = "No sabía que era ser Dios hasta que aprendí a programar";

  String nuevoTexto = texto
      .replaceAll('Dios', 'Programador')
      .replaceAll('aprendí', 'Ingrese')
      .replaceAll('programar', 'codificar');

  print(nuevoTexto);
}
