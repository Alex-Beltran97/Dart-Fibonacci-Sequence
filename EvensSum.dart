/*
  Suma de números pares:
  Escribe un programa que calcule la suma de los primeros n números pares,
  donde n es un número entero ingresado por el usuario.
  El programa debería imprimir el resultado en la consola.
*/

void main(List<String> args) {

  List<int> numbers = [5, 25, 1, 4, 2, 27, 35, 48, 2];

  CalcEvens calcEvens = new CalcEvens(2, numbers);

  print(calcEvens.evensSum);

}

class CalcEvens {

  int _first;
  List<int> _numbers;
  List<int> _evens = new List<int>.empty(growable: true);

  CalcEvens(this._first, this._numbers);

  void getEvens() {
    for(int number in this._numbers) {
      if(this._first != 0) {

        if(number.isEven) {
          this._evens.add(number);

          this._first--;
        };

      } else {
        break;
      };
    };
  }

  int get evensSum {
    this.getEvens();
    return this._evens.reduce((acc, number) => acc+number);
  }

}

