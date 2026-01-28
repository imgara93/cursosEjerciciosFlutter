void main() {
  /*
   Datos crudos (raw data), típicamente vienen de una API o JSON
  */
  final Map<String, dynamic> rawJson = {
    'name': 'Peter Parker',
    'power': 'Spider sense',
    'isAlive': true,
  };

  /*
   2️⃣ Forma 2: Crear el objeto desde un Map (JSON)
   Usando un constructor nombrado
  */
  final spiderman = Hero.fromJson(rawJson);

  /*
   1️⃣ Forma 1: Crear el objeto directamente
   Usando el constructor principal con parámetros nombrados
  */
  final ironman = Hero(isAlive: false, power: 'Money', name: 'Tony Stark');

  print(ironman);
  print(spiderman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  /*
   1️⃣ Constructor principal:
   - Se usa cuando ya tienes los datos listos
   - Tipado y seguro
   - Muy común dentro de la app
  */
  Hero({required this.name, required this.power, required this.isAlive});

  /*
   2️⃣ Constructor nombrado desde JSON:
   - Se usa cuando los datos vienen como Map
   - Convierte datos dinámicos a tipos seguros
   - Usa lista de inicialización
  */
  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] ?? 'No name found',
      power = json['power'] ?? 'No power found',
      isAlive = json['isAlive'] ?? false;

  @override
  String toString() {
    return '$name, $power, is Alive? ${isAlive ? 'YES!' : 'Nope'}';
  }
}
