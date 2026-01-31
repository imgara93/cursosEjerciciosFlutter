void main() {
  print(appStart());

  print(numbers(5, 6));
  print(numbers(5));

  print(person(name: 'maria', age: 40));
}

String appStart() => "App iniciada correctamente";
int numbers(int a, [int b = 0]) => a + b;
String person({required String name, int age = 0}) =>
    'Hola $name, tienes $age años.';
