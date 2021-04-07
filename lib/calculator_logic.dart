import 'dart:math';

class CalculatorLogic {
  final int height;
  final int weight;

  double _bmi;

  CalculatorLogic({this.height, this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    } else if (_bmi > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a higher than normal body weight. Please try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You are in good place. keep up your healthy habits.';
    } else {
      return 'You have a lower than normal body. You can eat bit more.';
    }
  }
}