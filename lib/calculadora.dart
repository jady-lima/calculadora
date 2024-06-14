import 'dart:convert';
import 'dart:io';

import 'package:calculadora/operacoes.dart' as operacoes;

void calculate() {
  double number1 = readNumber("N1: ");

  double number2 = readNumber("N2: ");

  var op = readConsole("Informe a operação desejada \n [+] - SOMA \n [-] - SUBTRAÇÃO \n [*] - MULTIPLICAÇÃO \n [/] - DIVISÃO");

  double result = operation(op, number1, number2);

  print("Resultado: $result");
}

double readNumber(String texto){
  var number = double.tryParse(readConsole(texto));
  if(number == null){
    return 0.0;
  } else {
    return number;
  }
}

String readConsole(String texto){
  print(texto);
  var line = stdin.readLineSync(encoding: utf8);
  return line ?? "";
}

double operation(var op, double number1, double number2){
  double result = 0;

  switch(op){
    case "+":
      result = operacoes.sum(number1, number2);
      break;
    case "-":
      result = operacoes.sub(number1, number2);
      break;
    case "*":
      result = operacoes.mult(number1, number2);
      break;
    case "/":
      result = operacoes.div(number1, number2);
      break;
    default:
      print("Operação inválida");
      exit(0);
  }

  return result;
}
