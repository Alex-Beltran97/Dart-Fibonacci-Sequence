import 'dart:io';

void main(List<String> args) {
  
  final fibonacci = new Fibonacci(new CalcSequence());

  print(fibonacci.getSequence);

}

class Fibonacci {

  CalcSequence calcSequence;
  List<int> sequence = [];

  Fibonacci(this.calcSequence) {
    print("Set a number:");

    this.sequence = 
      this.calcSequence.calcSequence(int.parse(stdin.readLineSync()!));
  }
  
  List<int> get getSequence {
    return sequence;
  }

}

class CalcSequence {

  CalcSequence() {}

  List<int> calcSequence(int number) {

    List<int> sequence = [];

    for(var i = 0; i < number; i++) {

      if(i < 2 ) {

        sequence.add(i);

      } else {

        sequence.add(sequence[i-2] + sequence[i-1]);

      };

    };

    return sequence;
  }
}