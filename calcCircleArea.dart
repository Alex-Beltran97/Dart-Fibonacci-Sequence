import 'dart:io';
import 'dart:math';

/*
Calculadora de área de un círculo:
Escribe un programa que solicite al usuario el radio de un círculo
y calcule el área correspondiente. Puedes utilizar la fórmula área = π * radio^2,
donde π es una constante que puedes aproximar a 3.14159. El programa debería 
imprimir el resultado en la consola.
*/


const PI = 3.1416;

void main(List<String> args) {
  
  print('Set the circle radio value:');
  num radio = double.parse(stdin.readLineSync()!);

  final result = calcCircleArea(radio).toStringAsFixed(2);

  print('The circle with radio of ${ result } cm has an Area of ${ result } cm^2.');
}

num calcCircleArea (num radio) {
  return PI * pow(radio, 2);
}