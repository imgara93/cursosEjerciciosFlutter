void main() {
  final String pokemon = 'Dito';
  final int hp = 100;
  final bool isAlive = true;
  // estas son 2 formas de "decir" que en la lista es de strings
  final List<String> abilities = ["impostor"];
  final sprites = <String>["ditto/front.png", "ditto/back.png"];

  // dynamic == null , este es un tipo de dato que puede ser cualquier tipo de dato.
  dynamic errorMessage = "Hola";
  errorMessage = true;
  errorMessage = [1, 2, 3, 4, 5];
  errorMessage = {1, 2, 3, 4, 5};
  errorMessage = () => true;
  errorMessage = null;

  print(""" 
  
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  
  """);
}
