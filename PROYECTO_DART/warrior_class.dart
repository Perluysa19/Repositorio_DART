import 'dart:io';

// Clase Poder
class Poder {
  String nombre;
  String descripcion;

  Poder(this.nombre, this.descripcion);

  void mostrarPoder() {
    print('  Poder: $nombre - $descripcion');
  }
}

// Clase base Guerrero
class Guerrero {
  String nombre;
  String tipo;
  List<Poder> poderes = [];

  Guerrero(this.nombre, this.tipo);

  void agregarPoder(Poder poder) {
    poderes.add(poder);
  }

  void mostrarGuerrero() {
    print('Guerrero: $nombre | Tipo: $tipo');
    for (var poder in poderes) {
      poder.mostrarPoder();
    }
  }

  void atacar() {
    print('$nombre ataca con poder básico.');
  }
}

// Subclases (Herencia y Polimorfismo)
class Mago extends Guerrero {
  Mago(String nombre) : super(nombre, 'Mago');

  @override
  void atacar() {
    print('$nombre lanza un hechizo poderoso.');
  }
}

class Arquero extends Guerrero {
  Arquero(String nombre) : super(nombre, 'Arquero');

  @override
  void atacar() {
    print('$nombre dispara una flecha precisa.');
  }
}

class Curandero extends Guerrero {
  Curandero(String nombre) : super(nombre, 'Curandero');

  @override
  void atacar() {
    print('$nombre cura a sus aliados.');
  }
}

// Clase controladora del juego
class Juego {
  List<Guerrero> guerreros = [];

  // Crear
  void agregarGuerrero(Guerrero guerrero) {
    guerreros.add(guerrero);
    print('Guerrero "${guerrero.nombre}" agregado correctamente.');
  }

  // Editar (por nombre)
  void editarGuerrero(String nombre, String nuevoNombre) {
    for (var g in guerreros) {
      if (g.nombre == nombre) {
        g.nombre = nuevoNombre;
        print('Guerrero "$nombre" editado a "$nuevoNombre".');
        return;
      }
    }
    print('No se encontró el guerrero "$nombre" para editar.');
  }

  // Eliminar (por nombre)
  void eliminarGuerrero(String nombre) {
    guerreros.removeWhere((g) => g.nombre == nombre);
    print('Guerrero "$nombre" eliminado (si existía).');
  }

  // Mostrar todos
  void mostrarGuerreros() {
    if (guerreros.isEmpty) {
      print('No hay guerreros registrados.');
      return;
    }
    for (var g in guerreros) {
      g.mostrarGuerrero();
      print('---');
    }
  }
}

void main() {
  var juego = Juego();
  bool salir = false;

  while (!salir) {
    print('\n=== MENÚ DE GUERREROS ===');
    print('1. Crear guerrero');
    print('2. Editar guerrero');
    print('3. Eliminar guerrero');
    print('4. Mostrar guerreros');
    print('5. Salir');
    stdout.write('Seleccione una opción: ');
    var opcion = stdin.readLineSync();

    switch (opcion) {
      case '1':
        stdout.write('Ingrese el nombre del guerrero: ');
        var nombre = stdin.readLineSync() ?? '';

        stdout.write('Seleccione el tipo (1=Mago, 2=Arquero, 3=Curandero): ');
        var tipoOpcion = stdin.readLineSync();

        Guerrero nuevoGuerrero;
        if (tipoOpcion == '1') {
          nuevoGuerrero = Mago(nombre);
        } else if (tipoOpcion == '2') {
          nuevoGuerrero = Arquero(nombre);
        } else {
          nuevoGuerrero = Curandero(nombre);
        }

        stdout.write('¿Cuántos poderes desea agregar?: ');
        var cantidadStr = stdin.readLineSync() ?? '0';
        var cantidad = int.tryParse(cantidadStr) ?? 0;

        for (int i = 0; i < cantidad; i++) {
          stdout.write('Nombre del poder ${i + 1}: ');
          var nomPoder = stdin.readLineSync() ?? '';
          stdout.write('Descripción del poder ${i + 1}: ');
          var descPoder = stdin.readLineSync() ?? '';
          nuevoGuerrero.agregarPoder(Poder(nomPoder, descPoder));
        }

        juego.agregarGuerrero(nuevoGuerrero);
        break;

      case '2':
        stdout.write('Ingrese el nombre del guerrero a editar: ');
        var nombre = stdin.readLineSync() ?? '';
        stdout.write('Ingrese el nuevo nombre: ');
        var nuevoNombre = stdin.readLineSync() ?? '';
        juego.editarGuerrero(nombre, nuevoNombre);
        break;

      case '3':
        stdout.write('Ingrese el nombre del guerrero a eliminar: ');
        var nombre = stdin.readLineSync() ?? '';
        juego.eliminarGuerrero(nombre);
        break;

      case '4':
        juego.mostrarGuerreros();
        break;

      case '5':
        salir = true;
        print('Saliendo del programa...');
        break;

      default:
        print('Opción no válida. Intente de nuevo.');
    }
  }
}
