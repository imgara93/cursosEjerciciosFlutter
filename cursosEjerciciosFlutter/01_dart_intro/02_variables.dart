void main() {
  // Tipos de datos básicos
  final String pokemon = 'Ditto';
  final int hp = 100;
  final bool isAlive = true;

  /*
   Listas tipadas:
   Estas son dos formas equivalentes de indicar que
   la lista solo puede contener Strings.
  */
  final List<String> abilities = ['Impostor'];
  final sprites = <String>['ditto/front.png', 'ditto/back.png'];

  /*
   dynamic:
   - Puede cambiar de tipo en tiempo de ejecución
   - NO es lo mismo que null
   - Pierde seguridad de tipos
  */
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5];
  errorMessage = {1, 2, 3, 4, 5};
  errorMessage = () => true;
  errorMessage = null;

  /*
   Interpolación de strings:
   Dart permite usar $variable dentro de strings multilínea
  */
  print("""
$pokemon
$hp
$isAlive
$abilities
$sprites
$errorMessage
""");
}
