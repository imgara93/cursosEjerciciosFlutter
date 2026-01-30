void main() {
  final numbers = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 9, 10];

  print('Lista: ${numbers}');
  print('Lista invertida de tipo iterable: ${numbers.reversed}');
  print('Lista invertida:${numbers.reversed.toList()}');

  print('Cantidad de elementos en lista: ${numbers.length}');
  print('Set de valores: ${numbers.toSet()}');
  print('Cantidad de elementos en el set: ${numbers.toSet().length}');

  final listMayorTo3 = numbers.where((int num) {
    return num > 3;
  });
  print('Numeros mayores a 3 en una lista iterable: ${listMayorTo3}');
  print('Numero mayores a 3 en una lista:${listMayorTo3.toList()}');

  // No se recomienda usar length directamente en un Iterable,
  // porque puede forzar su evaluación o ser costoso.
  // Es mejor convertirlo a List o Set si necesitas length.

  print(
    'Cantidad de numeros mayores a 3 en la lista: ${listMayorTo3.toList().length}',
  );
}
