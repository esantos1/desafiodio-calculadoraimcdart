import 'package:calculadoraimc/classes/pessoa.dart';
import 'package:test/test.dart';

void main() {
  test('Calcular IMC', () {
    double peso = 95, altura = 1.97;

    Pessoa pessoaTest = Pessoa.instance("Marcelo", peso, altura);

    expect(pessoaTest.calcularImc(peso, altura), equals(24.478857996856398));
  });
}
