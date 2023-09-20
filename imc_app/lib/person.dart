import 'dart:math' as math;

class Person {
  final String name;
  final double weight;
  final double height;

  Person({required this.name, required this.weight, required this.height});

  double get imc {
    var result = weight / math.pow(height, 2);
    result = result * 100;
    return result.roundToDouble() / 100;
  }
}
