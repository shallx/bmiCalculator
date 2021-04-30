import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if( _bmi >= 25){
      return 'OVERWEIGHT';
    }
    else if(_bmi > 18.5) {
      return 'NORMAL';
    }
    else {
      return 'UNDERWEIGHT';
    }
  }

  String getInterpretation(){
    String min_weight, max_weight;

    min_weight = (18.6 * pow(height /100, 2)).toStringAsFixed(1);
    max_weight = (24.9 * pow(height /100, 2)).toStringAsFixed(1);
    if( _bmi >= 25){
      return 'You have higher than normal body weight. Keep it between $min_weight - $max_weight';
    }
    else if(_bmi > 18.5) {
      return 'You have a normal body weight, good job.';
    }
    else {
      return 'You have lower than normal body weight. Keep it between $min_weight - $max_weight';
    }
  }
}