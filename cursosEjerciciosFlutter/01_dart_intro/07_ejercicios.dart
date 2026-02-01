void main() {
  final Map<String, dynamic> rawJsonVillaon = {
    'name': 'Huason',
    'isAlive': true,
  };

  final rawJsonHero = {
    'name': 'Thor',
    'power': 1000, // ❌ debería ser String
    'isAlive': 'yes', // ❌ debería ser bool
  };

  final List<Map<String, dynamic>> heroesJson = [
    {'name': 'Batman', 'power': 'Money', 'isAlive': true},
    {'name': 'Superman', 'power': 'Strength', 'isAlive': true},
    {'name': 'Flash', 'power': null, 'isAlive': true},
  ];

  final villan1 = Villan.fromJson(rawJsonVillaon);
  print(villan1);

  final hero1 = Hero.fromJson(rawJsonHero);
  print(hero1);

  final List<Hero> heroes = [];

  for (final heroJson in heroesJson) {
    final hero = Hero.fromJson(heroJson);
    heroes.add(hero);
  }

  for (final hero in heroes) {
    print(hero);
  }
}

//Definicion de la clase
class Villan {
  //las propiedades
  final String name;
  final String power;
  final bool isAlive;

  //el constructor
  Villan.fromJson(Map<String, dynamic> json)
    //inicialisador
    : name = json['name'] ?? 'no name found',
      power = json['power'] ?? 'Unknow power',
      isAlive = json['isAlive'] ?? false;
  //anotacion
  @override
  //metodo
  String toString() {
    return '$name, $power, $isAlive';
  }
}

class Hero {
  final String name;
  final String power;
  final bool isAlive;

  Hero.fromJson(Map<String, dynamic> json)
    : name = json['name'] is String ? json['name'] : 'no name found',
      power = json['power'] is String ? json['power'] : 'Unknow power',
      isAlive = json['isAlive'] is bool ? json['isAlive'] : false;

  @override
  String toString() {
    return '$name, $power, $isAlive';
  }
}
