void main() {
  print(greetEveryone());
  print('suma: ${addTwoNumbers(10, 30)}');
  print('suma: ${addTwoNumbersOptional(20, 40)}');

  print(greatPerson(name: 'yul', message: 'pu'));
}

/*
 Función sin parámetros
 => sintaxis flecha
 Se usa cuando la función tiene una sola expresión
*/
String greetEveryone() => 'Hello everyone!';

/*
 Función con parámetros obligatorios
 Retorna un int
*/
int addTwoNumbers(int a, int b) => a + b;

/*
 Parámetros opcionales posicionales:
 - Se definen con []
 - Pueden tener valores por defecto
 - Si no se asigna un valor, se usa el valor por defecto
*/
int addTwoNumbersOptional(int a, [int b = 0]) {
  return a + b;
}

/*
 Parámetros nombrados:
 - Se definen con {}
 - Mejoran la legibilidad
 - Pueden ser required
 - Pueden tener valores por defecto
*/
String greatPerson({required String name, String message = 'Hola'}) {
  return '$message, $name';
}
