
// Creacion de la clase abstracta con atributos y metodos abstractos
abstract class Personaje{
  String rol;
  int puntosDeVida;
  int damage;
  Personaje(this.rol, this.puntosDeVida, this.damage);
  void ataque();
  void movimiento();
}

// Creacion de un Mixin que tiene acceso a los atributos de la clase abstracta Personaje gracias a la palabra reservada on
mixin ataqueEspecial on Personaje{
  void realizarAtaque(){
    int damageEspecial = damage*2;
    print("El $rol realizo su ataque especial y causo $damageEspecial de daño\n");
  }
}

// Creacion de la subclase Jugador que hereda la clase abstracta Personaje y la cual utiliza el mixin con la palabra reservada with
class Jugador extends Personaje with ataqueEspecial{
  Jugador(String rol, int puntosDeVida, int damage) : super(rol,puntosDeVida,damage);

  // Se sobreescribe el metodo abtracto ataque ahora dandole una funcionalidad
  @override
  void ataque() {
    print("\n El $rol realizo el ataque y causo $damage de daño\n");
  }

  // Se sobreescribe el metodo abtracto movimiento() ahora dandole una funcionalidad
  @override 
  void movimiento(){
    print("El $rol realizo un movimiento, su movimiento()es de 3km/h \n");
  }
}

// Creacion de la subclase Enemigo que hereda de la clase abstracta Personaje y utilizando el mixin creado anteriormente
class Enemigo extends Personaje with ataqueEspecial{
  Enemigo(String rol, int puntosDeVida, int damage) : super(rol, puntosDeVida, damage);

  // Se sobreescribe el metodo abtracto ataque ahora dandole una funcionalidad
   @override
  void ataque() {
    print("El $rol realizo el ataque y causo $damage de daño \n");
  }

  // Se sobreescribe el metodo abtracto movimiento() ahora dandole una funcionalidad
  @override 
  void movimiento(){
    print("EL $rol realizo un movimiento, su movimiento()es de 1km/h \n");
  }
}

void main(){

  // instanciamos la clase Jugador 
  Jugador jugador1 = Jugador("Jugador", 200, 20);

  // Llamamos los metodos de la clase Jugador
  jugador1.ataque();
  jugador1.movimiento();
  jugador1.realizarAtaque();

  // Instanciamos la clase Enemigo 
  Enemigo enemigoBasico = Enemigo("enemigo", 100, 10);

  // Llamamos los metodos de la clase Enemigo
  enemigoBasico.movimiento();
  enemigoBasico.ataque();
  enemigoBasico.realizarAtaque();
}