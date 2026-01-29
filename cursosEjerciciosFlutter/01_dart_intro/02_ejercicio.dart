void main() {
  String namePokemon = 'pikachu';
  int nivel = 10;
  bool isLegendary = false;
  List<String> abilities = ['impact trueno', 'rayo', 'Trueno '];
  List<int> estadistics = [55, 40, 90];
  late dynamic status;

  status = 'mareado';
  status = false;

  bool isPokemonOk() {
    return status;
  }

  print('''
    $namePokemon
    $nivel
    $isLegendary
    $abilities
    Ataque: ${estadistics[0]}
    Defensa: ${estadistics[1]}
    Velocidad: ${estadistics[2]}  
    El pokemon esta bien? ${isPokemonOk()}
  ''');
}
