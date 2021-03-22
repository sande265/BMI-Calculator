import 'dart:math';

class CalculatorBrain {

  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >=25 ) {
      return 'Overweight';
    } else if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi >=25 ) {
      return 'Hmm..., It look\'s like you\'re overweight, try eating less calories.';
    } else if (_bmi >= 18.5) {
      return 'It look\'s like you\'re in good shape, Well done.';
    } else {
      return 'Hmm..., It look\'s like you\'re underweight, try eating some bananas and calories.';
    }
  }

}