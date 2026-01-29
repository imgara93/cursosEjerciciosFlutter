void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'pikachu',
    'type': 'Electico',
    'level': 10,
    'moves': ['rayo', 'impact trueno', 'Trueno'],
    'stats': {'attack': 55, 'defense': 40, 'speed': 90},
  };

  int totalStats() {
    int sumaStats =
        pokemon['stats']['attack'] +
        pokemon['stats']['defense'] +
        pokemon['stats']['speed'];

    return sumaStats;
  }

  print(pokemon['name']);
  print(pokemon['type']);
  print(pokemon['level']);
  print(pokemon['moves'][1]);
  print(pokemon['moves'].length);
  print(pokemon['stats']['attack']);
  print(pokemon['stats']['defense']);
  print(pokemon['stats']['speed']);
  print(totalStats());
}
