void main() {
  /*
   Creamos una instancia de Square.
   El constructor valida el valor antes de crear el objeto.
  */
  final mySquare = Square(side: -10);

  // No se puede acceder directamente a _side (es privado)
  // mySquare._side = 5; ❌

  // Acceso al getter (parece una propiedad, pero es una función)
  print('Área: ${mySquare.area}');
}

class Square {
  /*
   Propiedad privada:
   - El guion bajo (_) indica que solo es accesible
     dentro del mismo archivo.
   - Protege el estado interno del objeto.
  */
  double _side; // lado del cuadrado

  /*
   Constructor:
   - Recibe el lado como parámetro
   - Usa assert para validar reglas del negocio
   - assert solo se ejecuta en modo debug
  */
  Square({required double side})
    : assert(side >= 0, 'side must be >= 0'),
      _side = side;

  /*
   Getter:
   - Permite exponer un valor calculado
   - Se accede como si fuera una propiedad
   - No requiere paréntesis
  */
  double get area {
    return _side * _side;
  }

  /*
   Setter:
   - Permite modificar el valor de forma controlada
   - Puede incluir validaciones
   - Se ejecuta al asignar un valor
  */
  set side(double value) {
    print('Setting new value: $value');

    if (value < 0) {
      throw 'Value must be >= 0';
    }

    _side = value;
  }

  /*
   Método tradicional:
   - Hace lo mismo que el getter area
   - Requiere paréntesis al llamarlo
  */
  double calculateArea() {
    return _side * _side;
  }
}
