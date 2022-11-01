import 'dart:math';

class BmiCalculator {
  double height;
  double weight;
  double? _bmi;
  BmiCalculator({required this.height, required this.weight});
  String getBmiValue() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi!.toStringAsFixed(1);
  }

  String getBmiCategory() {
    if (_bmi! > 30)
      return 'Obesity';
    else if (_bmi! > 25)
      return 'Overweight';
    else if (_bmi! > 18.5)
      return 'Normal';
    else
      return 'underweight';
  }

  String getBmiAdvice() {
    if (_bmi! > 30)
      return 'Approach the nearest health center and try to do more work-out';
    else if (_bmi! > 25)
      return 'Please exercise more';
    else if (_bmi! > 18.5)
      return 'You are health';
    else
      return 'Approach the nearest health center and eat more health food';
  }
}
