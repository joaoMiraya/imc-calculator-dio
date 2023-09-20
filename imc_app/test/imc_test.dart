import 'dart:io';
import 'package:imc_app/person.dart';
/* import 'package:flutter_test/flutter_test.dart'; */

/* void main() {
  final person = Person(name: 'João', weight: 66.5, height: 1.78);
  test('Imc deve ser 20.99', () {
    expect(person.imc, 20.99);
  });
} */
void main() {
  stdout.write('Digite o nome da pessoa: ');
  final name = stdin.readLineSync()!;
  double weight;
  while (true) {
    stdout.write('Digite o peso da pessoa (em kg): ');
    final weightInput = stdin.readLineSync();
    try {
      weight = double.parse(weightInput!);
      break; // Sai do loop se a conversão for bem-sucedida
    } catch (e) {
      print('Por favor, insira um valor válido para o peso.');
    }
  }

  double height;
  while (true) {
    stdout.write('Digite a altura da pessoa (em metros): ');
    final heightInput = stdin.readLineSync();
    try {
      height = double.parse(heightInput!);
      break; // Sai do loop se a conversão for bem-sucedida
    } catch (e) {
      print('Por favor, insira um valor válido para a altura.');
    }
  }

  final person = Person(name: name, weight: weight, height: height);

  print('O IMC de ${person.name} é ${person.imc}');
}
