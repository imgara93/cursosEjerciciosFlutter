void main() {
  // Lista con valores repetidos
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('List original: $numbers');
  print('length: ${numbers.length}');
  print('index 0: ${numbers[0]}');
  print('first: ${numbers.first}');

  /*
   reversed:
   - NO devuelve una List
   - Devuelve un Iterable
   - No crea una copia inmediata
  */
  print('Reversed (Iterable): ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;

  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');

  /*
   Set:
   - Colección de valores únicos
   - Elimina duplicados automáticamente
  */
  print('Set: ${reversedNumbers.toSet()}');

  /*
   where():
   - Filtra elementos
   - Devuelve un Iterable
   - Se evalúa de forma perezosa (lazy)
  */
  final numbersGreaterThan5 = numbers.where((int num) {
    return num > 5;
  });

  print('>5 iterable: $numbersGreaterThan5');
  print('>5 set: ${numbersGreaterThan5.toSet()}');
}
