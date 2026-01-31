void main() {
  final villano = Villain(name: 'Huason');
  print(villano.name);
  print(Hero(name: 'Batman', power: 'Dinero').describe());
  print(Hero(name: 'Tony Stark', power: ""));
}

class Villain {
  String name;
  String evilPlan;

  Villain({required this.name, this.evilPlan = 'Desconocido'});

  @override
  String toString() {
    return '$name - $evilPlan';
  }
}

class Hero {
  final String name;
  final String power;

  Hero({required this.name, String power = ''})
    : power = power.isEmpty ? 'Sin Poder' : power;

  String describe() {
    return "El héroe $name usa su poder: $power.";
  }

  @override
  String toString() {
    return '$name - $power';
  }
}
