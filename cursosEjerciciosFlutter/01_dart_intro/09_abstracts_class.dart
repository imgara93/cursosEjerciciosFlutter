void main() {
  // Se crean instancias de dos plantas distintas
  // Ambas cumplen el contrato EnergyPlant
  final windPlant = WindPlant(initialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  // chargePhone recibe un EnergyPlant,
  // no le importa si es eólica o nuclear → POLIMORFISMO
  print('wind: ${chargePhone(windPlant)}');
  print('nuclear: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  // Validación de negocio:
  // si la planta tiene menos de 10 de energía, no puede cargar el teléfono
  if (plant.energyLeft < 10) {
    throw Exception('Not enought energy');
  }

  // Se descuentan 10 unidades de energía
  // Nota: aquí NO se llama consumeEnergy, solo se calcula
  return plant.energyLeft - 10;
}

// Enum = conjunto cerrado de valores posibles
// Evita usar strings sueltos y errores de tipeo
enum PlantType { nuclear, wind, water }

// CLASE ABSTRACTA
// No se puede instanciar directamente
// Sirve como CONTRATO y como base común
abstract class EnergyPlant {
  // Atributo compartido por todas las plantas
  double energyLeft;

  // Tipo de planta (nuclear, wind, water)
  final PlantType type;

  // Constructor base que usarán las clases hijas
  EnergyPlant({required this.energyLeft, required this.type});

  // Método abstracto:
  // obliga a que cada planta defina
  // cómo consume la energía
  void consumeEnergy(double amount);
}

/*
 ¿Por qué crear una clase abstracta?

 - Para definir un comportamiento común
 - Para reutilizar atributos
 - Para permitir polimorfismo
 - Para programar contra una abstracción y no una clase concreta
*/

// EXTENDS
// Se usa cuando existe una relación clara de "ES UN"
class WindPlant extends EnergyPlant {
  // El constructor recibe energía inicial
  // y llama al constructor padre con super
  WindPlant({required double initialEnergy})
    : super(energyLeft: initialEnergy, type: PlantType.wind);

  // Implementación específica del consumo de energía
  // En este caso, se descuenta el valor completo
  @override
  void consumeEnergy(double amount) {
    energyLeft -= amount;
  }
}

// IMPLEMENTS
// No hereda código, solo el CONTRATO
// Obliga a implementar TODO manualmente
class NuclearPlant implements EnergyPlant {
  // Debe declarar nuevamente los atributos
  @override
  double energyLeft;

  // El tipo se fija como nuclear
  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  // Implementación distinta del consumo
  // La planta nuclear consume solo el 50%
  @override
  void consumeEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}

/*
 Diferencia clave:

 extends:
 - Hereda código
 - Reutiliza lógica
 - Menos flexible

 implements:
 - No hereda nada
 - Más control
 - Más código
*/
