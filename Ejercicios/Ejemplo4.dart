// Definición de una clase abstracta llamada Animal
abstract class Animal {
  String especie; // Variable de instancia para almacenar la especie del animal
  int edad; // Variable de instancia para almacenar la edad del animal

  // Constructor para inicializar las variables especie y edad
  Animal(this.especie, this.edad);

  // Método para simular la acción de respirar
  void respirar() {
    print('$especie esta respirando');
  }

  // Método para simular la acción de dormir
  void dormir() {
    print("$especie esta durmiendo");
  }
}

// Definición de una interfaz (abstracta) llamada AccionesAnimal
abstract class AccionesAnimal {
  void hacerSonido(); // Método abstracto para hacer sonido
  void comer(); // Método abstracto para comer
}

// Definición de un mixin llamado Volar, que solo puede ser aplicado en clases que extiendan Animal
mixin Volar on Animal {
  // Método para simular la acción de volar
  void volar() {
    print("$especie esta volando");
  }

  // Método para simular la acción de aterrizar
  void aterrizar() {
    print("$especie esta aterrizando");
  }
}

// Definición de un mixin llamado Nadar, que solo puede ser aplicado en clases que extiendan Animal
mixin Nadar on Animal {
  // Método para simular la acción de nadar
  void nadar() {
    print("$especie esta nadando");
  }
}

// Definición de un mixin llamado Caminar, que solo puede ser aplicado en clases que extiendan Animal
mixin Caminar on Animal {
  // Método para simular la acción de caminar
  void caminar() {
    print("$especie esta caminando");
  }
}

// Clase Gato que extiende de Animal y utiliza el mixin Caminar, además de implementar la interfaz AccionesAnimal
class Gato extends Animal with Caminar implements AccionesAnimal {
  // Constructor que inicializa la especie y la edad del gato
  Gato(String especie, int edad) : super(especie, edad);

  // Implementación del método hacerSonido de la interfaz AccionesAnimal
  @override
  void hacerSonido() {
    print("$especie emite este sonido: Miau");
  }

  // Implementación del método comer de la interfaz AccionesAnimal
  @override
  void comer() {
    print("$especie esta comiendo carne");
  }
}

// Clase Pez que extiende de Animal y utiliza el mixin Nadar, además de implementar la interfaz AccionesAnimal
class Pez extends Animal with Nadar implements AccionesAnimal {
  // Constructor que inicializa la especie y la edad del pez
  Pez(String especie, int edad) : super(especie, edad);
  
  // Implementación del método hacerSonido de la interfaz AccionesAnimal
  @override
  void hacerSonido() {
    print("$especie emite este sonido: Blub");
  }

  // Implementación del método comer de la interfaz AccionesAnimal
  @override
  void comer() {
    print("$especie esta comiendo algas");
  }
}

// Clase Pajaro que extiende de Animal y utiliza los mixins Volar y Caminar, además de implementar la interfaz AccionesAnimal
class Pajaro extends Animal with Volar, Caminar implements AccionesAnimal {
  // Constructor que inicializa la especie y la edad del pájaro
  Pajaro(String especie, int edad) : super(especie, edad);

  // Implementación del método hacerSonido de la interfaz AccionesAnimal
  @override
  void hacerSonido() {
    print("$especie emite este sonido: Pi");
  }

  // Implementación del método comer de la interfaz AccionesAnimal
  @override
  void comer() {
    print("$especie esta comiendo semillas");
  }
}

void main() {
  // Creación de una instancia de la clase Gato
  Gato gato = Gato("Gato", 2);
  gato.hacerSonido(); // Llamada al método hacerSonido del gato
  gato.caminar(); // Llamada al método caminar del gato

  // Creación de una instancia de la clase Pez
  Pez pez = Pez("Pez", 1);
  pez.hacerSonido(); // Llamada al método hacerSonido del pez
  pez.nadar(); // Llamada al método nadar del pez

  // Creación de una instancia de la clase Pajaro
  Pajaro pajaro = Pajaro("Pajaro", 3);
  pajaro.hacerSonido(); // Llamada al método hacerSonido del pájaro
  pajaro.volar(); // Llamada al método volar del pájaro
  pajaro.aterrizar(); // Llamada al método aterrizar del pájaro
}
