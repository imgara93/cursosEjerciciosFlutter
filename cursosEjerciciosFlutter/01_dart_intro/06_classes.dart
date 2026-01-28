void main() {
  // Creamos una instancia de Hero usando parámetros nombrados
  // 'required' obliga a pasar el nombre
  // 'power' es opcional y tiene un valor por defecto
  final Hero wolverine = Hero(name: 'Logan', power: 'Regeneración');

  // print() usa internamente el método toString()
  print(wolverine);

  // Acceso directo a las propiedades del objeto
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  String name;
  String power;

  /*
   Existen dos formas comunes de inicializar un constructor en Dart:

   1️⃣ Constructor con parámetros nombrados (sin cuerpo):
      - Más legible
      - Escalable cuando la clase crece
      - Permite valores por defecto y 'required'
  */
  Hero({required this.name, this.power = 'Sin poder'});

  /*
   2️⃣ Constructor tradicional con cuerpo usando lista de inicialización:
      - Útil cuando necesitas lógica previa
      - Se ejecuta antes del cuerpo del constructor
  */
  // Hero(String pName, String pPower)
  //     : name = pName,
  //       power = pPower;

  /*
   @override indica que estamos sobreescribiendo un método
   heredado de la clase base Object.
   Buena práctica: deja claro a otros desarrolladores
   que este método ya existía y fue redefinido.
  */
  @override
  String toString() {
    return '$name - $power';
  }
}
