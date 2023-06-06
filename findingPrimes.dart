import 'dart:io';

/*
  Verificar si un número es primo:
  Escribe un programa que verifique si un número entero ingresado por el usuario 
  es primo. Un número primo es aquel que solo es divisible por 1 y por sí mismo. 
  El programa debería imprimir un mensaje indicando si el número es primo o no.
*/

void main(List<String> args) {
  
  print("Set a number:");
  int number = int.parse(stdin.readLineSync()!);

  bool isPrime = true;

  for(int i = 2; i < number; i++) {
    if(number % i == 0){
      isPrime = false;
      break;
    };
  };

  var result = isPrime ? "prime" : "not prime";

  print("Number $number is ${ result }!");

}