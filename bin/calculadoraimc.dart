import 'dart:io';

import 'package:calculadoraimc/classes/pessoa.dart';

void main(List<String> arguments) {
  String nome;
  double imc;
  String resultadoFinal;

  print('Bem vindo a calculadora de IMC!');

  Pessoa pessoa = Pessoa();

  stdout.write('Por favor, digite seu nome: ');
  nome = stdin.readLineSync()!;
  if (nome.isNotEmpty) {
    pessoa.nome = nome;
  } else {
    exit(1);
  }

  stdout.write('Agora, digite seu peso: ');
  try {
    pessoa.peso = double.parse(stdin.readLineSync()!);
  } catch (e) {
    print('Erro! Insira um peso válido');
  }

  stdout.write('Por último e não menos importante, digite sua altura: ');
  try {
    pessoa.altura = double.parse(stdin.readLineSync()!);
  } catch (e) {
    print('Erro! Insira um peso válido');
  }

  imc = pessoa.calcularImc(pessoa.peso, pessoa.altura);

  if (imc < 18.5) {
    resultadoFinal = "Magreza";
  } else if (imc >= 18.5 && imc < 25.0) {
    resultadoFinal = "Normal";
  } else if (imc >= 25.0 && imc < 30.0) {
    resultadoFinal = "Sobrepeso";
  } else if (imc >= 30.0 && imc < 35.0) {
    resultadoFinal = "Obesidade grau I";
  } else if (imc >= 35.0 && imc < 40.0) {
    resultadoFinal = "Obesidade grau II";
  } else {
    resultadoFinal = "Obesidade grau III";
  }

  print(resultadoFinal);
}
