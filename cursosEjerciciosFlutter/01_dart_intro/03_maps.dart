void main() {
  final Map<String, dynamic> pokemon = {
    'name': 'Ditto',
    'hp': 100,
    'isAlive': true,
    'abilitienes': <String>['impostor'],
    'sprites': {1: 'front/img.jpg', 2: 'back/img.jpg'},
  };

  print(pokemon);
  print('Name: ${pokemon['name']}');
  print('Name: ${pokemon['sprites']}');

  print('Back: ${pokemon['sprites'][2]}');
  print('Front: ${pokemon['sprites'][1]}');
}
