//Determinar cuando un año es bisiesto de acuerdo a un año indicado

void main() {
  int anio = 2025;

  if (anio % 4 == 0 && (anio % 100 != 0 || anio % 400 == 0)) {
    print('$anio es bisiesto');
  } else {
    print('$anio no es bisiesto');
  }
}