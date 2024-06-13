// Clase abstracta Ropa
abstract class Ropa {
  String color;
  String talla;

  Ropa(this.color, this.talla);

  void descripcion(); // Método abstracto para la descripción de la ropa
}

// Clase Camisa que extiende Ropa
class Camisa extends Ropa {
  String tipodeManga;

  Camisa(String color, String talla, this.tipodeManga) : super(color, talla);

  @override
  void descripcion() {
    print("Camisa - Color: $color, talla: $talla, tipo de manga: $tipodeManga");
  }
}

// Clase Jean que extiende Ropa
class Jean extends Ropa {
  String tipodeCorte;

  Jean(String color, String talla, this.tipodeCorte) : super(color, talla);

  @override
  void descripcion() {
    print("Jean - Color: $color, talla: $talla, tipo de corte: $tipodeCorte");
  }
}

void main() {
  // Creación de instancias y llamada a sus métodos
  Camisa camisa = Camisa("Azul", "M", "Larga");
  Jean jean = Jean("Negro", "32", "Recto");

  camisa.descripcion();
  jean.descripcion();
}
