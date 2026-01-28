void main() {
  /*
   Map<String, dynamic>:
   - Las claves son String
   - Los valores pueden ser de cualquier tipo
   - Muy común para representar datos tipo JSON
  */
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,

    // Lista tipada dentro de un Map
    'abilities': <String>['impostor'],

    /*
     Map anidado:
     - Las claves son int
     - Los valores son String
    */
    'sprites': {1: 'front/img.jpg', 2: 'back/img.jpg'},
  };

  // Imprime todo el Map
  print(pokemon);

  // Acceso a valores simples
  print('Name: ${pokemon['name']}');

  // Acceso a un Map anidado
  print('Sprites: ${pokemon['sprites']}');

  /*
   Acceso a valores internos del Map anidado
   (dynamic → Map → valor)
  */
  print('Back: ${pokemon['sprites'][2]}');
  print('Front: ${pokemon['sprites'][1]}');
}
