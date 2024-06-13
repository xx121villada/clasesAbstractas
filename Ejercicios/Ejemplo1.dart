// Clase abstracta Jugador
abstract class Jugador {
  String nombre;
  int edad;
  String posicion;

  Jugador(this.nombre, this.edad, this.posicion);

  // Método abstracto que debe ser implementado por las subclases
  void entrenar();

  // Método no abstracto que puede ser utilizado por las subclases
  void jugarPartido() {
    print('$nombre está jugando el partido.');
  }
}

// Una subclase de Jugador: Defensa
class Defensa extends Jugador {
  Defensa(String nombre, int edad) : super(nombre, edad, 'Defensa');

  // Implementación del método abstracto
  @override
  void entrenar() {
    print('$nombre está practicando tácticas defensivas.');
  }
}

// Otra subclase de Jugador: Delantero
class Delantero extends Jugador {
  Delantero(String nombre, int edad) : super(nombre, edad, 'Delantero');

  // Implementación del método abstracto
  @override
  void entrenar() {
    print('$nombre está practicando tiros a gol.');
  }
}

void main() {
  // Se instancian las subclases
  var defensa = Defensa('Sergio Ramos', 35);
  var delantero = Delantero('Lionel Messi', 34);

  // Llamar a métodos de las instancias
  defensa.entrenar();        // Output: Sergio Ramos está practicando tácticas defensivas.
  defensa.jugarPartido();    // Output: Sergio Ramos está jugando el partido.

  delantero.entrenar();      // Output: Lionel Messi está practicando tiros a gol.
  delantero.jugarPartido();  // Output: Lionel Messi está jugando el partido.
}
