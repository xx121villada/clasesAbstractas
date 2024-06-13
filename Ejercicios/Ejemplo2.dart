 // Definimos una clase abstracta
abstract class Vehiculo {
    // Este método será implementado por cualquier clase que extienda Vehiculo
    void encender();
}
// Definimos un mixin
mixin Radio {
    void encenderRadio() {
        print( "Radio encendida"); // Este método puede ser usado por cualquier clase
    }
}
 // Definimos dos interfaces
abstract class Conducir {
    void conducir();
}
abstract class Estacionar {
    void estacionar ();
}
 // Auto es una clase que implementa ambas interfaces
class Auto implements Conducir, Estacionar {
    @override
    void conducir() {
        print('Estoy conduciendo');
    }
    @override
    void estacionar() {
        print( 'Estoy estacionando');
    }
}
 // Deportivo es una clase que extiende Vehiculo, utiliza el mixin Radio e implementa Auto
class Deportivo extends Vehiculo with Radio implements Auto {
    //sobreescribimos los metodos
    @override
    void encender() {
        print( 'Vehículo encendido');
    }
    @override
    void conducir() {
        print("Estoy conduciendo a alta velocidad");
    }
    @override
    void estacionar() {
        print("Estoy estacionando cuidadosamente");
    }
}
void main() {
    Deportivo deportivo = Deportivo();
    deportivo.encender(); //"Vehículo encendido"
    deportivo.encenderRadio(); // "Radio encendida"
    deportivo.conducir(); // "Estoy conduciendo a alta velocidad"
    deportivo.estacionar(); // "Estoy estacionando cuidadosamente"
    Auto toyota = Auto();
    toyota.conducir(); //"Estoy conduciendo"
    toyota.estacionar(); // "Estoy estacionando"
}

