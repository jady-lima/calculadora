double sum(double number1, double number2){
  return number1 + number2;
}

double sub(double number1, double number2){
  return number1 - number2;
}

double mult(double number1, double number2){
  return number1 * number2;
}

double div(double number1, double number2){
  if(number2 == 0){
    print("Não é possível dividir por 0");
    return 0.0;
  }
  return number1 / number2;
}

